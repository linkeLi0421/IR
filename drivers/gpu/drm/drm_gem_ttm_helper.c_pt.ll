; ModuleID = '/llk/IR/drivers/gpu/drm/drm_gem_ttm_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_gem_ttm_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_ttm_print_info:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_ttm_print_info\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_ttm_print_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_ttm_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_ttm_vmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_ttm_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_ttm_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_ttm_vunmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_ttm_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_ttm_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_ttm_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_ttm_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_gem_ttm_dumb_map_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_gem_ttm_dumb_map_offset\22\09\09\09\09\09"
module asm "__kstrtabns_drm_gem_ttm_dumb_map_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }

@drm_gem_ttm_print_info.plname = internal constant [23 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr null, ptr @.str.8, ptr @.str.9], align 4
@.str = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"vram\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cached\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"uncached\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wc\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"contig\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"pinned\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"topdown\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"%.*splacement=\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"\09\09\09\09\09X\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"%.*sbus.offset=%lx\0A\00", align 1
@__kstrtab_drm_gem_ttm_print_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_ttm_print_info = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_ttm_print_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_ttm_print_info to i32), ptr @__kstrtab_drm_gem_ttm_print_info, ptr @__kstrtabns_drm_gem_ttm_print_info }, section "___ksymtab+drm_gem_ttm_print_info", align 4
@__kstrtab_drm_gem_ttm_vmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_ttm_vmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_ttm_vmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_ttm_vmap to i32), ptr @__kstrtab_drm_gem_ttm_vmap, ptr @__kstrtabns_drm_gem_ttm_vmap }, section "___ksymtab+drm_gem_ttm_vmap", align 4
@__kstrtab_drm_gem_ttm_vunmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_ttm_vunmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_ttm_vunmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_ttm_vunmap to i32), ptr @__kstrtab_drm_gem_ttm_vunmap, ptr @__kstrtabns_drm_gem_ttm_vunmap }, section "___ksymtab+drm_gem_ttm_vunmap", align 4
@__kstrtab_drm_gem_ttm_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_ttm_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_ttm_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_ttm_mmap to i32), ptr @__kstrtab_drm_gem_ttm_mmap, ptr @__kstrtabns_drm_gem_ttm_mmap }, section "___ksymtab+drm_gem_ttm_mmap", align 4
@__kstrtab_drm_gem_ttm_dumb_map_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_gem_ttm_dumb_map_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_gem_ttm_dumb_map_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_gem_ttm_dumb_map_offset to i32), ptr @__kstrtab_drm_gem_ttm_dumb_map_offset, ptr @__kstrtabns_drm_gem_ttm_dumb_map_offset }, section "___ksymtab+drm_gem_ttm_dumb_map_offset", align 4
@__UNIQUE_ID_description246 = internal constant [32 x i8] c"description=DRM gem ttm helpers\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_license247, ptr @__ksymtab_drm_gem_ttm_dumb_map_offset, ptr @__ksymtab_drm_gem_ttm_mmap, ptr @__ksymtab_drm_gem_ttm_print_info, ptr @__ksymtab_drm_gem_ttm_vmap, ptr @__ksymtab_drm_gem_ttm_vunmap], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_gem_ttm_print_info(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %1, ptr noundef nonnull @.str.11) #2
  %4 = getelementptr inbounds %struct.ttm_buffer_object, ptr %2, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void @drm_print_bits(ptr noundef %0, i32 noundef %7, ptr noundef nonnull @drm_gem_ttm_print_info.plname, i32 noundef 23) #2
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.12) #2
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.ttm_resource, ptr %8, i32 0, i32 4, i32 2
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ttm_resource, ptr %8, i32 0, i32 4, i32 1
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %1, ptr noundef nonnull @.str.11, i32 noundef %14) #2
  br label %15

15:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_print_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_gem_ttm_vmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @ttm_bo_vmap(ptr noundef %0, ptr noundef %1) #2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_vmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_gem_ttm_vunmap(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ttm_bo_vunmap(ptr noundef %0, ptr noundef %1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_gem_ttm_mmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @ttm_bo_mmap_obj(ptr noundef %1, ptr noundef %0) #2
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #2, !srcloc !10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #2, !srcloc !11
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %15, label %13, !prof !12

13:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #2
  br label %15

14:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !13
  tail call void @drm_gem_object_free(ptr noundef nonnull %0) #2
  br label %15

15:                                               ; preds = %14, %13, %11, %5, %2
  %16 = phi i32 [ %3, %2 ], [ 0, %5 ], [ 0, %11 ], [ 0, %13 ], [ 0, %14 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_mmap_obj(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_gem_ttm_dumb_map_offset(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @drm_gem_object_lookup(ptr noundef %0, i32 noundef %2) #2
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 4, i32 1, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = shl i64 %9, 12
  store i64 %10, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #2, !srcloc !10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #2, !srcloc !11
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = icmp sgt i32 %12, 0
  br i1 %15, label %18, label %16, !prof !12

16:                                               ; preds = %14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #2
  br label %18

17:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !13
  tail call void @drm_gem_object_free(ptr noundef nonnull %5) #2
  br label %18

18:                                               ; preds = %17, %16, %14, %4
  %19 = phi i32 [ -2, %4 ], [ 0, %14 ], [ 0, %16 ], [ 0, %17 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2148146641}
!10 = !{i64 543575, i64 2148033546, i64 2148033572, i64 2148033619, i64 2148033641, i64 2148033669, i64 2148033689}
!11 = !{i64 2148048776, i64 2148048808, i64 2148048837, i64 2148048871, i64 2148048902, i64 2148048925}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148995704}
