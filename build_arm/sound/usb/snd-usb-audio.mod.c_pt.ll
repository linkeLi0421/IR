; ModuleID = '/llk/IR/build_arm/sound/usb/snd-usb-audio.mod.c_pt.bc'
source_filename = "sound/usb/snd-usb-audio.mod.c"
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
@__UNIQUE_ID_name101 = internal constant [19 x i8] c"name=snd_usb_audio\00", section ".modinfo", align 1
@__this_module = dso_local local_unnamed_addr global %struct.module { i32 0, %struct.list_head zeroinitializer, [60 x i8] c"snd_usb_audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.module_kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, %struct.mutex zeroinitializer, ptr null, i32 0, i32 0, ptr null, ptr null, i8 0, i8 0, i32 0, ptr null, ptr @init_module, [48 x i8] undef, %struct.module_layout zeroinitializer, %struct.module_layout zeroinitializer, %struct.mod_arch_specific zeroinitializer, i32 0, i32 0, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.mod_kallsyms zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr @cleanup_module, %struct.atomic_t zeroinitializer, [40 x i8] undef }, section ".gnu.linkonce.this_module", align 64
@__UNIQUE_ID_intree102 = internal constant [9 x i8] c"intree=Y\00", section ".modinfo", align 1
@__UNIQUE_ID_depends103 = internal constant [49 x i8] c"depends=mc,snd-usbmidi-lib,snd-pcm,snd,snd-hwdep\00", section ".modinfo", align 1
@__UNIQUE_ID_alias104 = internal constant [46 x i8] c"alias=usb:v0403pB8D8d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias105 = internal constant [46 x i8] c"alias=usb:v041Ep0005d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias106 = internal constant [47 x i8] c"alias=usb:v041Ep3F02d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias107 = internal constant [47 x i8] c"alias=usb:v041Ep3F04d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias108 = internal constant [47 x i8] c"alias=usb:v041Ep3F0Ad*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias109 = internal constant [47 x i8] c"alias=usb:v041Ep3F19d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias110 = internal constant [48 x i8] c"alias=usb:v041Ep4095d*dc*dsc*dp*ic01isc01ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias111 = internal constant [46 x i8] c"alias=usb:v0424pB832d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias112 = internal constant [48 x i8] c"alias=usb:v046Dp0850d*dc*dsc*dp*ic01isc01ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias113 = internal constant [48 x i8] c"alias=usb:v046Dp08AEd*dc*dsc*dp*ic01isc01ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias114 = internal constant [48 x i8] c"alias=usb:v046Dp08C6d*dc*dsc*dp*ic01isc01ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias115 = internal constant [48 x i8] c"alias=usb:v046Dp08F0d*dc*dsc*dp*ic01isc01ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias116 = internal constant [48 x i8] c"alias=usb:v046Dp08F5d*dc*dsc*dp*ic01isc01ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias117 = internal constant [48 x i8] c"alias=usb:v046Dp08F6d*dc*dsc*dp*ic01isc01ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias118 = internal constant [48 x i8] c"alias=usb:v046Dp0990d*dc*dsc*dp*ic01isc01ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias119 = internal constant [46 x i8] c"alias=usb:v0499p1000d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias120 = internal constant [46 x i8] c"alias=usb:v0499p1001d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias121 = internal constant [46 x i8] c"alias=usb:v0499p1002d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias122 = internal constant [46 x i8] c"alias=usb:v0499p1003d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias123 = internal constant [47 x i8] c"alias=usb:v0499p1004d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias124 = internal constant [46 x i8] c"alias=usb:v0499p1005d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias125 = internal constant [46 x i8] c"alias=usb:v0499p1006d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias126 = internal constant [46 x i8] c"alias=usb:v0499p1007d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias127 = internal constant [46 x i8] c"alias=usb:v0499p1008d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias128 = internal constant [46 x i8] c"alias=usb:v0499p1009d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias129 = internal constant [47 x i8] c"alias=usb:v0499p100Ad*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias130 = internal constant [46 x i8] c"alias=usb:v0499p100Cd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias131 = internal constant [46 x i8] c"alias=usb:v0499p100Dd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias132 = internal constant [46 x i8] c"alias=usb:v0499p100Ed*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias133 = internal constant [46 x i8] c"alias=usb:v0499p100Fd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias134 = internal constant [46 x i8] c"alias=usb:v0499p1010d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias135 = internal constant [46 x i8] c"alias=usb:v0499p1011d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias136 = internal constant [46 x i8] c"alias=usb:v0499p1012d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias137 = internal constant [46 x i8] c"alias=usb:v0499p1013d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias138 = internal constant [46 x i8] c"alias=usb:v0499p1014d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias139 = internal constant [46 x i8] c"alias=usb:v0499p1015d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias140 = internal constant [46 x i8] c"alias=usb:v0499p1016d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias141 = internal constant [46 x i8] c"alias=usb:v0499p1017d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias142 = internal constant [46 x i8] c"alias=usb:v0499p1018d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias143 = internal constant [46 x i8] c"alias=usb:v0499p1019d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias144 = internal constant [46 x i8] c"alias=usb:v0499p101Ad*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias145 = internal constant [46 x i8] c"alias=usb:v0499p101Bd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias146 = internal constant [46 x i8] c"alias=usb:v0499p101Cd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias147 = internal constant [46 x i8] c"alias=usb:v0499p101Dd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias148 = internal constant [46 x i8] c"alias=usb:v0499p101Ed*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias149 = internal constant [46 x i8] c"alias=usb:v0499p101Fd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias150 = internal constant [46 x i8] c"alias=usb:v0499p1020d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias151 = internal constant [46 x i8] c"alias=usb:v0499p1021d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias152 = internal constant [46 x i8] c"alias=usb:v0499p1022d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias153 = internal constant [46 x i8] c"alias=usb:v0499p1023d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias154 = internal constant [46 x i8] c"alias=usb:v0499p1024d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias155 = internal constant [46 x i8] c"alias=usb:v0499p1025d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias156 = internal constant [46 x i8] c"alias=usb:v0499p1026d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias157 = internal constant [46 x i8] c"alias=usb:v0499p1027d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias158 = internal constant [46 x i8] c"alias=usb:v0499p1028d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias159 = internal constant [46 x i8] c"alias=usb:v0499p1029d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias160 = internal constant [46 x i8] c"alias=usb:v0499p102Ad*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias161 = internal constant [46 x i8] c"alias=usb:v0499p102Bd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias162 = internal constant [46 x i8] c"alias=usb:v0499p102Ed*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias163 = internal constant [46 x i8] c"alias=usb:v0499p1030d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias164 = internal constant [46 x i8] c"alias=usb:v0499p1031d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias165 = internal constant [46 x i8] c"alias=usb:v0499p1032d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias166 = internal constant [46 x i8] c"alias=usb:v0499p1033d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias167 = internal constant [46 x i8] c"alias=usb:v0499p1034d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias168 = internal constant [46 x i8] c"alias=usb:v0499p1035d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias169 = internal constant [46 x i8] c"alias=usb:v0499p1036d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias170 = internal constant [46 x i8] c"alias=usb:v0499p1037d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias171 = internal constant [46 x i8] c"alias=usb:v0499p1038d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias172 = internal constant [46 x i8] c"alias=usb:v0499p1039d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias173 = internal constant [46 x i8] c"alias=usb:v0499p103Ad*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias174 = internal constant [46 x i8] c"alias=usb:v0499p103Bd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [46 x i8] c"alias=usb:v0499p103Cd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias176 = internal constant [46 x i8] c"alias=usb:v0499p103Dd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias177 = internal constant [46 x i8] c"alias=usb:v0499p103Ed*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias178 = internal constant [46 x i8] c"alias=usb:v0499p103Fd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias179 = internal constant [46 x i8] c"alias=usb:v0499p1040d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias180 = internal constant [46 x i8] c"alias=usb:v0499p1041d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias181 = internal constant [46 x i8] c"alias=usb:v0499p1042d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias182 = internal constant [46 x i8] c"alias=usb:v0499p1043d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias183 = internal constant [46 x i8] c"alias=usb:v0499p1044d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias184 = internal constant [46 x i8] c"alias=usb:v0499p1045d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias185 = internal constant [47 x i8] c"alias=usb:v0499p104Ed*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias186 = internal constant [46 x i8] c"alias=usb:v0499p104Fd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias187 = internal constant [46 x i8] c"alias=usb:v0499p1050d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [46 x i8] c"alias=usb:v0499p1051d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias189 = internal constant [46 x i8] c"alias=usb:v0499p1052d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias190 = internal constant [47 x i8] c"alias=usb:v0499p1053d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias191 = internal constant [47 x i8] c"alias=usb:v0499p1054d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias192 = internal constant [46 x i8] c"alias=usb:v0499p1055d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias193 = internal constant [46 x i8] c"alias=usb:v0499p1056d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias194 = internal constant [46 x i8] c"alias=usb:v0499p1057d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias195 = internal constant [46 x i8] c"alias=usb:v0499p1058d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias196 = internal constant [46 x i8] c"alias=usb:v0499p1059d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias197 = internal constant [46 x i8] c"alias=usb:v0499p105Ad*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias198 = internal constant [46 x i8] c"alias=usb:v0499p105Bd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias199 = internal constant [46 x i8] c"alias=usb:v0499p105Cd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias200 = internal constant [46 x i8] c"alias=usb:v0499p105Dd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias201 = internal constant [46 x i8] c"alias=usb:v0499p1503d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias202 = internal constant [46 x i8] c"alias=usb:v0499p1507d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias203 = internal constant [46 x i8] c"alias=usb:v0499p1509d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias204 = internal constant [46 x i8] c"alias=usb:v0499p150Ad*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias205 = internal constant [46 x i8] c"alias=usb:v0499p150Cd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias206 = internal constant [46 x i8] c"alias=usb:v0499p2000d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias207 = internal constant [46 x i8] c"alias=usb:v0499p2001d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias208 = internal constant [46 x i8] c"alias=usb:v0499p2002d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias209 = internal constant [46 x i8] c"alias=usb:v0499p2003d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias210 = internal constant [46 x i8] c"alias=usb:v0499p5000d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias211 = internal constant [46 x i8] c"alias=usb:v0499p5001d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias212 = internal constant [46 x i8] c"alias=usb:v0499p5002d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias213 = internal constant [46 x i8] c"alias=usb:v0499p5003d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias214 = internal constant [46 x i8] c"alias=usb:v0499p5004d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias215 = internal constant [46 x i8] c"alias=usb:v0499p5005d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias216 = internal constant [46 x i8] c"alias=usb:v0499p5006d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias217 = internal constant [46 x i8] c"alias=usb:v0499p5007d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias218 = internal constant [46 x i8] c"alias=usb:v0499p5008d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias219 = internal constant [46 x i8] c"alias=usb:v0499p5009d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias220 = internal constant [46 x i8] c"alias=usb:v0499p500Ad*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias221 = internal constant [46 x i8] c"alias=usb:v0499p500Bd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias222 = internal constant [46 x i8] c"alias=usb:v0499p500Cd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias223 = internal constant [46 x i8] c"alias=usb:v0499p500Dd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias224 = internal constant [46 x i8] c"alias=usb:v0499p500Ed*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias225 = internal constant [46 x i8] c"alias=usb:v0499p500Fd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias226 = internal constant [46 x i8] c"alias=usb:v0499p7000d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias227 = internal constant [46 x i8] c"alias=usb:v0499p7010d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias228 = internal constant [44 x i8] c"alias=usb:v0499p*d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias229 = internal constant [46 x i8] c"alias=usb:v0582p0000d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias230 = internal constant [46 x i8] c"alias=usb:v0582p0002d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias231 = internal constant [46 x i8] c"alias=usb:v0582p0003d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [46 x i8] c"alias=usb:v0582p0004d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [46 x i8] c"alias=usb:v0582p0005d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias234 = internal constant [46 x i8] c"alias=usb:v0582p0007d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias235 = internal constant [46 x i8] c"alias=usb:v0582p0008d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [46 x i8] c"alias=usb:v0582p0009d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias237 = internal constant [46 x i8] c"alias=usb:v0582p000Bd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias238 = internal constant [46 x i8] c"alias=usb:v0582p000Cd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias239 = internal constant [46 x i8] c"alias=usb:v0582p0010d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias240 = internal constant [46 x i8] c"alias=usb:v0582p0012d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias241 = internal constant [46 x i8] c"alias=usb:v0582p0014d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias242 = internal constant [46 x i8] c"alias=usb:v0582p0016d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias243 = internal constant [46 x i8] c"alias=usb:v0582p001Bd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias244 = internal constant [46 x i8] c"alias=usb:v0582p001Dd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias245 = internal constant [46 x i8] c"alias=usb:v0582p0023d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias246 = internal constant [46 x i8] c"alias=usb:v0582p0025d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias247 = internal constant [46 x i8] c"alias=usb:v0582p0027d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias248 = internal constant [46 x i8] c"alias=usb:v0582p0029d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias249 = internal constant [47 x i8] c"alias=usb:v0582p002Bd*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [46 x i8] c"alias=usb:v0582p002Dd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias251 = internal constant [46 x i8] c"alias=usb:v0582p002Fd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [46 x i8] c"alias=usb:v0582p0033d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias253 = internal constant [46 x i8] c"alias=usb:v0582p0037d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias254 = internal constant [47 x i8] c"alias=usb:v0582p003Bd*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias255 = internal constant [46 x i8] c"alias=usb:v0582p0040d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias256 = internal constant [46 x i8] c"alias=usb:v0582p0042d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias257 = internal constant [46 x i8] c"alias=usb:v0582p0047d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias258 = internal constant [46 x i8] c"alias=usb:v0582p0048d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias259 = internal constant [46 x i8] c"alias=usb:v0582p004Cd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias260 = internal constant [46 x i8] c"alias=usb:v0582p004Dd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias261 = internal constant [46 x i8] c"alias=usb:v0582p0050d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias262 = internal constant [46 x i8] c"alias=usb:v0582p0052d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias263 = internal constant [46 x i8] c"alias=usb:v0582p0060d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias264 = internal constant [46 x i8] c"alias=usb:v0582p0064d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias265 = internal constant [46 x i8] c"alias=usb:v0582p0065d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias266 = internal constant [46 x i8] c"alias=usb:v0582p006Dd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias267 = internal constant [47 x i8] c"alias=usb:v0582p0074d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias268 = internal constant [46 x i8] c"alias=usb:v0582p0075d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias269 = internal constant [47 x i8] c"alias=usb:v0582p007Ad*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias270 = internal constant [46 x i8] c"alias=usb:v0582p0080d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias271 = internal constant [46 x i8] c"alias=usb:v0582p008Bd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias272 = internal constant [46 x i8] c"alias=usb:v0582p00A3d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias273 = internal constant [46 x i8] c"alias=usb:v0582p00C4d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias274 = internal constant [47 x i8] c"alias=usb:v0582p00E6d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias275 = internal constant [47 x i8] c"alias=usb:v0582p0108d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias276 = internal constant [46 x i8] c"alias=usb:v0582p0113d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias277 = internal constant [46 x i8] c"alias=usb:v0582p0120d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias278 = internal constant [46 x i8] c"alias=usb:v0582p012Fd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias279 = internal constant [46 x i8] c"alias=usb:v0582p0159d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias280 = internal constant [46 x i8] c"alias=usb:v0582p0044d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias281 = internal constant [46 x i8] c"alias=usb:v0582p007Dd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias282 = internal constant [46 x i8] c"alias=usb:v0582p008Dd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias283 = internal constant [44 x i8] c"alias=usb:v0582p*d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias284 = internal constant [47 x i8] c"alias=usb:v06F8pB000d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias285 = internal constant [47 x i8] c"alias=usb:v0763p1002d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias286 = internal constant [47 x i8] c"alias=usb:v0763p1011d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias287 = internal constant [47 x i8] c"alias=usb:v0763p1015d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias288 = internal constant [47 x i8] c"alias=usb:v0763p1021d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias289 = internal constant [48 x i8] c"alias=usb:v0763p1031d010dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias290 = internal constant [47 x i8] c"alias=usb:v0763p1033d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias291 = internal constant [47 x i8] c"alias=usb:v0763p1041d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias292 = internal constant [47 x i8] c"alias=usb:v0763p2001d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [47 x i8] c"alias=usb:v0763p2003d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [47 x i8] c"alias=usb:v0763p2008d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [47 x i8] c"alias=usb:v0763p200Dd*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias296 = internal constant [46 x i8] c"alias=usb:v0763p2019d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [47 x i8] c"alias=usb:v0763p2030d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [47 x i8] c"alias=usb:v0763p2031d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [47 x i8] c"alias=usb:v0763p2080d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias300 = internal constant [47 x i8] c"alias=usb:v0763p2081d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias301 = internal constant [46 x i8] c"alias=usb:v07CFp6801d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias302 = internal constant [46 x i8] c"alias=usb:v07CFp6802d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias303 = internal constant [47 x i8] c"alias=usb:v07FDp0001d*dc*dsc02dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias304 = internal constant [46 x i8] c"alias=usb:v086Ap0001d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [46 x i8] c"alias=usb:v086Ap0002d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [46 x i8] c"alias=usb:v086Ap0003d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [47 x i8] c"alias=usb:v0944p0200d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias308 = internal constant [47 x i8] c"alias=usb:v0944p0201d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias309 = internal constant [47 x i8] c"alias=usb:v0944p0204d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias310 = internal constant [46 x i8] c"alias=usb:v09E8p0062d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias311 = internal constant [46 x i8] c"alias=usb:v09E8p0021d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias312 = internal constant [47 x i8] c"alias=usb:v0A4Ep2040d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias313 = internal constant [47 x i8] c"alias=usb:v0A4Ep4040d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias314 = internal constant [47 x i8] c"alias=usb:v0CCDp0012d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias315 = internal constant [47 x i8] c"alias=usb:v0CCDp0013d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias316 = internal constant [47 x i8] c"alias=usb:v0CCDp0014d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias317 = internal constant [46 x i8] c"alias=usb:v0CCDp0035d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias318 = internal constant [47 x i8] c"alias=usb:v1235p0001d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias319 = internal constant [47 x i8] c"alias=usb:v1235p0002d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias320 = internal constant [46 x i8] c"alias=usb:v1235p000Ad*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias321 = internal constant [46 x i8] c"alias=usb:v1235p000Ed*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias322 = internal constant [46 x i8] c"alias=usb:v1235p0010d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias323 = internal constant [46 x i8] c"alias=usb:v1235p0018d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias324 = internal constant [47 x i8] c"alias=usb:v1235p4661d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias325 = internal constant [47 x i8] c"alias=usb:v133Ep0815d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias326 = internal constant [46 x i8] c"alias=usb:v17CCp1000d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias327 = internal constant [46 x i8] c"alias=usb:v17CCp1010d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias328 = internal constant [46 x i8] c"alias=usb:v17CCp1020d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias329 = internal constant [46 x i8] c"alias=usb:v1A86p752Dd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias330 = internal constant [46 x i8] c"alias=usb:v1F38p0001d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias331 = internal constant [46 x i8] c"alias=usb:v4752p0011d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias332 = internal constant [46 x i8] c"alias=usb:v7104p2202d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias333 = internal constant [46 x i8] c"alias=usb:v0DBAp1000d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias334 = internal constant [46 x i8] c"alias=usb:v0DBAp3000d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias335 = internal constant [47 x i8] c"alias=usb:v0644p8021d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias336 = internal constant [48 x i8] c"alias=usb:v154Ep500Ed*dc*dsc*dp*ic01isc01ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias337 = internal constant [46 x i8] c"alias=usb:v045Ep0283d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias338 = internal constant [46 x i8] c"alias=usb:v200Cp100Bd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias339 = internal constant [46 x i8] c"alias=usb:v1686p00DDd*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias340 = internal constant [42 x i8] c"alias=usb:v*p*d*dc*dsc*dp*ic01isc03ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias341 = internal constant [46 x i8] c"alias=usb:v19B5p0021d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias342 = internal constant [47 x i8] c"alias=usb:v07FDp0004d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias343 = internal constant [47 x i8] c"alias=usb:v2B73p0023d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias344 = internal constant [47 x i8] c"alias=usb:v2B73p0017d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias345 = internal constant [47 x i8] c"alias=usb:v2B73p000Ed*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias346 = internal constant [47 x i8] c"alias=usb:v2B73p000Dd*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias347 = internal constant [47 x i8] c"alias=usb:v2B73p001Ed*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias348 = internal constant [47 x i8] c"alias=usb:v2B73p000Ad*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias349 = internal constant [48 x i8] c"alias=usb:v534Dp2109d*dc*dsc*dp*ic01isc01ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias350 = internal constant [47 x i8] c"alias=usb:v08E4p017Fd*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias351 = internal constant [47 x i8] c"alias=usb:v2B73p001Bd*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias352 = internal constant [47 x i8] c"alias=usb:v08E4p0163d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias353 = internal constant [47 x i8] c"alias=usb:v2B73p0013d*dc*dsc*dp*icFFisc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias354 = internal constant [46 x i8] c"alias=usb:v1395p0300d*dc*dsc*dp*ic*isc*ip*in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias355 = internal constant [42 x i8] c"alias=usb:v*p*d*dc*dsc*dp*ic01isc01ip*in*\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [258 x ptr] [ptr @__UNIQUE_ID_alias104, ptr @__UNIQUE_ID_alias105, ptr @__UNIQUE_ID_alias106, ptr @__UNIQUE_ID_alias107, ptr @__UNIQUE_ID_alias108, ptr @__UNIQUE_ID_alias109, ptr @__UNIQUE_ID_alias110, ptr @__UNIQUE_ID_alias111, ptr @__UNIQUE_ID_alias112, ptr @__UNIQUE_ID_alias113, ptr @__UNIQUE_ID_alias114, ptr @__UNIQUE_ID_alias115, ptr @__UNIQUE_ID_alias116, ptr @__UNIQUE_ID_alias117, ptr @__UNIQUE_ID_alias118, ptr @__UNIQUE_ID_alias119, ptr @__UNIQUE_ID_alias120, ptr @__UNIQUE_ID_alias121, ptr @__UNIQUE_ID_alias122, ptr @__UNIQUE_ID_alias123, ptr @__UNIQUE_ID_alias124, ptr @__UNIQUE_ID_alias125, ptr @__UNIQUE_ID_alias126, ptr @__UNIQUE_ID_alias127, ptr @__UNIQUE_ID_alias128, ptr @__UNIQUE_ID_alias129, ptr @__UNIQUE_ID_alias130, ptr @__UNIQUE_ID_alias131, ptr @__UNIQUE_ID_alias132, ptr @__UNIQUE_ID_alias133, ptr @__UNIQUE_ID_alias134, ptr @__UNIQUE_ID_alias135, ptr @__UNIQUE_ID_alias136, ptr @__UNIQUE_ID_alias137, ptr @__UNIQUE_ID_alias138, ptr @__UNIQUE_ID_alias139, ptr @__UNIQUE_ID_alias140, ptr @__UNIQUE_ID_alias141, ptr @__UNIQUE_ID_alias142, ptr @__UNIQUE_ID_alias143, ptr @__UNIQUE_ID_alias144, ptr @__UNIQUE_ID_alias145, ptr @__UNIQUE_ID_alias146, ptr @__UNIQUE_ID_alias147, ptr @__UNIQUE_ID_alias148, ptr @__UNIQUE_ID_alias149, ptr @__UNIQUE_ID_alias150, ptr @__UNIQUE_ID_alias151, ptr @__UNIQUE_ID_alias152, ptr @__UNIQUE_ID_alias153, ptr @__UNIQUE_ID_alias154, ptr @__UNIQUE_ID_alias155, ptr @__UNIQUE_ID_alias156, ptr @__UNIQUE_ID_alias157, ptr @__UNIQUE_ID_alias158, ptr @__UNIQUE_ID_alias159, ptr @__UNIQUE_ID_alias160, ptr @__UNIQUE_ID_alias161, ptr @__UNIQUE_ID_alias162, ptr @__UNIQUE_ID_alias163, ptr @__UNIQUE_ID_alias164, ptr @__UNIQUE_ID_alias165, ptr @__UNIQUE_ID_alias166, ptr @__UNIQUE_ID_alias167, ptr @__UNIQUE_ID_alias168, ptr @__UNIQUE_ID_alias169, ptr @__UNIQUE_ID_alias170, ptr @__UNIQUE_ID_alias171, ptr @__UNIQUE_ID_alias172, ptr @__UNIQUE_ID_alias173, ptr @__UNIQUE_ID_alias174, ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_alias176, ptr @__UNIQUE_ID_alias177, ptr @__UNIQUE_ID_alias178, ptr @__UNIQUE_ID_alias179, ptr @__UNIQUE_ID_alias180, ptr @__UNIQUE_ID_alias181, ptr @__UNIQUE_ID_alias182, ptr @__UNIQUE_ID_alias183, ptr @__UNIQUE_ID_alias184, ptr @__UNIQUE_ID_alias185, ptr @__UNIQUE_ID_alias186, ptr @__UNIQUE_ID_alias187, ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_alias189, ptr @__UNIQUE_ID_alias190, ptr @__UNIQUE_ID_alias191, ptr @__UNIQUE_ID_alias192, ptr @__UNIQUE_ID_alias193, ptr @__UNIQUE_ID_alias194, ptr @__UNIQUE_ID_alias195, ptr @__UNIQUE_ID_alias196, ptr @__UNIQUE_ID_alias197, ptr @__UNIQUE_ID_alias198, ptr @__UNIQUE_ID_alias199, ptr @__UNIQUE_ID_alias200, ptr @__UNIQUE_ID_alias201, ptr @__UNIQUE_ID_alias202, ptr @__UNIQUE_ID_alias203, ptr @__UNIQUE_ID_alias204, ptr @__UNIQUE_ID_alias205, ptr @__UNIQUE_ID_alias206, ptr @__UNIQUE_ID_alias207, ptr @__UNIQUE_ID_alias208, ptr @__UNIQUE_ID_alias209, ptr @__UNIQUE_ID_alias210, ptr @__UNIQUE_ID_alias211, ptr @__UNIQUE_ID_alias212, ptr @__UNIQUE_ID_alias213, ptr @__UNIQUE_ID_alias214, ptr @__UNIQUE_ID_alias215, ptr @__UNIQUE_ID_alias216, ptr @__UNIQUE_ID_alias217, ptr @__UNIQUE_ID_alias218, ptr @__UNIQUE_ID_alias219, ptr @__UNIQUE_ID_alias220, ptr @__UNIQUE_ID_alias221, ptr @__UNIQUE_ID_alias222, ptr @__UNIQUE_ID_alias223, ptr @__UNIQUE_ID_alias224, ptr @__UNIQUE_ID_alias225, ptr @__UNIQUE_ID_alias226, ptr @__UNIQUE_ID_alias227, ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_alias229, ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_alias231, ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_alias237, ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_alias240, ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_alias244, ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_alias246, ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_alias248, ptr @__UNIQUE_ID_alias249, ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_alias251, ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_alias254, ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_alias256, ptr @__UNIQUE_ID_alias257, ptr @__UNIQUE_ID_alias258, ptr @__UNIQUE_ID_alias259, ptr @__UNIQUE_ID_alias260, ptr @__UNIQUE_ID_alias261, ptr @__UNIQUE_ID_alias262, ptr @__UNIQUE_ID_alias263, ptr @__UNIQUE_ID_alias264, ptr @__UNIQUE_ID_alias265, ptr @__UNIQUE_ID_alias266, ptr @__UNIQUE_ID_alias267, ptr @__UNIQUE_ID_alias268, ptr @__UNIQUE_ID_alias269, ptr @__UNIQUE_ID_alias270, ptr @__UNIQUE_ID_alias271, ptr @__UNIQUE_ID_alias272, ptr @__UNIQUE_ID_alias273, ptr @__UNIQUE_ID_alias274, ptr @__UNIQUE_ID_alias275, ptr @__UNIQUE_ID_alias276, ptr @__UNIQUE_ID_alias277, ptr @__UNIQUE_ID_alias278, ptr @__UNIQUE_ID_alias279, ptr @__UNIQUE_ID_alias280, ptr @__UNIQUE_ID_alias281, ptr @__UNIQUE_ID_alias282, ptr @__UNIQUE_ID_alias283, ptr @__UNIQUE_ID_alias284, ptr @__UNIQUE_ID_alias285, ptr @__UNIQUE_ID_alias286, ptr @__UNIQUE_ID_alias287, ptr @__UNIQUE_ID_alias288, ptr @__UNIQUE_ID_alias289, ptr @__UNIQUE_ID_alias290, ptr @__UNIQUE_ID_alias291, ptr @__UNIQUE_ID_alias292, ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_alias301, ptr @__UNIQUE_ID_alias302, ptr @__UNIQUE_ID_alias303, ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_alias308, ptr @__UNIQUE_ID_alias309, ptr @__UNIQUE_ID_alias310, ptr @__UNIQUE_ID_alias311, ptr @__UNIQUE_ID_alias312, ptr @__UNIQUE_ID_alias313, ptr @__UNIQUE_ID_alias314, ptr @__UNIQUE_ID_alias315, ptr @__UNIQUE_ID_alias316, ptr @__UNIQUE_ID_alias317, ptr @__UNIQUE_ID_alias318, ptr @__UNIQUE_ID_alias319, ptr @__UNIQUE_ID_alias320, ptr @__UNIQUE_ID_alias321, ptr @__UNIQUE_ID_alias322, ptr @__UNIQUE_ID_alias323, ptr @__UNIQUE_ID_alias324, ptr @__UNIQUE_ID_alias325, ptr @__UNIQUE_ID_alias326, ptr @__UNIQUE_ID_alias327, ptr @__UNIQUE_ID_alias328, ptr @__UNIQUE_ID_alias329, ptr @__UNIQUE_ID_alias330, ptr @__UNIQUE_ID_alias331, ptr @__UNIQUE_ID_alias332, ptr @__UNIQUE_ID_alias333, ptr @__UNIQUE_ID_alias334, ptr @__UNIQUE_ID_alias335, ptr @__UNIQUE_ID_alias336, ptr @__UNIQUE_ID_alias337, ptr @__UNIQUE_ID_alias338, ptr @__UNIQUE_ID_alias339, ptr @__UNIQUE_ID_alias340, ptr @__UNIQUE_ID_alias341, ptr @__UNIQUE_ID_alias342, ptr @__UNIQUE_ID_alias343, ptr @__UNIQUE_ID_alias344, ptr @__UNIQUE_ID_alias345, ptr @__UNIQUE_ID_alias346, ptr @__UNIQUE_ID_alias347, ptr @__UNIQUE_ID_alias348, ptr @__UNIQUE_ID_alias349, ptr @__UNIQUE_ID_alias350, ptr @__UNIQUE_ID_alias351, ptr @__UNIQUE_ID_alias352, ptr @__UNIQUE_ID_alias353, ptr @__UNIQUE_ID_alias354, ptr @__UNIQUE_ID_alias355, ptr @__UNIQUE_ID_depends103, ptr @__UNIQUE_ID_intree102, ptr @__UNIQUE_ID_name101, ptr @__UNIQUE_ID_vermagic100, ptr @_note_8, ptr @_note_9], section "llvm.metadata"

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
