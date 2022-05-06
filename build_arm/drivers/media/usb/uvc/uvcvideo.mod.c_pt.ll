; ModuleID = '/llk/IR/build_arm/drivers/media/usb/uvc/uvcvideo.mod.c_pt.bc'
source_filename = "drivers/media/usb/uvc/uvcvideo.mod.c"
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
@__UNIQUE_ID_name101 = internal constant [14 x i8] c"name=uvcvideo\00", section ".modinfo", align 1
@__this_module = dso_local local_unnamed_addr global %struct.module { i32 0, %struct.list_head zeroinitializer, [60 x i8] c"uvcvideo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.module_kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, %struct.mutex zeroinitializer, ptr null, i32 0, i32 0, ptr null, ptr null, i8 0, i8 0, i32 0, ptr null, ptr @init_module, [48 x i8] undef, %struct.module_layout zeroinitializer, %struct.module_layout zeroinitializer, %struct.mod_arch_specific zeroinitializer, i32 0, i32 0, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.mod_kallsyms zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr @cleanup_module, %struct.atomic_t zeroinitializer, [40 x i8] undef }, section ".gnu.linkonce.this_module", align 64
@__UNIQUE_ID_intree102 = internal constant [9 x i8] c"intree=Y\00", section ".modinfo", align 1
@__UNIQUE_ID_depends103 = internal constant [70 x i8] c"depends=videobuf2-v4l2,videodev,videobuf2-common,videobuf2-vmalloc,mc\00", section ".modinfo", align 1
@__UNIQUE_ID_alias104 = internal constant [49 x i8] c"alias=usb:v0416pA91Ad*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias105 = internal constant [49 x i8] c"alias=usb:v0458p706Ed*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias106 = internal constant [49 x i8] c"alias=usb:v045Ep00F8d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias107 = internal constant [49 x i8] c"alias=usb:v045Ep0721d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias108 = internal constant [49 x i8] c"alias=usb:v045Ep0723d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias109 = internal constant [49 x i8] c"alias=usb:v046Dp08C1d*dc*dsc*dp*icFFisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias110 = internal constant [49 x i8] c"alias=usb:v046Dp08C2d*dc*dsc*dp*icFFisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias111 = internal constant [49 x i8] c"alias=usb:v046Dp08C3d*dc*dsc*dp*icFFisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias112 = internal constant [49 x i8] c"alias=usb:v046Dp08C5d*dc*dsc*dp*icFFisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias113 = internal constant [49 x i8] c"alias=usb:v046Dp08C6d*dc*dsc*dp*icFFisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias114 = internal constant [49 x i8] c"alias=usb:v046Dp08C7d*dc*dsc*dp*icFFisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias115 = internal constant [49 x i8] c"alias=usb:v046Dp082Dd*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias116 = internal constant [49 x i8] c"alias=usb:v04F2pB071d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias117 = internal constant [49 x i8] c"alias=usb:v058Fp3820d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias118 = internal constant [49 x i8] c"alias=usb:v05A9p2640d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias119 = internal constant [49 x i8] c"alias=usb:v05A9p2641d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias120 = internal constant [49 x i8] c"alias=usb:v05A9p2643d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias121 = internal constant [49 x i8] c"alias=usb:v05A9p264Ad*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias122 = internal constant [49 x i8] c"alias=usb:v05A9p7670d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias123 = internal constant [49 x i8] c"alias=usb:v05ACp8501d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias124 = internal constant [49 x i8] c"alias=usb:v05ACp8600d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias125 = internal constant [49 x i8] c"alias=usb:v05C8p0403d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias126 = internal constant [49 x i8] c"alias=usb:v05E3p0505d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias127 = internal constant [49 x i8] c"alias=usb:v06F8p300Cd*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias128 = internal constant [49 x i8] c"alias=usb:v0AC8p332Dd*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias129 = internal constant [49 x i8] c"alias=usb:v0AC8p3410d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias130 = internal constant [49 x i8] c"alias=usb:v0AC8p3420d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias131 = internal constant [49 x i8] c"alias=usb:v0BD3p0555d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias132 = internal constant [49 x i8] c"alias=usb:v0E8Dp0004d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias133 = internal constant [49 x i8] c"alias=usb:v13D3p5103d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias134 = internal constant [49 x i8] c"alias=usb:v152Dp0310d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias135 = internal constant [49 x i8] c"alias=usb:v174Fp5212d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias136 = internal constant [49 x i8] c"alias=usb:v174Fp5931d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias137 = internal constant [49 x i8] c"alias=usb:v174Fp8A12d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias138 = internal constant [49 x i8] c"alias=usb:v174Fp8A31d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias139 = internal constant [49 x i8] c"alias=usb:v174Fp8A33d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias140 = internal constant [49 x i8] c"alias=usb:v174Fp8A34d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias141 = internal constant [49 x i8] c"alias=usb:v17DCp0202d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias142 = internal constant [49 x i8] c"alias=usb:v17EFp480Bd*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias143 = internal constant [49 x i8] c"alias=usb:v1871p0306d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias144 = internal constant [49 x i8] c"alias=usb:v1871p0516d*dc*dsc*dp*icFFisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias145 = internal constant [49 x i8] c"alias=usb:v18CDpCAFEd*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias146 = internal constant [49 x i8] c"alias=usb:v18ECp3188d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias147 = internal constant [49 x i8] c"alias=usb:v18ECp3288d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias148 = internal constant [49 x i8] c"alias=usb:v18ECp3290d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias149 = internal constant [49 x i8] c"alias=usb:v199Ep8102d*dc*dsc*dp*icFFisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias150 = internal constant [56 x i8] c"alias=usb:v19ABp1000d012[0-6]dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias151 = internal constant [56 x i8] c"alias=usb:v19ABp1000d01[0-1]*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias152 = internal constant [51 x i8] c"alias=usb:v19ABp1000d00*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias153 = internal constant [49 x i8] c"alias=usb:v1B3Bp2951d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias154 = internal constant [49 x i8] c"alias=usb:v1B3Fp2002d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias155 = internal constant [49 x i8] c"alias=usb:v1BCFp0B40d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias156 = internal constant [49 x i8] c"alias=usb:v1C4Fp3000d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias157 = internal constant [49 x i8] c"alias=usb:v2833p0201d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias158 = internal constant [49 x i8] c"alias=usb:v2833p0211d*dc*dsc*dp*icFFisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias159 = internal constant [49 x i8] c"alias=usb:v29FEp4D53d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias160 = internal constant [49 x i8] c"alias=usb:v8086p0B03d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias161 = internal constant [43 x i8] c"alias=usb:v*p*d*dc*dsc*dp*ic0Eisc01ip00in*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias162 = internal constant [43 x i8] c"alias=usb:v*p*d*dc*dsc*dp*ic0Eisc01ip01in*\00", section ".modinfo", align 1
@__UNIQUE_ID_srcversion163 = internal constant [35 x i8] c"srcversion=3424C6612575BC1B47E5820\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_alias104, ptr @__UNIQUE_ID_alias105, ptr @__UNIQUE_ID_alias106, ptr @__UNIQUE_ID_alias107, ptr @__UNIQUE_ID_alias108, ptr @__UNIQUE_ID_alias109, ptr @__UNIQUE_ID_alias110, ptr @__UNIQUE_ID_alias111, ptr @__UNIQUE_ID_alias112, ptr @__UNIQUE_ID_alias113, ptr @__UNIQUE_ID_alias114, ptr @__UNIQUE_ID_alias115, ptr @__UNIQUE_ID_alias116, ptr @__UNIQUE_ID_alias117, ptr @__UNIQUE_ID_alias118, ptr @__UNIQUE_ID_alias119, ptr @__UNIQUE_ID_alias120, ptr @__UNIQUE_ID_alias121, ptr @__UNIQUE_ID_alias122, ptr @__UNIQUE_ID_alias123, ptr @__UNIQUE_ID_alias124, ptr @__UNIQUE_ID_alias125, ptr @__UNIQUE_ID_alias126, ptr @__UNIQUE_ID_alias127, ptr @__UNIQUE_ID_alias128, ptr @__UNIQUE_ID_alias129, ptr @__UNIQUE_ID_alias130, ptr @__UNIQUE_ID_alias131, ptr @__UNIQUE_ID_alias132, ptr @__UNIQUE_ID_alias133, ptr @__UNIQUE_ID_alias134, ptr @__UNIQUE_ID_alias135, ptr @__UNIQUE_ID_alias136, ptr @__UNIQUE_ID_alias137, ptr @__UNIQUE_ID_alias138, ptr @__UNIQUE_ID_alias139, ptr @__UNIQUE_ID_alias140, ptr @__UNIQUE_ID_alias141, ptr @__UNIQUE_ID_alias142, ptr @__UNIQUE_ID_alias143, ptr @__UNIQUE_ID_alias144, ptr @__UNIQUE_ID_alias145, ptr @__UNIQUE_ID_alias146, ptr @__UNIQUE_ID_alias147, ptr @__UNIQUE_ID_alias148, ptr @__UNIQUE_ID_alias149, ptr @__UNIQUE_ID_alias150, ptr @__UNIQUE_ID_alias151, ptr @__UNIQUE_ID_alias152, ptr @__UNIQUE_ID_alias153, ptr @__UNIQUE_ID_alias154, ptr @__UNIQUE_ID_alias155, ptr @__UNIQUE_ID_alias156, ptr @__UNIQUE_ID_alias157, ptr @__UNIQUE_ID_alias158, ptr @__UNIQUE_ID_alias159, ptr @__UNIQUE_ID_alias160, ptr @__UNIQUE_ID_alias161, ptr @__UNIQUE_ID_alias162, ptr @__UNIQUE_ID_depends103, ptr @__UNIQUE_ID_intree102, ptr @__UNIQUE_ID_name101, ptr @__UNIQUE_ID_srcversion163, ptr @__UNIQUE_ID_vermagic100, ptr @_note_8, ptr @_note_9], section "llvm.metadata"

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
