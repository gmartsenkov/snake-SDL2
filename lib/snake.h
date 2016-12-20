//
// Created by Martsenkov, Georgi, Vodafone Group on 19/12/2016.
//

#ifndef SNAKE_SNAKE_H
#define SNAKE_SNAKE_H
#define UP 1
#define DOWN 2
#define LEFT 3
#define RIGHT 4

#define SPEED 25
struct Tail {
  int x,y;
};

struct Snake {
    int x, y;
    int direction;
    int width, height;
    int size;
    struct Tail * tail;
};

void setup(struct Snake *snake, struct Food *food){
    snake->x = 100;
    snake->y = 100;
    snake->tail = malloc(sizeof(struct Tail));
    snake->size = 0;
    snake->width = 20;
    snake->direction = 0;
    snake->height = 20;
    foodSetRandomPosition(food);
}
int snakeHitWall(struct Snake * snake){
    if(snake->x < 0 || snake-> y < 0){
        return 0;
    }
    if(snake->x > 480 || snake->y > 480){
        return 0;
    }
    return 1;
}

void snakeUpdate(struct SDL_Renderer * renderer, struct Snake * snake){
    SDL_Rect rect = {snake->x, snake->y, snake->height, snake->width};
    SDL_SetRenderDrawColor(renderer, 80, 80, 80, 255);
    SDL_RenderDrawRect(renderer, &rect);
    SDL_RenderFillRect(renderer, &rect);
    for(int i = 0; i <= snake->size - 1; i++){
        SDL_SetRenderDrawColor(renderer, 100, 100, 100, 255);
        SDL_Rect new_tail = { snake->tail[i].x, snake->tail[i].y, snake->height, snake->width};
        SDL_RenderFillRect(renderer, &new_tail);
        SDL_RenderDrawRect(renderer, &new_tail);
    }
}
void snakeDeath(struct Snake * snake, struct Food *food){
    if(!snakeHitWall(snake)){
        free(snake->tail);
        setup(snake, food);
        printf("DEAD\n");
    }
    for(int i = 0; i <= snake->size -1 ; i++){
        int dist = distance(snake->x, snake->y, snake->tail[i].x, snake->tail[i].y);
        if(dist < 1){
            free(snake->tail);
            setup(snake, food);
            printf("DEAD\n");
        }
    }
}

void snakeEat(struct Snake * snake, struct Food * food) {
   double dist = distance(snake->x,snake->y,food->x,food->y);
    if(dist < 1) {
        snake->size += 1;
        foodSetRandomPosition(food);
        struct Tail * temp = realloc(snake->tail, (snake->size * sizeof(struct Tail)));
        if(temp != NULL){
            snake->tail = temp;
            struct Tail new_tail = {snake->x, snake->y};
            snake->tail[snake->size-1] = new_tail;
            printf("SUCCESS\n");
        }else{
            printf("FUUUUUUUUCK\n");
        }
    }
}

void snakePhysics(struct Snake * snake) {
    for(int i = 0; i <= snake->size - 2; i++){
        snake->tail[i] = snake->tail[i+1];
    }
    struct Tail new_tail = {snake->x, snake->y};
    snake->tail[snake->size - 1] = new_tail;
    switch(snake->direction){
        case UP :
            snake->y -= SPEED;
            break;
        case DOWN :
            snake->y += SPEED;
            break;
        case LEFT :
            snake->x -= SPEED;
            break;
        case RIGHT :
            snake->x += SPEED;
            break;
    }
}
#endif //SNAKE_SNAKE_H
