; ModuleID = '/llk/IR/build_arm/drivers/media/platform/rcar-vin/rcar-vin.mod.c_pt.bc'
source_filename = "drivers/media/platform/rcar-vin/rcar-vin.mod.c"
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
@__UNIQUE_ID_name101 = internal constant [14 x i8] c"name=rcar_vin\00", section ".modinfo", align 1
@__this_module = dso_local local_unnamed_addr global %struct.module { i32 0, %struct.list_head zeroinitializer, [60 x i8] c"rcar_vin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.module_kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, %struct.mutex zeroinitializer, ptr null, i32 0, i32 0, ptr null, ptr null, i8 0, i8 0, i32 0, ptr null, ptr @init_module, [48 x i8] undef, %struct.module_layout zeroinitializer, %struct.module_layout zeroinitializer, %struct.mod_arch_specific zeroinitializer, i32 0, i32 0, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.mod_kallsyms zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr @cleanup_module, %struct.atomic_t zeroinitializer, [40 x i8] undef }, section ".gnu.linkonce.this_module", align 64
@__UNIQUE_ID_intree102 = internal constant [9 x i8] c"intree=Y\00", section ".modinfo", align 1
@__UNIQUE_ID_depends103 = internal constant [96 x i8] c"depends=videobuf2-v4l2,videodev,mc,v4l2-fwnode,v4l2-async,videobuf2-common,videobuf2-dma-contig\00", section ".modinfo", align 1
@__UNIQUE_ID_alias104 = internal constant [35 x i8] c"alias=of:N*T*Crenesas,vin-r8a774a1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias105 = internal constant [37 x i8] c"alias=of:N*T*Crenesas,vin-r8a774a1C*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias106 = internal constant [35 x i8] c"alias=of:N*T*Crenesas,vin-r8a774b1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias107 = internal constant [37 x i8] c"alias=of:N*T*Crenesas,vin-r8a774b1C*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias108 = internal constant [35 x i8] c"alias=of:N*T*Crenesas,vin-r8a774c0\00", section ".modinfo", align 1
@__UNIQUE_ID_alias109 = internal constant [37 x i8] c"alias=of:N*T*Crenesas,vin-r8a774c0C*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias110 = internal constant [35 x i8] c"alias=of:N*T*Crenesas,vin-r8a774e1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias111 = internal constant [37 x i8] c"alias=of:N*T*Crenesas,vin-r8a774e1C*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias112 = internal constant [34 x i8] c"alias=of:N*T*Crenesas,vin-r8a7778\00", section ".modinfo", align 1
@__UNIQUE_ID_alias113 = internal constant [36 x i8] c"alias=of:N*T*Crenesas,vin-r8a7778C*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias114 = internal constant [34 x i8] c"alias=of:N*T*Crenesas,vin-r8a7779\00", section ".modinfo", align 1
@__UNIQUE_ID_alias115 = internal constant [36 x i8] c"alias=of:N*T*Crenesas,vin-r8a7779C*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias116 = internal constant [36 x i8] c"alias=of:N*T*Crenesas,rcar-gen2-vin\00", section ".modinfo", align 1
@__UNIQUE_ID_alias117 = internal constant [38 x i8] c"alias=of:N*T*Crenesas,rcar-gen2-vinC*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias118 = internal constant [34 x i8] c"alias=of:N*T*Crenesas,vin-r8a7795\00", section ".modinfo", align 1
@__UNIQUE_ID_alias119 = internal constant [36 x i8] c"alias=of:N*T*Crenesas,vin-r8a7795C*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias120 = internal constant [34 x i8] c"alias=of:N*T*Crenesas,vin-r8a7796\00", section ".modinfo", align 1
@__UNIQUE_ID_alias121 = internal constant [36 x i8] c"alias=of:N*T*Crenesas,vin-r8a7796C*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias122 = internal constant [35 x i8] c"alias=of:N*T*Crenesas,vin-r8a77961\00", section ".modinfo", align 1
@__UNIQUE_ID_alias123 = internal constant [37 x i8] c"alias=of:N*T*Crenesas,vin-r8a77961C*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias124 = internal constant [35 x i8] c"alias=of:N*T*Crenesas,vin-r8a77965\00", section ".modinfo", align 1
@__UNIQUE_ID_alias125 = internal constant [37 x i8] c"alias=of:N*T*Crenesas,vin-r8a77965C*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias126 = internal constant [35 x i8] c"alias=of:N*T*Crenesas,vin-r8a77970\00", section ".modinfo", align 1
@__UNIQUE_ID_alias127 = internal constant [37 x i8] c"alias=of:N*T*Crenesas,vin-r8a77970C*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias128 = internal constant [35 x i8] c"alias=of:N*T*Crenesas,vin-r8a77980\00", section ".modinfo", align 1
@__UNIQUE_ID_alias129 = internal constant [37 x i8] c"alias=of:N*T*Crenesas,vin-r8a77980C*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias130 = internal constant [35 x i8] c"alias=of:N*T*Crenesas,vin-r8a77990\00", section ".modinfo", align 1
@__UNIQUE_ID_alias131 = internal constant [37 x i8] c"alias=of:N*T*Crenesas,vin-r8a77990C*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias132 = internal constant [35 x i8] c"alias=of:N*T*Crenesas,vin-r8a77995\00", section ".modinfo", align 1
@__UNIQUE_ID_alias133 = internal constant [37 x i8] c"alias=of:N*T*Crenesas,vin-r8a77995C*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias134 = internal constant [35 x i8] c"alias=of:N*T*Crenesas,vin-r8a779a0\00", section ".modinfo", align 1
@__UNIQUE_ID_alias135 = internal constant [37 x i8] c"alias=of:N*T*Crenesas,vin-r8a779a0C*\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias104, ptr @__UNIQUE_ID_alias105, ptr @__UNIQUE_ID_alias106, ptr @__UNIQUE_ID_alias107, ptr @__UNIQUE_ID_alias108, ptr @__UNIQUE_ID_alias109, ptr @__UNIQUE_ID_alias110, ptr @__UNIQUE_ID_alias111, ptr @__UNIQUE_ID_alias112, ptr @__UNIQUE_ID_alias113, ptr @__UNIQUE_ID_alias114, ptr @__UNIQUE_ID_alias115, ptr @__UNIQUE_ID_alias116, ptr @__UNIQUE_ID_alias117, ptr @__UNIQUE_ID_alias118, ptr @__UNIQUE_ID_alias119, ptr @__UNIQUE_ID_alias120, ptr @__UNIQUE_ID_alias121, ptr @__UNIQUE_ID_alias122, ptr @__UNIQUE_ID_alias123, ptr @__UNIQUE_ID_alias124, ptr @__UNIQUE_ID_alias125, ptr @__UNIQUE_ID_alias126, ptr @__UNIQUE_ID_alias127, ptr @__UNIQUE_ID_alias128, ptr @__UNIQUE_ID_alias129, ptr @__UNIQUE_ID_alias130, ptr @__UNIQUE_ID_alias131, ptr @__UNIQUE_ID_alias132, ptr @__UNIQUE_ID_alias133, ptr @__UNIQUE_ID_alias134, ptr @__UNIQUE_ID_alias135, ptr @__UNIQUE_ID_depends103, ptr @__UNIQUE_ID_intree102, ptr @__UNIQUE_ID_name101, ptr @__UNIQUE_ID_vermagic100, ptr @_note_8, ptr @_note_9], section "llvm.metadata"

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