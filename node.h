#ifndef NODE_H
#define NODE_H

template <typename T>
struct Node {
    T data;
    int cuenta;
    Node<T>* next;
    Node<T>* prev;

    explicit Node(T data) : data(data) {
        next = nullptr;
        cuenta= 0;
        prev= nullptr;
    }
      
    void killSelf();
};

template <typename T>
void Node<T>::killSelf() {
    if (next) {
        next->killSelf();
    }
    delete this;
}

#endif