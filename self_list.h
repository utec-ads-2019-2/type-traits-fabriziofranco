#ifndef SELF_LIST_H
#define SELF_LIST_H

#include "node.h"

template <typename T>
class SelfList {
    public: 
        enum Method {
            Move, Count, Transpose
        };

private:
        Node<T>* head;
        Node<T>* tail;
        int tamano;
        Method method;

public:
        explicit SelfList(Method method) : head(nullptr),tail(nullptr){
            this->method=method;
            tamano=0;
        };

        void insert(T data) {
            auto nodo_nuevo=new Node<T>(data);
            if(this->head== nullptr){
                this->head=nodo_nuevo;}
            else{
                nodo_nuevo->prev=this->tail;
                this->tail->next=nodo_nuevo;}
            this->tail=nodo_nuevo;
            tamano++;
        }
             
        bool remove(T value) {
            // Aquí te va a dar warning 
            if(this->head!= nullptr){
                auto temp=head;
                for (int i = 0; i < tamano; ++i) {
                    if(temp->data==value){
                        tamano--;
                        if(tamano==0){
                            head =tail =nullptr;
                        }
                        else{
                            if(temp!=head && temp!=tail){
                            temp->prev->next=temp->next;
                            temp->next->prev=temp->prev;}
                            else if(temp==head){
                                head=head->next;
                                head->prev= nullptr;
                            }
                            else if(temp==tail){
                                tail->prev->next= nullptr;
                                tail=tail->prev;
                            }
                        }
                        delete temp;
                        return true;
                    }
                    else{
                       temp=temp->next;
                    }
                }
            }
            else{
                return false;}
        }  

        bool find(T data) {
            // Aquí te va a dar warning
            if(head!= nullptr){
                auto temp=head;
                for(int i=0;i<tamano;i++){
                    if(temp->data==data){
                        switch(method){
                            case Move:{
                                if(temp!=head){
                                    temp->prev->next=temp->next;
                                    if(temp!=tail)
                                        temp->next->prev=temp->prev;
                                    else{
                                        tail=tail->prev;
                                    }
                                    head->prev=temp;
                                    temp->next=head;
                                    head=head->prev;
                                    head->prev= nullptr;
                                }
                                return true;
                            }
                            case Count:{
                                temp->cuenta++;
                                sort_by_count();
                                return true;
                            }
                            case Transpose:{
                                if(temp!=head)
                                    swap(temp->data,temp->prev->data);
                                return true;
                            }
                        }
                    }
                    else{
                        temp=temp->next;
                    }
                }
            }
            else{
                return false;
            }
        }

        void sort_by_count(){
        if(this->head!= nullptr){
            pair<T,int> desordenado[tamano];
            auto temp=this->head;
            for(int i=0;i<tamano;i++){
                desordenado[i].first=temp->data;
                desordenado[i].second=temp->cuenta;
                temp=temp->next;}

            for(size_t numero_de_iteracion=0;numero_de_iteracion<tamano;numero_de_iteracion++){
                int id_del_minimo_elemento=numero_de_iteracion;
                for(size_t primer_elemento_considerado=numero_de_iteracion;primer_elemento_considerado<tamano;primer_elemento_considerado++){
                    if(desordenado[primer_elemento_considerado].second>=desordenado[id_del_minimo_elemento].second)
                        id_del_minimo_elemento=primer_elemento_considerado;
                }
                swap(desordenado[numero_de_iteracion],desordenado[id_del_minimo_elemento]);
            }


            temp=this->head;
            for(int i=0;i<tamano;i++){
                temp->data=desordenado[i].first;
                temp->cuenta=desordenado[i].second;
                temp=temp->next;
            }
        }
    }

        T operator [] (int index) {
            if(this->head!= nullptr && index<this->tamano){
                auto contador=0;
                auto temp=this->head;
                while(contador!=index){
                    temp=temp->next;
                    contador++;
                }
                return temp->data;
            }
            throw out_of_range("This index doesnt exist");
        }

        int size() {
            return tamano;
        }

        void print() {
            auto temp=head;
            for(int i=0;i<tamano;i++){
                cout<<temp->data<<" ";
                temp=temp->next;
            }
            cout<<endl;
        }

        ~SelfList() {
            if(head!= nullptr)
                head->killSelf();
        }  
};

#endif