#ifndef SYMBOL
#define SYMBOL

union simval_t {
    char *sval;
    int ival;
    float fval;
}



struct val_t {
    int length;
    union simval_t data;
    struct val_t **meml;
    
}


struct node_t {
    char* name;
    union simval_t **st;
    int length;

};


extern struct node_t;


struct *node_t find_node(char * name){

}
void add_node(char *name, )

#endif /* end of include guard: SYMBOL */
