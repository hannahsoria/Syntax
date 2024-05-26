/**
 * Test code for Stack 
 *
 * Hannah Soria
 * 3/14/2024
 */

#include "cstk.h"
#include <stdio.h>
#include <stdlib.h>

int main (int argc, char **argv) {
	Stack *s = stk_create(20);
	printf("s is at %p\n\n", (void *)&s); // Print the address of pointer s
	
	int i;
	for(i = 0; i < 10; i++) {
		stk_push(s, i+1);
		
	} 
    // Mark 1 (first memory picture)
	printf("After pushing elements:\n");
    printf("s is at %p\n", &s); // Print the address of pointer s
	printf("s points to %p\n", &s->data);
	printf("s data points to %p\n", s->data);
	printf("s top is at %p\n", &s->top);
	printf("top trial %p\n", s->top);
	printf("s capacity is at %p\n", &s->capacity);
	printf("capacity value is %d\n", s->capacity);
	printf("i is at %p\n", &i);
	printf("i value is %d\n\n", i);
	
	
	printf("The original list: ");
	stk_display(s, 0);
	
	printf("The reversed list: ");
	stk_display(s, 1);
	
	stk_destroy(s);
    // Mark 2 (first memory picture)
	printf("\nAfter destroying the stack:\n");
    printf("s is at %p\n", &s); // Print the address of pointer s
	printf("s points to %p\n", &s->data);
	printf("s data points to %p\n", s->data);
	printf("s top is at %p\n", &s->top);
	printf("top trial %p\n", s->top);
	printf("s capacity is at %p\n", &s->capacity);
	printf("capacity value is %d\n", s->capacity);
	printf("i is at %p\n", &i);
	printf("i value is %d\n", i);

	return 0;
}
