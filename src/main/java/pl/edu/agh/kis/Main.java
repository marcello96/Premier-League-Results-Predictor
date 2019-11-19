package pl.edu.agh.kis;

import org.jpl7.Atom;
import org.jpl7.Query;
import org.jpl7.Term;

public class Main {
    public static void main(String[] args) {
        Query q1 =
                new Query(
                        "consult",
                        new Term[] {new Atom("rules.pl")}
                );
        System.out.println( "consult " + (q1.hasSolution() ? "succeeded" : "failed"));
    }
}
