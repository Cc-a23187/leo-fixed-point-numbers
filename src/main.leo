// The 'fixedpointnumbers' program.
program fixedpointnumbers.aleo {
    transition main(public a: u32, b: u32) {
        let c: u32 = my_add(a, b);
        assert_eq(c, 3u32);
        let res_multiply: u32 = my_multiply(2u32**5u32, 2u32**8u32, 16u32);
        assert_eq(res_multiply, 2u32**9u32);
        let res_divide: u32 = my_divide(2u32**5u32, 2u32**1u32, 16u32);
        assert_eq(res_divide, 2u32**8u32);
    }
    function my_add(a: u32, b: u32) -> u32 {
        let result: u32 = a + b;
        return result;
    }

    function my_multiply(a: u32, b: u32, s: u32) -> u32 {
        let result: u32 = a * b / s;
        return result;
    }

    function my_divide(a: u32, b: u32, s: u32) -> u32 {
        let result: u32 = s * a / b;
        return result;
    }
    transition test_add() {
        let a: u32 = 8u32;
        let res: u32 = my_add(8u32, 16u32);
        assert_eq(res, 24u32);
    }
    transition test_multiply() {
        let res: u32 = my_multiply(2u32**5u32, 2u32**8u32, 16u32);
        assert_eq(res, 2u32**9u32);
    }
    transition  test_divide() {
        let res: u32 = my_divide(2u32**5u32, 2u32**1u32, 16u32);
        assert_eq(res, 2u32**8u32);
    }
}