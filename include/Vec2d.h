#ifndef MOLECULES_VEC2D_H
#define MOLECULES_VEC2D_H

#include <assert.h>
#include <math.h>

typedef double coord_t;
typedef double length_t;
typedef double angle_t;

class Vec2d {

public: //functions

    Vec2d(coord_t x, coord_t y);

    coord_t GetX() const;
    coord_t GetY() const;

    virtual bool SetX(coord_t newXvalue);

    virtual bool SetY(coord_t newYvalue);

    Vec2d& operator += (const Vec2d& addingVector);
    Vec2d& operator -= (const Vec2d& deductingVector);
    Vec2d& operator *= (const coord_t coefficient);

    double operator  * (const Vec2d& anotherVector) const;
    angle_t operator ^ (const Vec2d& anotherVector) const;

    length_t GetLength() const;

    ~Vec2d() = default;

protected: //function

    static inline bool _VecIsOK() ;

public: //fields

    //EMPTY

protected: //fields

    coord_t _xCoord;
    coord_t _yCoord;

};

class RadVec2d : public Vec2d {

public: //functions

    RadVec2d(coord_t x, coord_t y);

    bool SetX(coord_t newXvalue);
    bool SetY(coord_t newYvalue);

    bool Normalize();
    bool IsNormalized() const;

    length_t GetLength();

    ~RadVec2d() = default;

private: //function

public: //fields

private: //fields

    bool _isNormalized;

};


#endif //MOLECULES_VEC2D_H
