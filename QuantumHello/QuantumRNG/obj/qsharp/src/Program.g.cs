//------------------------------------------------------------------------------
// <auto-generated>                                                             
//     This code was generated by a tool.                                       
//     Changes to this file may cause incorrect behavior and will be lost if    
//     the code is regenerated.                                                 
// </auto-generated>                                                            
//------------------------------------------------------------------------------
#pragma warning disable 436
#pragma warning disable 162
#pragma warning disable 1591
using System;
using Microsoft.Quantum.Core;
using Microsoft.Quantum.Intrinsic;
using Microsoft.Quantum.Simulation.Core;

[assembly: CallableDeclaration("{\"Kind\":{\"Case\":\"Operation\"},\"QualifiedName\":{\"Namespace\":\"QuantumRNG\",\"Name\":\"GenerateRandomBit\"},\"Attributes\":[],\"Modifiers\":{\"Access\":{\"Case\":\"DefaultAccess\"}},\"SourceFile\":\"C:\\\\repo\\\\sandbox\\\\QuantumHello\\\\QuantumRNG\\\\Program.qs\",\"Position\":{\"Item1\":8,\"Item2\":4},\"SymbolRange\":{\"Item1\":{\"Line\":1,\"Column\":11},\"Item2\":{\"Line\":1,\"Column\":28}},\"ArgumentTuple\":{\"Case\":\"QsTuple\",\"Fields\":[[]]},\"Signature\":{\"TypeParameters\":[],\"ArgumentType\":{\"Case\":\"UnitType\"},\"ReturnType\":{\"Case\":\"Result\"},\"Information\":{\"Characteristics\":{\"Case\":\"EmptySet\"},\"InferredInformation\":{\"IsSelfAdjoint\":false,\"IsIntrinsic\":false}}},\"Documentation\":[]}")]
[assembly: SpecializationDeclaration("{\"Kind\":{\"Case\":\"QsBody\"},\"TypeArguments\":{\"Case\":\"Null\"},\"Information\":{\"Characteristics\":{\"Case\":\"EmptySet\"},\"InferredInformation\":{\"IsSelfAdjoint\":false,\"IsIntrinsic\":false}},\"Parent\":{\"Namespace\":\"QuantumRNG\",\"Name\":\"GenerateRandomBit\"},\"Attributes\":[],\"SourceFile\":\"C:\\\\repo\\\\sandbox\\\\QuantumHello\\\\QuantumRNG\\\\Program.qs\",\"Position\":{\"Item1\":8,\"Item2\":4},\"HeaderRange\":{\"Item1\":{\"Line\":1,\"Column\":11},\"Item2\":{\"Line\":1,\"Column\":28}},\"Documentation\":[]}")]
[assembly: CallableDeclaration("{\"Kind\":{\"Case\":\"Operation\"},\"QualifiedName\":{\"Namespace\":\"QuantumRNG\",\"Name\":\"SampleRandomNumberInRange\"},\"Attributes\":[],\"Modifiers\":{\"Access\":{\"Case\":\"DefaultAccess\"}},\"SourceFile\":\"C:\\\\repo\\\\sandbox\\\\QuantumHello\\\\QuantumRNG\\\\Program.qs\",\"Position\":{\"Item1\":18,\"Item2\":4},\"SymbolRange\":{\"Item1\":{\"Line\":1,\"Column\":11},\"Item2\":{\"Line\":1,\"Column\":36}},\"ArgumentTuple\":{\"Case\":\"QsTuple\",\"Fields\":[[{\"Case\":\"QsTupleItem\",\"Fields\":[{\"VariableName\":{\"Case\":\"ValidName\",\"Fields\":[\"min\"]},\"Type\":{\"Case\":\"Int\"},\"InferredInformation\":{\"IsMutable\":false,\"HasLocalQuantumDependency\":false},\"Position\":{\"Case\":\"Null\"},\"Range\":{\"Item1\":{\"Line\":1,\"Column\":37},\"Item2\":{\"Line\":1,\"Column\":40}}}]},{\"Case\":\"QsTupleItem\",\"Fields\":[{\"VariableName\":{\"Case\":\"ValidName\",\"Fields\":[\"max\"]},\"Type\":{\"Case\":\"Int\"},\"InferredInformation\":{\"IsMutable\":false,\"HasLocalQuantumDependency\":false},\"Position\":{\"Case\":\"Null\"},\"Range\":{\"Item1\":{\"Line\":1,\"Column\":48},\"Item2\":{\"Line\":1,\"Column\":51}}}]}]]},\"Signature\":{\"TypeParameters\":[],\"ArgumentType\":{\"Case\":\"TupleType\",\"Fields\":[[{\"Case\":\"Int\"},{\"Case\":\"Int\"}]]},\"ReturnType\":{\"Case\":\"Int\"},\"Information\":{\"Characteristics\":{\"Case\":\"EmptySet\"},\"InferredInformation\":{\"IsSelfAdjoint\":false,\"IsIntrinsic\":false}}},\"Documentation\":[]}")]
[assembly: SpecializationDeclaration("{\"Kind\":{\"Case\":\"QsBody\"},\"TypeArguments\":{\"Case\":\"Null\"},\"Information\":{\"Characteristics\":{\"Case\":\"EmptySet\"},\"InferredInformation\":{\"IsSelfAdjoint\":false,\"IsIntrinsic\":false}},\"Parent\":{\"Namespace\":\"QuantumRNG\",\"Name\":\"SampleRandomNumberInRange\"},\"Attributes\":[],\"SourceFile\":\"C:\\\\repo\\\\sandbox\\\\QuantumHello\\\\QuantumRNG\\\\Program.qs\",\"Position\":{\"Item1\":18,\"Item2\":4},\"HeaderRange\":{\"Item1\":{\"Line\":1,\"Column\":11},\"Item2\":{\"Line\":1,\"Column\":36}},\"Documentation\":[]}")]
[assembly: CallableDeclaration("{\"Kind\":{\"Case\":\"Operation\"},\"QualifiedName\":{\"Namespace\":\"QuantumRNG\",\"Name\":\"SampleRandomNumber\"},\"Attributes\":[{\"TypeId\":{\"Case\":\"Value\",\"Fields\":[{\"Namespace\":\"Microsoft.Quantum.Core\",\"Name\":\"EntryPoint\",\"Range\":{\"Case\":\"Value\",\"Fields\":[{\"Item1\":{\"Line\":1,\"Column\":2},\"Item2\":{\"Line\":1,\"Column\":12}}]}}]},\"TypeIdRange\":{\"Case\":\"Value\",\"Fields\":[{\"Item1\":{\"Line\":1,\"Column\":2},\"Item2\":{\"Line\":1,\"Column\":12}}]},\"Argument\":{\"Item1\":{\"Case\":\"UnitValue\"},\"Item2\":[],\"Item3\":{\"Case\":\"UnitType\"},\"Item4\":{\"IsMutable\":false,\"HasLocalQuantumDependency\":false},\"Item5\":{\"Case\":\"Value\",\"Fields\":[{\"Item1\":{\"Line\":1,\"Column\":12},\"Item2\":{\"Line\":1,\"Column\":14}}]}},\"Offset\":{\"Item1\":30,\"Item2\":3},\"Comments\":{\"OpeningComments\":[],\"ClosingComments\":[]}}],\"Modifiers\":{\"Access\":{\"Case\":\"DefaultAccess\"}},\"SourceFile\":\"C:\\\\repo\\\\sandbox\\\\QuantumHello\\\\QuantumRNG\\\\Program.qs\",\"Position\":{\"Item1\":31,\"Item2\":3},\"SymbolRange\":{\"Item1\":{\"Line\":1,\"Column\":11},\"Item2\":{\"Line\":1,\"Column\":29}},\"ArgumentTuple\":{\"Case\":\"QsTuple\",\"Fields\":[[]]},\"Signature\":{\"TypeParameters\":[],\"ArgumentType\":{\"Case\":\"UnitType\"},\"ReturnType\":{\"Case\":\"Int\"},\"Information\":{\"Characteristics\":{\"Case\":\"EmptySet\"},\"InferredInformation\":{\"IsSelfAdjoint\":false,\"IsIntrinsic\":false}}},\"Documentation\":[]}")]
[assembly: SpecializationDeclaration("{\"Kind\":{\"Case\":\"QsBody\"},\"TypeArguments\":{\"Case\":\"Null\"},\"Information\":{\"Characteristics\":{\"Case\":\"EmptySet\"},\"InferredInformation\":{\"IsSelfAdjoint\":false,\"IsIntrinsic\":false}},\"Parent\":{\"Namespace\":\"QuantumRNG\",\"Name\":\"SampleRandomNumber\"},\"Attributes\":[],\"SourceFile\":\"C:\\\\repo\\\\sandbox\\\\QuantumHello\\\\QuantumRNG\\\\Program.qs\",\"Position\":{\"Item1\":31,\"Item2\":3},\"HeaderRange\":{\"Item1\":{\"Line\":1,\"Column\":11},\"Item2\":{\"Line\":1,\"Column\":29}},\"Documentation\":[]}")]
#line hidden
namespace QuantumRNG
{
    [SourceLocation("C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs", OperationFunctor.Body, 9, 19)]
    public partial class GenerateRandomBit : Operation<QVoid, Result>, ICallable
    {
        public GenerateRandomBit(IOperationFactory m) : base(m)
        {
        }

        String ICallable.Name => "GenerateRandomBit";
        String ICallable.FullName => "QuantumRNG.GenerateRandomBit";
        protected Allocate Allocate__
        {
            get;
            set;
        }

        protected Release Release__
        {
            get;
            set;
        }

        protected IUnitary<Qubit> Microsoft__Quantum__Intrinsic__H
        {
            get;
            set;
        }

        protected ICallable<Qubit, Result> Microsoft__Quantum__Intrinsic__M
        {
            get;
            set;
        }

        public override Func<QVoid, Result> __Body__ => (__in__) =>
        {
#line hidden
            {
#line 11 "C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs"
                var q = Allocate__.Apply();
#line hidden
                bool __arg1__ = true;
                try
                {
#line 13 "C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs"
                    Microsoft__Quantum__Intrinsic__H.Apply(q);
#line 16 "C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs"
                    return Microsoft__Quantum__Intrinsic__M.Apply(q);
                }
#line hidden
                catch
                {
                    __arg1__ = false;
                    throw;
                }
#line hidden
                finally
                {
                    if (__arg1__)
                    {
#line hidden
                        Release__.Apply(q);
                    }
                }
            }
        }

        ;
        public override void __Init__()
        {
            this.Allocate__ = this.__Factory__.Get<Allocate>(typeof(global::Microsoft.Quantum.Intrinsic.Allocate));
            this.Release__ = this.__Factory__.Get<Release>(typeof(global::Microsoft.Quantum.Intrinsic.Release));
            this.Microsoft__Quantum__Intrinsic__H = this.__Factory__.Get<IUnitary<Qubit>>(typeof(global::Microsoft.Quantum.Intrinsic.H));
            this.Microsoft__Quantum__Intrinsic__M = this.__Factory__.Get<ICallable<Qubit, Result>>(typeof(global::Microsoft.Quantum.Intrinsic.M));
        }

        public override IApplyData __DataIn__(QVoid data) => data;
        public override IApplyData __DataOut__(Result data) => new QTuple<Result>(data);
        public static System.Threading.Tasks.Task<Result> Run(IOperationFactory __m__)
        {
            return __m__.Run<GenerateRandomBit, QVoid, Result>(QVoid.Instance);
        }
    }

    [SourceLocation("C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs", OperationFunctor.Body, 19, 32)]
    public partial class SampleRandomNumberInRange : Operation<(Int64,Int64), Int64>, ICallable
    {
        public SampleRandomNumberInRange(IOperationFactory m) : base(m)
        {
        }

        public class In : QTuple<(Int64,Int64)>, IApplyData
        {
            public In((Int64,Int64) data) : base(data)
            {
            }

            System.Collections.Generic.IEnumerable<Qubit> IApplyData.Qubits => null;
        }

        String ICallable.Name => "SampleRandomNumberInRange";
        String ICallable.FullName => "QuantumRNG.SampleRandomNumberInRange";
        protected ICallable<Int64, Int64> Microsoft__Quantum__Math__BitSizeI
        {
            get;
            set;
        }

        protected ICallable<QVoid, Result> GenerateRandomBit__
        {
            get;
            set;
        }

        protected ICallable<IQArray<Result>, Int64> Microsoft__Quantum__Convert__ResultArrayAsInt
        {
            get;
            set;
        }

        public override Func<(Int64,Int64), Int64> __Body__ => (__in__) =>
        {
            var (min,max) = __in__;
#line 20 "C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs"
            var output = 0L;
#line 21 "C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs"
            while (true)
            {
#line 22 "C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs"
                var bits = new QArray<Result>();
#line 23 "C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs"
                foreach (var idxBit in new QRange(1L, Microsoft__Quantum__Math__BitSizeI.Apply(max)))
#line hidden
                {
#line 24 "C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs"
                    bits = QArray<Result>.Add(bits, new QArray<Result>(GenerateRandomBit__.Apply(QVoid.Instance)));
                }

#line 26 "C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs"
                output = Microsoft__Quantum__Convert__ResultArrayAsInt.Apply(bits?.Copy());
                if (((output <= max) && (output >= min)))
                {
                    break;
                }
                else
                {
                }
            }

#line 28 "C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs"
            return output;
        }

        ;
        public override void __Init__()
        {
            this.Microsoft__Quantum__Math__BitSizeI = this.__Factory__.Get<ICallable<Int64, Int64>>(typeof(global::Microsoft.Quantum.Math.BitSizeI));
            this.GenerateRandomBit__ = this.__Factory__.Get<ICallable<QVoid, Result>>(typeof(GenerateRandomBit));
            this.Microsoft__Quantum__Convert__ResultArrayAsInt = this.__Factory__.Get<ICallable<IQArray<Result>, Int64>>(typeof(global::Microsoft.Quantum.Convert.ResultArrayAsInt));
        }

        public override IApplyData __DataIn__((Int64,Int64) data) => new In(data);
        public override IApplyData __DataOut__(Int64 data) => new QTuple<Int64>(data);
        public static System.Threading.Tasks.Task<Int64> Run(IOperationFactory __m__, Int64 min, Int64 max)
        {
            return __m__.Run<SampleRandomNumberInRange, (Int64,Int64), Int64>((min, max));
        }
    }

    [SourceLocation("C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs", OperationFunctor.Body, 32, -1)]
    public partial class SampleRandomNumber : Operation<QVoid, Int64>, ICallable
    {
        public SampleRandomNumber(IOperationFactory m) : base(m)
        {
        }

        String ICallable.Name => "SampleRandomNumber";
        String ICallable.FullName => "QuantumRNG.SampleRandomNumber";
        public static EntryPointInfo<QVoid, Int64> Info => new EntryPointInfo<QVoid, Int64>(typeof(SampleRandomNumber));
        protected ICallable<String, QVoid> Message__
        {
            get;
            set;
        }

        protected ICallable<(Int64,Int64), Int64> SampleRandomNumberInRange__
        {
            get;
            set;
        }

        public override Func<QVoid, Int64> __Body__ => (__in__) =>
        {
#line 33 "C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs"
            var max = 50L;
#line 34 "C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs"
            var min = 40L;
#line 35 "C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs"
            Message__.Apply(String.Format("Sampling a random number between {0} and {1}: ", min, max));
#line 36 "C:\\repo\\sandbox\\QuantumHello\\QuantumRNG\\Program.qs"
            return SampleRandomNumberInRange__.Apply((min, max));
        }

        ;
        public override void __Init__()
        {
            this.Message__ = this.__Factory__.Get<ICallable<String, QVoid>>(typeof(global::Microsoft.Quantum.Intrinsic.Message));
            this.SampleRandomNumberInRange__ = this.__Factory__.Get<ICallable<(Int64,Int64), Int64>>(typeof(SampleRandomNumberInRange));
        }

        public override IApplyData __DataIn__(QVoid data) => data;
        public override IApplyData __DataOut__(Int64 data) => new QTuple<Int64>(data);
        public static System.Threading.Tasks.Task<Int64> Run(IOperationFactory __m__)
        {
            return __m__.Run<SampleRandomNumber, QVoid, Int64>(QVoid.Instance);
        }
    }
}