using System;

namespace DeterministicFiniteAutomatonLibrary
{
    public class DeterministicFiniteAutomaton
    {
        public int States { get; private set; }
        public int Alphabet { get; private set; }
        public int StartState { get; private set; }
        private int[,] TransitionFunction;
        private bool[] AcceptStates;
        public int ActualState { get; private set; }

        public DeterministicFiniteAutomaton(int States, int Alphabet, int StartState, int[,] TransitionFunction, bool[] AcceptStates)
        {
            if (States <= 0)
                throw new ArgumentException("States number have to be greater than 0", "States");
            this.States = States;

            if (Alphabet <= 0)
                throw new ArgumentException("Alphabet symbols number have to be greater than 0", "Alphabet");
            this.Alphabet = Alphabet;

            if (StartState < 0)
                throw new ArgumentException("StartState have to be greater than or equal to 0", "StartState");
            if (StartState >= States)
                throw new ArgumentException("StartState have to be less than States number (" + States.ToString() + ")", "StartState");
            this.StartState = StartState;

            if (TransitionFunction == null)
                throw new ArgumentNullException("TransitionFunction");
            if (TransitionFunction.GetLength(0) != States)
                throw new ArgumentException("TransitionFunction rows number have to be equal to States number (" + States.ToString() + ")", "TransitionFunction");
            if (TransitionFunction.GetLength(1) != Alphabet)
                throw new ArgumentException("TransitionFunction columns number have to be equal to Alphabet symbols number (" + Alphabet.ToString() + ")", "TransitionFunction");

            foreach (int state in TransitionFunction)
            {
                if (state < 0)
                    throw new ArgumentException("states in TransitionFunction have to be greater than or equal to 0", "TransitionFunction");
                if (state >= States)
                    throw new ArgumentException("states in TransitionFunction have to be less than States number (" + States.ToString() + ")", "TransitionFunction");
            }
            this.TransitionFunction = new int[States, Alphabet];
            Array.Copy(TransitionFunction, this.TransitionFunction, TransitionFunction.Length);

            if (AcceptStates == null)
                throw new ArgumentNullException("AcceptStates");
            if (AcceptStates.Length != States)
                throw new ArgumentException("AcceptStates lenght have to be equal to States number (" + States.ToString() + ")", "AcceptStates");
            this.AcceptStates = new bool[States];
            Array.Copy(AcceptStates, this.AcceptStates, AcceptStates.Length);

            this.ActualState = StartState;
        }

        public int GetNextState(int state, int symbol)
        {
            if (state < 0)
                throw new IndexOutOfRangeException("state index have to be greater than or equal to 0");
            if (state >= States)
                throw new IndexOutOfRangeException("state index have to be less than States number (" + States.ToString() + ")");

            if (symbol < 0)
                throw new IndexOutOfRangeException("symbol index have to be greater than or equal to 0");
            if (symbol >= Alphabet)
                throw new IndexOutOfRangeException("state index have to be less than Alphabet symbols number (" + Alphabet.ToString() + ")");

            return TransitionFunction[state, symbol];
        }

        public bool IsInAcceptState()
        {
            return AcceptStates[ActualState];
        }

        public bool IsAcceptState(int state)
        {
            if (state < 0)
                throw new IndexOutOfRangeException("state index have to be greater than or equal to 0");
            if (state >= States)
                throw new IndexOutOfRangeException("state index have to be less than States number (" + States.ToString() + ")");

            return AcceptStates[state];
        }

        public void Reset()
        {
            ActualState = StartState;
        }

        public int Input(int symbol)
        {
            if (symbol < 0)
                throw new ArgumentException("symbol index have to be greater than or equal to 0", "symbol");
            if (symbol >= Alphabet)
                throw new ArgumentException("state index have to be less than Alphabet symbols number (" + Alphabet.ToString() + ")", "symbol");
            ActualState = TransitionFunction[ActualState, symbol];
            return ActualState;
        }

        public int Input(string symbol)
        {
            int tmpSymbol;
            try
            {
                tmpSymbol = Convert.ToInt32(symbol);
            }
            catch (Exception e)
            {
                throw e;
            }

            try
            {
                return this.Input(tmpSymbol);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public int Input(char symbol)
        {
            try
            {
                return this.Input(symbol.ToString());
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
