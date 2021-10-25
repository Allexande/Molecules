#include "../include/Vec2d.h"

#define ABOUT_ZERO(val) \
            abs(val) < 0.001 ? true : false

//Vec2d

Vec2d::Vec2d(coord_t x, coord_t y) {
    _xCoord = x;
    _yCoord = y;
}

coord_t Vec2d::GetX() const {

    assert(_VecIsOK());

    return _xCoord;
}

coord_t Vec2d::GetY() const {

    assert(_VecIsOK());

    return _yCoord;
}

bool Vec2d::SetX(coord_t newXvalue) {

    assert(_VecIsOK());

    _xCoord = newXvalue;

    return true;
}

bool Vec2d::SetY(coord_t newYvalue) {

    assert(_VecIsOK());

    _yCoord = newYvalue;

    return true;
}

Vec2d& Vec2d::operator += (const Vec2d& addingVector) {

    assert(_VecIsOK());

    _xCoord += addingVector.GetX();
    _yCoord += addingVector.GetY();

    return *this;
}

Vec2d& Vec2d::operator -= (const Vec2d& deductingVector) {

    assert(_VecIsOK());

    _xCoord -= deductingVector.GetX();
    _yCoord -= deductingVector.GetY();

    return *this;
}

Vec2d& Vec2d::operator *= (coord_t coefficient) {

    assert(_VecIsOK());

    _xCoord *= coefficient;
    _yCoord *= coefficient;

    return *this;
}

double Vec2d::operator * (const Vec2d& anotherVector) const {

    assert(_VecIsOK());

    return static_cast<double>(_xCoord * anotherVector.GetX()
                             + _yCoord * anotherVector.GetY());
}

angle_t Vec2d::operator ^ (const Vec2d& anotherVector) const {

    assert(_VecIsOK());

    return (*this) * (anotherVector) / (this->GetLength() * anotherVector.GetLength());
}

length_t Vec2d::GetLength() const {
    return sqrt(_xCoord*_xCoord + _yCoord*_yCoord);
}

bool Vec2d::_VecIsOK() {
    return true;
}

//RadVec2d

RadVec2d::RadVec2d(coord_t x, coord_t y) : Vec2d(x, y) {
    _isNormalized = (this->GetLength() == 1);
}

bool RadVec2d::SetX(coord_t newXvalue) {

    if(this->GetX() != newXvalue) {
        _isNormalized = false;
    }

    _xCoord = newXvalue;
    return true;
}

bool RadVec2d::SetY(coord_t newYvalue) {

    if(this->GetY() != newYvalue) {
        _isNormalized = false;
    }

    _yCoord = newYvalue;
    return true;
}

bool RadVec2d::Normalize() {

    if(_isNormalized) {
        return true;
    }

    length_t length = this->GetLength();

    if(ABOUT_ZERO(length)) {
        return false;
    }

    this->SetX(this->GetX() / length);
    this->SetY(this->GetY() / length);

    _isNormalized = true;

    return true;
}

length_t RadVec2d::GetLength() {

    if(_isNormalized) {
        return 1;
    }

    return sqrt(this->GetX() * this->GetX()
                  + this->GetY() * this->GetY());
}

bool RadVec2d::IsNormalized() const {
    return _isNormalized;
}
