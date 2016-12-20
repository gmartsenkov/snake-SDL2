//
// Created by Martsenkov, Georgi, Vodafone Group on 19/12/2016.
//

#ifndef SNAKE_FOOD_H
#define SNAKE_FOOD_H

struct Food {
    int x,y;
};

void foodUpdate(SDL_Renderer * renderer, struct Food * food){
    SDL_Rect rect = {food->x, food->y, 20, 20};
    SDL_SetRenderDrawColor(renderer, 207, 52, 85, 255);
    SDL_RenderFillRect(renderer, &rect);
    SDL_RenderDrawRect(renderer, &rect);
}

void foodSetRandomPosition(struct Food * food) {
    srand(time(NULL));
    int random_height = (rand() % 480);
    int random_width = (rand() % 480);
    int height_reminder = random_height % 25;
    int width_reminder = random_width % 25;
    food->x = random_height - height_reminder;
    food->y = random_width - width_reminder;
    printf("food->x %d\n", food->x);
    printf("food->y %d\n", food->y);
}
#endif //SNAKE_FOOD_H
