; ModuleID = '/llk/IR/build_arm/sound/pci/hda/snd-hda-codec-hdmi.mod.c_pt.bc'
source_filename = "sound/pci/hda/snd-hda-codec-hdmi.mod.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { %struct.elf32_note, [6 x i8], [2 x i8], [1 x i8] }
%struct.elf32_note = type { i32, i32, i32 }
%struct.anon.0 = type { %struct.elf32_note, [6 x i8], i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }

@_note_8 = internal constant %struct.anon { %struct.elf32_note { i32 6, i32 1, i32 256 }, [6 x i8] c"Linux\00", [2 x i8] undef, [1 x i8] zeroinitializer }, section ".note.Linux", align 4
@_note_9 = internal constant %struct.anon.0 { %struct.elf32_note { i32 6, i32 4, i32 257 }, [6 x i8] c"Linux\00", i32 0 }, section ".note.Linux", align 4
@__UNIQUE_ID_vermagic100 = internal constant [43 x i8] c"vermagic=5.17.0 SMP mod_unload ARMv7 p2v8 \00", section ".modinfo", align 1
@__UNIQUE_ID_name101 = internal constant [24 x i8] c"name=snd_hda_codec_hdmi\00", section ".modinfo", align 1
@__this_module = dso_local local_unnamed_addr global %struct.module { i32 0, %struct.list_head zeroinitializer, [60 x i8] c"snd_hda_codec_hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.module_kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, %struct.mutex zeroinitializer, ptr null, i32 0, i32 0, ptr null, ptr null, i8 0, i8 0, i32 0, ptr null, ptr @init_module, [48 x i8] undef, %struct.module_layout zeroinitializer, %struct.module_layout zeroinitializer, %struct.mod_arch_specific zeroinitializer, i32 0, i32 0, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.mod_kallsyms zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr @cleanup_module, %struct.atomic_t zeroinitializer, [40 x i8] undef }, section ".gnu.linkonce.this_module", align 64
@__UNIQUE_ID_intree102 = internal constant [9 x i8] c"intree=Y\00", section ".modinfo", align 1
@__UNIQUE_ID_depends103 = internal constant [47 x i8] c"depends=snd-hda-core,snd,snd-hda-codec,snd-pcm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias104 = internal constant [30 x i8] c"alias=hdaudio:v1002793Cr*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias105 = internal constant [30 x i8] c"alias=hdaudio:v10027919r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias106 = internal constant [30 x i8] c"alias=hdaudio:v1002791Ar*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias107 = internal constant [30 x i8] c"alias=hdaudio:v1002AA01r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias108 = internal constant [30 x i8] c"alias=hdaudio:v10951390r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias109 = internal constant [30 x i8] c"alias=hdaudio:v10951392r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias110 = internal constant [30 x i8] c"alias=hdaudio:v17E80047r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias111 = internal constant [30 x i8] c"alias=hdaudio:v10DE0001r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias112 = internal constant [30 x i8] c"alias=hdaudio:v10DE0002r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias113 = internal constant [30 x i8] c"alias=hdaudio:v10DE0003r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias114 = internal constant [30 x i8] c"alias=hdaudio:v10DE0004r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias115 = internal constant [30 x i8] c"alias=hdaudio:v10DE0005r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias116 = internal constant [30 x i8] c"alias=hdaudio:v10DE0006r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias117 = internal constant [30 x i8] c"alias=hdaudio:v10DE0007r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias118 = internal constant [30 x i8] c"alias=hdaudio:v10DE0008r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias119 = internal constant [30 x i8] c"alias=hdaudio:v10DE0009r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias120 = internal constant [30 x i8] c"alias=hdaudio:v10DE000Ar*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias121 = internal constant [30 x i8] c"alias=hdaudio:v10DE000Br*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias122 = internal constant [30 x i8] c"alias=hdaudio:v10DE000Cr*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias123 = internal constant [30 x i8] c"alias=hdaudio:v10DE000Dr*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias124 = internal constant [30 x i8] c"alias=hdaudio:v10DE0010r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias125 = internal constant [30 x i8] c"alias=hdaudio:v10DE0011r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias126 = internal constant [30 x i8] c"alias=hdaudio:v10DE0012r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias127 = internal constant [30 x i8] c"alias=hdaudio:v10DE0013r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias128 = internal constant [30 x i8] c"alias=hdaudio:v10DE0014r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias129 = internal constant [30 x i8] c"alias=hdaudio:v10DE0015r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias130 = internal constant [30 x i8] c"alias=hdaudio:v10DE0016r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias131 = internal constant [30 x i8] c"alias=hdaudio:v10DE0018r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias132 = internal constant [30 x i8] c"alias=hdaudio:v10DE0019r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias133 = internal constant [30 x i8] c"alias=hdaudio:v10DE001Ar*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias134 = internal constant [30 x i8] c"alias=hdaudio:v10DE001Br*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias135 = internal constant [30 x i8] c"alias=hdaudio:v10DE001Cr*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias136 = internal constant [30 x i8] c"alias=hdaudio:v10DE0020r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias137 = internal constant [30 x i8] c"alias=hdaudio:v10DE0022r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias138 = internal constant [30 x i8] c"alias=hdaudio:v10DE0028r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias139 = internal constant [30 x i8] c"alias=hdaudio:v10DE0029r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias140 = internal constant [30 x i8] c"alias=hdaudio:v10DE002Dr*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias141 = internal constant [30 x i8] c"alias=hdaudio:v10DE002Er*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias142 = internal constant [30 x i8] c"alias=hdaudio:v10DE002Fr*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias143 = internal constant [30 x i8] c"alias=hdaudio:v10DE0030r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias144 = internal constant [30 x i8] c"alias=hdaudio:v10DE0040r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias145 = internal constant [30 x i8] c"alias=hdaudio:v10DE0041r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias146 = internal constant [30 x i8] c"alias=hdaudio:v10DE0042r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias147 = internal constant [30 x i8] c"alias=hdaudio:v10DE0043r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias148 = internal constant [30 x i8] c"alias=hdaudio:v10DE0044r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias149 = internal constant [30 x i8] c"alias=hdaudio:v10DE0045r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias150 = internal constant [30 x i8] c"alias=hdaudio:v10DE0050r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias151 = internal constant [30 x i8] c"alias=hdaudio:v10DE0051r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias152 = internal constant [30 x i8] c"alias=hdaudio:v10DE0052r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias153 = internal constant [30 x i8] c"alias=hdaudio:v10DE0060r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias154 = internal constant [30 x i8] c"alias=hdaudio:v10DE0061r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias155 = internal constant [30 x i8] c"alias=hdaudio:v10DE0062r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias156 = internal constant [30 x i8] c"alias=hdaudio:v10DE0067r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias157 = internal constant [30 x i8] c"alias=hdaudio:v10DE0070r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias158 = internal constant [30 x i8] c"alias=hdaudio:v10DE0071r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias159 = internal constant [30 x i8] c"alias=hdaudio:v10DE0072r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias160 = internal constant [30 x i8] c"alias=hdaudio:v10DE0073r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias161 = internal constant [30 x i8] c"alias=hdaudio:v10DE0074r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias162 = internal constant [30 x i8] c"alias=hdaudio:v10DE0076r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias163 = internal constant [30 x i8] c"alias=hdaudio:v10DE007Br*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias164 = internal constant [30 x i8] c"alias=hdaudio:v10DE007Cr*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias165 = internal constant [30 x i8] c"alias=hdaudio:v10DE007Dr*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias166 = internal constant [30 x i8] c"alias=hdaudio:v10DE007Er*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias167 = internal constant [30 x i8] c"alias=hdaudio:v10DE0080r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias168 = internal constant [30 x i8] c"alias=hdaudio:v10DE0081r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias169 = internal constant [30 x i8] c"alias=hdaudio:v10DE0082r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias170 = internal constant [30 x i8] c"alias=hdaudio:v10DE0083r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias171 = internal constant [30 x i8] c"alias=hdaudio:v10DE0084r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias172 = internal constant [30 x i8] c"alias=hdaudio:v10DE0090r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias173 = internal constant [30 x i8] c"alias=hdaudio:v10DE0091r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias174 = internal constant [30 x i8] c"alias=hdaudio:v10DE0092r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [30 x i8] c"alias=hdaudio:v10DE0093r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias176 = internal constant [30 x i8] c"alias=hdaudio:v10DE0094r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias177 = internal constant [30 x i8] c"alias=hdaudio:v10DE0095r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias178 = internal constant [30 x i8] c"alias=hdaudio:v10DE0097r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias179 = internal constant [30 x i8] c"alias=hdaudio:v10DE0098r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias180 = internal constant [30 x i8] c"alias=hdaudio:v10DE0099r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias181 = internal constant [30 x i8] c"alias=hdaudio:v10DE009Ar*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias182 = internal constant [30 x i8] c"alias=hdaudio:v10DE009Dr*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias183 = internal constant [30 x i8] c"alias=hdaudio:v10DE009Er*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias184 = internal constant [30 x i8] c"alias=hdaudio:v10DE009Fr*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias185 = internal constant [30 x i8] c"alias=hdaudio:v10DE00A0r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias186 = internal constant [30 x i8] c"alias=hdaudio:v10DE8001r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias187 = internal constant [30 x i8] c"alias=hdaudio:v10DE8067r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [30 x i8] c"alias=hdaudio:v11069F80r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias189 = internal constant [30 x i8] c"alias=hdaudio:v11069F81r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias190 = internal constant [30 x i8] c"alias=hdaudio:v11069F84r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias191 = internal constant [30 x i8] c"alias=hdaudio:v11069F85r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias192 = internal constant [30 x i8] c"alias=hdaudio:v80860054r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias193 = internal constant [30 x i8] c"alias=hdaudio:v80862800r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias194 = internal constant [30 x i8] c"alias=hdaudio:v80862801r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias195 = internal constant [30 x i8] c"alias=hdaudio:v80862802r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias196 = internal constant [30 x i8] c"alias=hdaudio:v80862803r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias197 = internal constant [30 x i8] c"alias=hdaudio:v80862804r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias198 = internal constant [30 x i8] c"alias=hdaudio:v80862805r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias199 = internal constant [30 x i8] c"alias=hdaudio:v80862806r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias200 = internal constant [30 x i8] c"alias=hdaudio:v80862807r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias201 = internal constant [30 x i8] c"alias=hdaudio:v80862808r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias202 = internal constant [30 x i8] c"alias=hdaudio:v80862809r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias203 = internal constant [30 x i8] c"alias=hdaudio:v8086280Ar*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias204 = internal constant [30 x i8] c"alias=hdaudio:v8086280Br*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias205 = internal constant [30 x i8] c"alias=hdaudio:v8086280Cr*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias206 = internal constant [30 x i8] c"alias=hdaudio:v8086280Dr*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias207 = internal constant [30 x i8] c"alias=hdaudio:v8086280Fr*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias208 = internal constant [30 x i8] c"alias=hdaudio:v80862812r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias209 = internal constant [30 x i8] c"alias=hdaudio:v80862814r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias210 = internal constant [30 x i8] c"alias=hdaudio:v80862815r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias211 = internal constant [30 x i8] c"alias=hdaudio:v80862816r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias212 = internal constant [30 x i8] c"alias=hdaudio:v80862819r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias213 = internal constant [30 x i8] c"alias=hdaudio:v8086281Ar*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias214 = internal constant [30 x i8] c"alias=hdaudio:v8086281Br*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias215 = internal constant [30 x i8] c"alias=hdaudio:v8086281Cr*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias216 = internal constant [30 x i8] c"alias=hdaudio:v80862880r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias217 = internal constant [30 x i8] c"alias=hdaudio:v80862882r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias218 = internal constant [30 x i8] c"alias=hdaudio:v80862883r*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias219 = internal constant [30 x i8] c"alias=hdaudio:v808629FBr*a01*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias220 = internal constant [30 x i8] c"alias=hdaudio:v00000101r*a01*\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_alias104, ptr @__UNIQUE_ID_alias105, ptr @__UNIQUE_ID_alias106, ptr @__UNIQUE_ID_alias107, ptr @__UNIQUE_ID_alias108, ptr @__UNIQUE_ID_alias109, ptr @__UNIQUE_ID_alias110, ptr @__UNIQUE_ID_alias111, ptr @__UNIQUE_ID_alias112, ptr @__UNIQUE_ID_alias113, ptr @__UNIQUE_ID_alias114, ptr @__UNIQUE_ID_alias115, ptr @__UNIQUE_ID_alias116, ptr @__UNIQUE_ID_alias117, ptr @__UNIQUE_ID_alias118, ptr @__UNIQUE_ID_alias119, ptr @__UNIQUE_ID_alias120, ptr @__UNIQUE_ID_alias121, ptr @__UNIQUE_ID_alias122, ptr @__UNIQUE_ID_alias123, ptr @__UNIQUE_ID_alias124, ptr @__UNIQUE_ID_alias125, ptr @__UNIQUE_ID_alias126, ptr @__UNIQUE_ID_alias127, ptr @__UNIQUE_ID_alias128, ptr @__UNIQUE_ID_alias129, ptr @__UNIQUE_ID_alias130, ptr @__UNIQUE_ID_alias131, ptr @__UNIQUE_ID_alias132, ptr @__UNIQUE_ID_alias133, ptr @__UNIQUE_ID_alias134, ptr @__UNIQUE_ID_alias135, ptr @__UNIQUE_ID_alias136, ptr @__UNIQUE_ID_alias137, ptr @__UNIQUE_ID_alias138, ptr @__UNIQUE_ID_alias139, ptr @__UNIQUE_ID_alias140, ptr @__UNIQUE_ID_alias141, ptr @__UNIQUE_ID_alias142, ptr @__UNIQUE_ID_alias143, ptr @__UNIQUE_ID_alias144, ptr @__UNIQUE_ID_alias145, ptr @__UNIQUE_ID_alias146, ptr @__UNIQUE_ID_alias147, ptr @__UNIQUE_ID_alias148, ptr @__UNIQUE_ID_alias149, ptr @__UNIQUE_ID_alias150, ptr @__UNIQUE_ID_alias151, ptr @__UNIQUE_ID_alias152, ptr @__UNIQUE_ID_alias153, ptr @__UNIQUE_ID_alias154, ptr @__UNIQUE_ID_alias155, ptr @__UNIQUE_ID_alias156, ptr @__UNIQUE_ID_alias157, ptr @__UNIQUE_ID_alias158, ptr @__UNIQUE_ID_alias159, ptr @__UNIQUE_ID_alias160, ptr @__UNIQUE_ID_alias161, ptr @__UNIQUE_ID_alias162, ptr @__UNIQUE_ID_alias163, ptr @__UNIQUE_ID_alias164, ptr @__UNIQUE_ID_alias165, ptr @__UNIQUE_ID_alias166, ptr @__UNIQUE_ID_alias167, ptr @__UNIQUE_ID_alias168, ptr @__UNIQUE_ID_alias169, ptr @__UNIQUE_ID_alias170, ptr @__UNIQUE_ID_alias171, ptr @__UNIQUE_ID_alias172, ptr @__UNIQUE_ID_alias173, ptr @__UNIQUE_ID_alias174, ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_alias176, ptr @__UNIQUE_ID_alias177, ptr @__UNIQUE_ID_alias178, ptr @__UNIQUE_ID_alias179, ptr @__UNIQUE_ID_alias180, ptr @__UNIQUE_ID_alias181, ptr @__UNIQUE_ID_alias182, ptr @__UNIQUE_ID_alias183, ptr @__UNIQUE_ID_alias184, ptr @__UNIQUE_ID_alias185, ptr @__UNIQUE_ID_alias186, ptr @__UNIQUE_ID_alias187, ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_alias189, ptr @__UNIQUE_ID_alias190, ptr @__UNIQUE_ID_alias191, ptr @__UNIQUE_ID_alias192, ptr @__UNIQUE_ID_alias193, ptr @__UNIQUE_ID_alias194, ptr @__UNIQUE_ID_alias195, ptr @__UNIQUE_ID_alias196, ptr @__UNIQUE_ID_alias197, ptr @__UNIQUE_ID_alias198, ptr @__UNIQUE_ID_alias199, ptr @__UNIQUE_ID_alias200, ptr @__UNIQUE_ID_alias201, ptr @__UNIQUE_ID_alias202, ptr @__UNIQUE_ID_alias203, ptr @__UNIQUE_ID_alias204, ptr @__UNIQUE_ID_alias205, ptr @__UNIQUE_ID_alias206, ptr @__UNIQUE_ID_alias207, ptr @__UNIQUE_ID_alias208, ptr @__UNIQUE_ID_alias209, ptr @__UNIQUE_ID_alias210, ptr @__UNIQUE_ID_alias211, ptr @__UNIQUE_ID_alias212, ptr @__UNIQUE_ID_alias213, ptr @__UNIQUE_ID_alias214, ptr @__UNIQUE_ID_alias215, ptr @__UNIQUE_ID_alias216, ptr @__UNIQUE_ID_alias217, ptr @__UNIQUE_ID_alias218, ptr @__UNIQUE_ID_alias219, ptr @__UNIQUE_ID_alias220, ptr @__UNIQUE_ID_depends103, ptr @__UNIQUE_ID_intree102, ptr @__UNIQUE_ID_name101, ptr @__UNIQUE_ID_vermagic100, ptr @_note_8, ptr @_note_9], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_module() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cleanup_module() #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
