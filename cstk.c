/**
 * cstk.c
 * Hannah Soria
 * 3/4/2024
 * 
 */

#include "cstk.h"
#include <stdio.h>
#include <stdlib.h>

Stack *stk_create(int cap) {
    Stack *stack = (Stack *)malloc(sizeof(Stack));
    stack->data = (int *)malloc(cap * sizeof(int));
    stack->top = stack->data;
    stack->capacity = cap;
    return stack;
}

int stk_empty(Stack *stack){
    if (stack==NULL || (stack->top == stack->data)){
        return 1;
    } else{
        return 0;
        }
}

int stk_full(Stack *stack) {
    if (stack == NULL || (stack->top - stack->data) == stack->capacity) {
        return 1;
    } else {
        return 0;
    }
}

void stk_push(Stack *stack, int new_ele){
    if (stk_full(stack)){
        printf("warning: stack is full"); 
    } else {
        *(stack->top) = new_ele;
        stack->top += 1;
    }
}

int stk_peek(Stack *stack){
    if(!(stk_empty(stack))){
        return *(stack->top-1);
    } else{
        printf("peek warning: no value at top of stack\n");
        return 0;
    }

}

int stk_pop(Stack *stack){
    if(!stk_empty(stack)){
        int pop_ele = *(stack->top-1);
        stack->top--;
        return pop_ele;
    } else {
        printf("pop warning: no value at top of stack\n");
        return 0;
    }
}

void stk_display(Stack *stack, int reverse){
    if (reverse==1){
        for (int i= stack->top-stack->data;i>0; i--){
            printf("%d", stack->data[i-1]);
        }
    } else {
        for (int i=0; i< stack->top-stack->data; i++){
            printf("%d", stack->data[i]);
        }
    }
    printf("\n");
}

void stk_destroy(Stack *stack){
    if (stack != NULL){
        free(stack->data);
        free(stack);
    }  
}

Stack *stk_copy(Stack *stack){
    if (stack ==NULL) {
        return NULL;
    }

    Stack *new_stack = stk_create(stack->capacity);

    for (int i =0; i < stack->top - stack->data; i++){
        new_stack->data[i] = stack->data[i];
    }

    new_stack->top = new_stack->data + (stack->top - stack->data);
    return new_stack;
}


