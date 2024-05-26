/**
 * cstk.h
 * Hannah Soria
 * 3/4/2024
 * 
 */

#include <stdio.h>
#include <stdlib.h>

/**
 * @brief A struct for holding an array-based stack of ints
 * 
 */
typedef struct Stack 
{
	int *data; // this is a pointer to the start of the data for the stack
	int *top; // this will point to the next place to insert in the stack
	int capacity; // this is the maximal size of the stack
} Stack;


/**
 * @brief creates a Stack with a maximal capacity specified by the int value
 * 
 * @param int
 */
Stack *stk_create(int);

/**
 * @brief returns 1 if the given Stack is empty, otherwise 0.
 * 
 * @param Stack
 * @return int
 */
int stk_empty(Stack *); 

/**
 * @brief returns 1 if the given Stack is full, otherwise 0.
 * 
 * @param Stack
 * @return int
 */
int stk_full(Stack *);

/**
 * @brief adds a new value to the top of the stack if there's space. 
 * If there's no space, prints out a warning but does nothing (and doesn't crash).
 * 
 * @param Stack
 */
void stk_push(Stack *, int); 

/**
 * @brief returns the value on the top of the stack if such a value exists. 
 * Otherwise, prints out a warning and returns 0.
 * 
 * @param Stack
 */
int stk_peek(Stack *);

/**
 * @brief removes and returns the value on the top of the stack if 
 * such a value exists. Otherwise, prints out a warning and returns 0.
 * 
 * @param Stack
 * @return int
 */
int stk_pop(Stack *);

/**
 * @brief prints out the list in the reverse order if the int 
 * value is 1, otherwise, prints out in the original order
 * 
 * @param Stack
 */
void stk_display(Stack *, int); 

/**
 * @brief frees up the memory
 * 
 * @param Stack
 */
void stk_destroy (Stack *); 

/**
 * @brief copies the contents into another Stack of the 
 * same maximal size and returns it.
 * 
 * @param Stack
 * @return Stack
 */
Stack *stk_copy(Stack *); 
