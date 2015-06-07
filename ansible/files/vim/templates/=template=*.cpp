#include "%FILE%.hpp"
%HERE%

%CLASS%::%CLASS%(void)
{
	return ;
}

%CLASS%::%CLASS%(%CLASS% const & src)
{
	*this = src;
}

%CLASS%::~%CLASS%(void)
{
	return ;
}

%CLASS% & %CLASS%::operator=(%CLASS% const & rhs)
{
	*this = rhs;
	return *this;
}

std::ostream & operator<<(std::ostream & o, %CLASS% const & rhs)
{
	static_cast<void>(rhs);
	o << "<[%CLASS%] instance>";
	return o;
}
