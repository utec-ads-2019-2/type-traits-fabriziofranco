#ifndef TRAITS_LIST_H
#define TRAITS_LIST_H

#include "node.h"

template <typename Tr>
class TraitsList {
    public:
        typedef typename Tr::T T;
        typedef typename Tr::Operation Operation;

    private:
        Node<T>* head;
        Operation cmp;
        int tamano;


        bool find(T data, Node<T> **&pointer) {
            pointer = &head;
            while(*pointer!= nullptr){
                if(cmp((*pointer)->data,data)){
                    if(data==(*pointer)->data)
                        return true;
                }
                else
                    return false;
                pointer=&((*pointer)->next);
            }
            return false;
        }

    public:
        TraitsList() : head(nullptr),tamano(0) {};

        bool insert(T data) {
            Node<T> **pointer;
            if(!find(data,pointer)){
                auto Nuevo_nodo = new Node<T>(data);
                Nuevo_nodo-> next = (*pointer);
                (*pointer) = Nuevo_nodo;
                tamano++;
                return true;}
            return false;
        }

        bool remove(T data) {
            Node<T> **pointer = &head;
            if(find(data,pointer)){
                Node<T>* temp = (*pointer);
                (*pointer) = (*pointer) -> next;
                delete temp;
                tamano--;
                return true;
            }
            return false;
        }

        bool find(T data) {
            Node<T> **temp;
            return find(data,temp);
        }

        T operator [] (int index) {
            // Si es índice negativo?
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

        ~TraitsList() {
            if(head!= nullptr)
                head->killSelf();
        }
};

#endif