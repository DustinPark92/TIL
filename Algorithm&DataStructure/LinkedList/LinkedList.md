
### Linked List 

#### Array(배열) 는 다르게 Element 간의 연결을 이용해서 리스트를 구현한 것을 의미함.
#### Array는 크기가 정해져 있지만 Linked list는 유동적으로 줄였다 늘였다 할 수 있음. (잉여 메모리 없이 사용 가능함.)


1. Array List : 모든 Element가 한 Array안에 존재 하며, element가 배열의 element가 됨.
2. linked List : array에서 element -> node,vertex라는 표현을 씀. 이 때 list들은 node들의 모임이며 Node의 경우 최소한 두가지의 정보를 가지고 있어야 node확인 가능함.



Head -> [datafield,linked field] ->  [datafield,linked field] <- Tail    Nil <-          (Node,vertex)                                -> Nil


*Head : Linked List를 사용하기 위해서는 이 Head가 가르키는 첫ㅈ번째 노드를 찾아야 함.



Singly linked list
다음 노드의 레퍼런스만을 가진다.

Doubly linked list : 이전 노드와 다음 노드의 레퍼런스를 가진다.

->Head   node0 <-> node2 <-> node3 -> nil   <- Nil                             <- tail








참조: https://opentutorials.org/module/1335/8821
     https://www.raywenderlich.com/947-swift-algorithm-club-swift-linked-list-data-structure
