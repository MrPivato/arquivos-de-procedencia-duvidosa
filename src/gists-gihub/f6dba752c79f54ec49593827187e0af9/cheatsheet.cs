using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    public class @class
    {
        public static int MyProperty { get; set; }
    }

    public class MyClass
    {
        public string myfield = string.Empty;

        public MyClass()
        {
        }

        public void MyMethod(int param1, string param2)
        {
            Console.WriteLine("param1: {}, param2: {}", param1, param2);
        }

        public int MyImplementedProperty { get; set; }

        private int _myPropertyVar;

        public int MyProperty
        {
            get { return _myPropertyVar / 2; }
            set
            {
                if (value > 100)
                    _myPropertyVar = 100;
                else
                    _myPropertyVar = value;
            }
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            @class.MyProperty = 100;

            Console.WriteLine(@class.MyProperty);

            string msg = "ola mundo";

            Console.WriteLine(msg);

            var i = 10;
            Console.WriteLine("Type of i is {0}", i.GetType().ToString());

            var str = "Hello World!!";
            Console.WriteLine("Type of str is {0}", str.GetType().ToString());

            var d = 100.50d;
            Console.WriteLine("Type of d is {0}", d.GetType().ToString());

            var b = true;
            Console.WriteLine("Type of b is {0}", b.GetType().ToString());

            string stringVar = "Hello World!!";
            int intVar = 100;
            float floatVar = 10.2f;
            char charVar = 'A';
            bool boolVar = true;
        }

    }
}

/* 
Modifier keywords:
    abstract
    async
    const
    event
    extern
    new
    override
    partial
    readonly
    sealed
    static
    unsafe
    virtual
    volatile

Access Modifiers	Usage
public	            The Public modifier allows any part of the program in the same assembly or another assembly to access the type and its members.
private	            The Private modifier restricts other parts of the program from accessing the type and its members. Only code in the same class or struct can access it.
internal	        The Internal modifier allows other program code in the same assembly to access the type or its members. This is default access modifiers if no modifier is specified.
protected	        The Protected modifier allows codes in the same class or a class that derives from that class to access the type or its members.

Statement Keywords
    if
    else
    switch
    case
    do
    for
    foreach
    in
    while
    break
    continue
    default
    goto
    return
    yield
    throw
    try
    catch
    finally
    checked
    unchecked
    fixed
    lock

Method Parameter Keywords
    params
    ref
    out

Namespace Keywords
    using
    . operator
    :: operator
    extern alias

Operator Keywords
    as
    await
    is
    new
    sizeof
    typeof
    stackalloc
    checked
    unchecked

Access keywords
    base
    this

Literal Keywords
    null
    false
    true
    value
    void

Type keywords
    bool
    byte
    char
    class
    decimal
    double
    enum
    float
    int
    long
    sbyte
    short
    string
    struct
    uint
    ulong
    ushort

Contextual Keywords
    add
    var
    dynamic
    global
    set
    value

Query Keywords
    from
    where
    select
    group
    into
    orderby
    join
    let
    in
    on
    equals
    by
    ascending
    descending

Reserved    Word	    .NET Type	Type	                    Size (bits)	    Range (values)
byte	    Byte	    Unsigned integer	                    8	            0 to 255
sbyte	    SByte	    Signed integer	                        8	            -128 to 127
short	    Int16	    Signed integer	                        16	            -32,768 to 32,767
ushort	    UInt16	    Unsigned integer	                    16	            0 to 65,535
int	        Int32	    Signed integer	                        32	            -2,147,483,648 to 2,147,483,647
uint	    UInt32	    Unsigned integer	                    32	            0 to 4294967295
long	    Int64	    Signed integer	                        64	            -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807
ulong	    UInt64	    Unsigned integer	                    64	            0 to 18,446,744,073,709,551,615
float	    Single	    Single-precision floating point type	32	            -3.402823e38 to 3.402823e38
double	    Double	    Double-precision floating point type	64	            -1.79769313486232e308 to 1.79769313486232e308
decimal	    Decimal	    Precise fractional or integral type     128	            (+ or -)1.0 x 10e-28 to 7.9 x 10e28
                        that can represent decimal numbers
                        with 29 significant digits	
char	    Char	    A single Unicode character	            16	            Unicode symbols used in text
bool	    Boolean	    Logical Boolean type	                8	            True or False
object	    Object	    Base type of all other types		
string	    String	    A sequence of characters		
DateTime	DateTime	Represents date and time		                        0:00:00am 1/1/01 to 11:59:59pm 12/31/9999
 */
