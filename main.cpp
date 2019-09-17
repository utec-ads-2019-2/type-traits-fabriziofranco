#include <iostream>

#include "test/tester.h"
#include "self_list.h"
using namespace std;

int main(int argc, char const *argv[]) {
    Tester::execute();


    auto Count_list= new SelfList<int>(SelfList<int>::Count);

    Count_list->insert(1); Count_list->insert(2); Count_list->insert(3); Count_list->insert(4);

    ASSERT(Count_list->operator[](0)==1,"No se inserta correctamente");
    ASSERT(Count_list->operator[](1)==2,"No se inserta correctamente");
    ASSERT(Count_list->operator[](2)==3,"No se inserta correctamente");
    ASSERT(Count_list->operator[](3)==4,"No se inserta correctamente");
    ASSERT(Count_list->size()==4,"El tamaño no funciona correctamente");

    Count_list->remove(2);Count_list->remove(7);
    ASSERT(Count_list->operator[](1)==3,"No se elimina correctamente");

    Count_list->insert(2);

    Count_list->find(2);
    Count_list->find(2);
    Count_list->find(3);

    ASSERT(Count_list->operator[](0)==2,"No se encuentra correctamente");
    ASSERT(Count_list->operator[](1)==3,"No se encuentra correctamente");
    
    delete Count_list;

    /////////////////////////////

    auto Move_list= new SelfList<int>(SelfList<int>::Move);
    
    Move_list->insert(1); Move_list->insert(2); Move_list->insert(3); Move_list->insert(4);

    ASSERT(Move_list->operator[](0)==1,"No se inserta correctamente");
    ASSERT(Move_list->operator[](1)==2,"No se inserta correctamente");
    ASSERT(Move_list->operator[](2)==3,"No se inserta correctamente");
    ASSERT(Move_list->operator[](3)==4,"No se inserta correctamente");
    ASSERT(Move_list->size()==4,"El tamaño no funciona correctamente");

    Move_list->remove(2);Move_list->remove(7);
    ASSERT(Move_list->operator[](1)==3,"No se elimina correctamente");

    Move_list->insert(2);

    Move_list->find(2);
    Move_list->find(2);
    Move_list->find(3);

    ASSERT(Move_list->operator[](0)==3,"No se encuentra correctamente");
    ASSERT(Move_list->operator[](1)==2,"No se encuentra correctamente");
    
    delete Move_list;

    /////////////////////////////

    auto Transpose_list= new SelfList<int>(SelfList<int>::Transpose);

    Transpose_list->insert(1); Transpose_list->insert(2); Transpose_list->insert(3); Transpose_list->insert(4);

    ASSERT(Transpose_list->operator[](0)==1,"No se inserta correctamente");
    ASSERT(Transpose_list->operator[](1)==2,"No se inserta correctamente");
    ASSERT(Transpose_list->operator[](2)==3,"No se inserta correctamente");
    ASSERT(Transpose_list->operator[](3)==4,"No se inserta correctamente");
    ASSERT(Transpose_list->size()==4,"El tamaño no funciona correctamente");

    Transpose_list->remove(2);Transpose_list->remove(7);
    ASSERT(Transpose_list->operator[](1)==3,"No se elimina correctamente");

    Transpose_list->insert(2);

    Transpose_list->find(2);
    Transpose_list->find(2);
    Transpose_list->find(3);

    ASSERT(Transpose_list->operator[](1)==3,"No se encuentra correctamente");
    ASSERT(Transpose_list->operator[](2)==2,"No se encuentra correctamente");

    delete Transpose_list;

    return EXIT_SUCCESS;
}
