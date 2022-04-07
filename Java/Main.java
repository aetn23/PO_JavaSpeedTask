public class Main {

    static long ack(long m, long n) {
        if (m == 0)
            return n + 1;
        else if (n == 0)
            return ack(m - 1, 1);
        return ack(m - 1, ack(m, n - 1));
    }

    public static void main(String[] args) {
        for (long i = 0; i < 4; i++)
            for (long j = 0; j < 16; j++)
                System.out.println("("+i+")" +"(" + j + ")=" + ack(i, j));
    }
}
