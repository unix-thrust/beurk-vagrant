#ifndef %GUARD%
# define %GUARD%

# include <string>
# include <iostream>


class %CLASS%
{
	public:
		%CLASS%(void);
		%CLASS%(%CLASS% const & src);
		~%CLASS%(void);
%HERE%
		%CLASS% & operator=(%CLASS% const & rhs);
};

std::ostream & operator<<(std::ostream & o, %CLASS% const & rhs);


#endif // ! %GUARD%
