/**************************************************************************************
VIPR: Verification of IP trust
Copyright: University of Florida, Gainesville, FL, USA

This document is copyright protected and property of the above mentioned entity. 
Any disclosure, alteration, re-distribution, or commercial use is NOT allowed without 
the consent of the developers and/or the entity mentioned above.

For copyright issues, contact information can be found in the following site.
Link: http://swarup.ece.ufl.edu/

***************************************************************************************/
#ifndef ARRAY_H
#define ARRAY_H

typedef struct array_t {
    char *space;
    int	 num;		/* number of array elements.		*/
    int	 n_size;	/* size of 'data' array (in objects)	*/
    int	 obj_size;	/* size of each array object.		*/
    int	 index;		/* combined index and locking flag.	*/
} array_t;

#ifndef ARGS
#define ARGS(args) args
#endif

#define fail(why) {\
    (void) fprintf(stderr, "Fatal error: file %s, line %d\n%s\n",\
        __FILE__, __LINE__, why);\
    (void) fflush(stdout);\
    abort();\
}

array_t *array_do_alloc ARGS((int, int));
array_t *array_dup ARGS((array_t *));
array_t *array_join ARGS((array_t *, array_t *));
void array_free ARGS((array_t *));
void array_append ARGS((array_t *, array_t *));
void array_sort ARGS((array_t *, int (*)()));
void array_uniq ARGS((array_t *, int (*)(), void (*)()));
int array_abort ARGS((array_t *, int));
int array_resize ARGS((array_t *, int));
char *array_do_data ARGS((array_t *));

extern unsigned int array_global_index;

#ifndef MAX
#define MAX(a,b)                ((a) > (b) ? (a) : (b))
#endif
#ifndef MIN
#define MIN(a,b)                ((a) < (b) ? (a) : (b))
#endif
#ifndef ABS
#define ABS(a)                ((a) < 0 ? (-a) : (a))
#endif

#define ALLOC(type, num)        \
    ((type *) malloc(sizeof(type) * (num)))
#define REALLOC(type, obj, num) \
    (obj) ? ((type *) realloc((char *) obj, sizeof(type) * (num))) : \
            ((type *) malloc(sizeof(type) * (num)))
#define FREE(obj)               \
    ((obj) ? (free((char *) (obj)), (obj) = 0) : 0)

#define array_alloc(type, number)		\
    array_do_alloc(sizeof(type), number)

#define array_insert(type, a, i, datum)		\
    (  -(a)->index != sizeof(type) ? array_abort((a),4) : 0,\
	(a)->index = (i),\
	(a)->index < 0 ? array_abort((a),0) : 0,\
	(a)->index >= (a)->n_size ? array_resize(a, (a)->index + 1) : 0,\
	*((type *) ((a)->space + (a)->index * (a)->obj_size)) = datum,\
	(a)->index >= (a)->num ? (a)->num = (a)->index + 1 : 0,\
	(a)->index = -(int)sizeof(type)	)

#define array_insert_last(type, array, datum)	\
    array_insert(type, array, (array)->num, datum)

// Added by Hitesh
#define array_remove_last(array)	\
    (array)->num = (array)->num - 1

#define array_insert_first(type, array, datum)	\
    array_insert(type, array, 0, datum)

#define array_fetch(type, a, i)			\
    (array_global_index = (i),				\
      (array_global_index >= (a)->num) ? array_abort((a),1) : 0,\
      *((type *) ((a)->space + array_global_index * (a)->obj_size)))

#define array_fetch_p(type, a, i)                       \
    (array_global_index = (i),                             \
      (array_global_index >= (a)->num) ? array_abort((a),1) : 0,\
      ((type *) ((a)->space + array_global_index * (a)->obj_size)))

#define array_fetch_last(type, array)		\
    array_fetch(type, array, ((array)->num)-1)

#define array_n(array)				\
    (array)->num

#define array_data(type, array)			\
    (type *) array_do_data(array)

#endif
