; ModuleID = '/llk/IR/drivers/remoteproc/remoteproc_coredump.c_pt.bc'
source_filename = "../drivers/remoteproc/remoteproc_coredump.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_coredump_add_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_coredump_add_segment\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_coredump_add_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_coredump_add_custom_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_coredump_add_custom_segment\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_coredump_add_custom_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_coredump_set_elf_info:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_coredump_set_elf_info\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_coredump_set_elf_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_coredump_using_sections:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_coredump_using_sections\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_coredump_using_sections:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rproc_dump_segment = type { %struct.list_head, i32, i32, ptr, ptr, i64 }
%struct.rproc_coredump_state = type { ptr, ptr, %struct.completion }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf64_phdr = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.elf64_shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_rproc_coredump_add_segment = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_coredump_add_segment = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_coredump_add_segment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_coredump_add_segment to i32), ptr @__kstrtab_rproc_coredump_add_segment, ptr @__kstrtabns_rproc_coredump_add_segment }, section "___ksymtab+rproc_coredump_add_segment", align 4
@__kstrtab_rproc_coredump_add_custom_segment = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_coredump_add_custom_segment = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_coredump_add_custom_segment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_coredump_add_custom_segment to i32), ptr @__kstrtab_rproc_coredump_add_custom_segment, ptr @__kstrtabns_rproc_coredump_add_custom_segment }, section "___ksymtab+rproc_coredump_add_custom_segment", align 4
@__kstrtab_rproc_coredump_set_elf_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_coredump_set_elf_info = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_coredump_set_elf_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_coredump_set_elf_info to i32), ptr @__kstrtab_rproc_coredump_set_elf_info, ptr @__kstrtabns_rproc_coredump_set_elf_info }, section "___ksymtab+rproc_coredump_set_elf_info", align 4
@.str = private unnamed_addr constant [22 x i8] c"Elf class is not set\0A\00", align 1
@__kstrtab_rproc_coredump_using_sections = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_coredump_using_sections = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_coredump_using_sections = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_coredump_using_sections to i32), ptr @__kstrtab_rproc_coredump_using_sections, ptr @__kstrtabns_rproc_coredump_using_sections }, section "___ksymtab+rproc_coredump_using_sections", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"invalid copy request for segment %pad with offset %zu and size %zu)\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Ramdump done, %lld bytes read\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_rproc_coredump_add_custom_segment, ptr @__ksymtab_rproc_coredump_add_segment, ptr @__ksymtab_rproc_coredump_set_elf_info, ptr @__ksymtab_rproc_coredump_using_sections], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_coredump_cleanup(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kfree(ptr noundef %6) #12
  %11 = icmp eq ptr %7, %2
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_coredump_add_segment(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 32) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rproc_dump_segment, ptr %5, i32 0, i32 1
  store i32 %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.rproc_dump_segment, ptr %5, i32 0, i32 2
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 31
  %11 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 31, i32 1
  %12 = load ptr, ptr %11, align 4
  store ptr %5, ptr %11, align 4
  store ptr %10, ptr %5, align 8
  %13 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %5, ptr %12, align 4
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i32 [ 0, %7 ], [ -12, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_coredump_add_custom_segment(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 32) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rproc_dump_segment, ptr %7, i32 0, i32 1
  store i32 %1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.rproc_dump_segment, ptr %7, i32 0, i32 2
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rproc_dump_segment, ptr %7, i32 0, i32 3
  store ptr %4, ptr %12, align 8
  %13 = getelementptr inbounds %struct.rproc_dump_segment, ptr %7, i32 0, i32 4
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 31
  %15 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 31, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %7, ptr %15, align 4
  store ptr %14, ptr %7, align 8
  %17 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %7, ptr %16, align 4
  br label %18

18:                                               ; preds = %9, %5
  %19 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @rproc_coredump_set_elf_info(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #3 {
  %4 = add i8 %1, -3
  %5 = icmp ult i8 %4, -2
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 33
  store i8 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 34
  store i16 %2, ptr %8, align 2
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_coredump(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.rproc_coredump_state, align 4
  %4 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 33
  %5 = load i8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 31
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  %11 = icmp eq i32 %7, 0
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %172, label %13

13:                                               ; preds = %1
  %14 = icmp eq i8 %5, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str) #14
  br label %172

17:                                               ; preds = %13
  %18 = icmp eq i8 %5, 1
  %19 = select i1 %18, i32 52, i32 64
  %20 = select i1 %18, i32 32, i32 56
  %21 = icmp eq i32 %7, 1
  br label %22

22:                                               ; preds = %31, %17
  %23 = phi ptr [ %9, %17 ], [ %34, %31 ]
  %24 = phi i32 [ %19, %17 ], [ %32, %31 ]
  %25 = phi i32 [ 0, %17 ], [ %33, %31 ]
  %26 = add i32 %24, %20
  br i1 %21, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.rproc_dump_segment, ptr %23, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %26
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i32 [ %30, %27 ], [ %26, %22 ]
  %33 = add i32 %25, 1
  %34 = load ptr, ptr %23, align 8
  %35 = icmp eq ptr %34, %8
  br i1 %35, label %36, label %22

36:                                               ; preds = %31
  %37 = trunc i32 %33 to i16
  %38 = tail call noalias ptr @vmalloc(i32 noundef %32) #15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %172, label %40

40:                                               ; preds = %36
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(52) %38, i8 0, i32 %19, i1 false)
  store i32 1179403647, ptr %38, align 4
  %41 = getelementptr [16 x i8], ptr %38, i32 0, i32 4
  store i8 %5, ptr %41, align 4
  %42 = getelementptr [16 x i8], ptr %38, i32 0, i32 5
  store i8 1, ptr %42, align 1
  %43 = getelementptr [16 x i8], ptr %38, i32 0, i32 6
  store i8 1, ptr %43, align 2
  %44 = getelementptr [16 x i8], ptr %38, i32 0, i32 7
  store i8 0, ptr %44, align 1
  br i1 %18, label %45, label %60

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.elf32_hdr, ptr %38, i32 0, i32 1
  store i16 4, ptr %46, align 4
  %47 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 34
  %48 = load i16, ptr %47, align 2
  %49 = getelementptr inbounds %struct.elf64_hdr, ptr %38, i32 0, i32 2
  store i16 %48, ptr %49, align 2
  %50 = getelementptr inbounds %struct.elf64_hdr, ptr %38, i32 0, i32 3
  store i32 1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 16
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds %struct.elf32_hdr, ptr %38, i32 0, i32 4
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.elf32_hdr, ptr %38, i32 0, i32 5
  store i32 %19, ptr %55, align 4
  %56 = trunc i32 %19 to i16
  %57 = getelementptr inbounds %struct.elf32_hdr, ptr %38, i32 0, i32 8
  store i16 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.elf32_hdr, ptr %38, i32 0, i32 9
  store i16 32, ptr %58, align 2
  %59 = getelementptr inbounds %struct.elf32_hdr, ptr %38, i32 0, i32 10
  store i16 %37, ptr %59, align 4
  br label %75

60:                                               ; preds = %40
  %61 = getelementptr inbounds %struct.elf64_hdr, ptr %38, i32 0, i32 1
  store i16 4, ptr %61, align 8
  %62 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 34
  %63 = load i16, ptr %62, align 2
  %64 = getelementptr inbounds %struct.elf64_hdr, ptr %38, i32 0, i32 2
  store i16 %63, ptr %64, align 2
  %65 = getelementptr inbounds %struct.elf64_hdr, ptr %38, i32 0, i32 3
  store i32 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 16
  %67 = load i64, ptr %66, align 8
  %68 = getelementptr inbounds %struct.elf64_hdr, ptr %38, i32 0, i32 4
  store i64 %67, ptr %68, align 8
  %69 = zext i32 %19 to i64
  %70 = getelementptr inbounds %struct.elf64_hdr, ptr %38, i32 0, i32 5
  store i64 %69, ptr %70, align 8
  %71 = trunc i32 %19 to i16
  %72 = getelementptr inbounds %struct.elf64_hdr, ptr %38, i32 0, i32 8
  store i16 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.elf64_hdr, ptr %38, i32 0, i32 9
  store i16 56, ptr %73, align 2
  %74 = getelementptr inbounds %struct.elf64_hdr, ptr %38, i32 0, i32 10
  store i16 %37, ptr %74, align 8
  br label %75

75:                                               ; preds = %60, %45
  %76 = phi i32 [ 32, %45 ], [ 56, %60 ]
  %77 = load ptr, ptr %8, align 8
  %78 = icmp eq ptr %77, %8
  br i1 %78, label %163, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.elf32_hdr, ptr %38, i32 0, i32 10
  %81 = getelementptr inbounds %struct.elf64_hdr, ptr %38, i32 0, i32 10
  %82 = select i1 %18, ptr %80, ptr %81
  %83 = load i16, ptr %82, align 4
  %84 = zext i16 %83 to i32
  %85 = mul nuw nsw i32 %76, %84
  %86 = add nuw nsw i32 %85, %19
  %87 = getelementptr i8, ptr %38, i32 %19
  %88 = icmp eq i32 %7, 1
  %89 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  br label %90

90:                                               ; preds = %157, %79
  %91 = phi ptr [ %77, %79 ], [ %161, %157 ]
  %92 = phi ptr [ %87, %79 ], [ %160, %157 ]
  %93 = phi i32 [ %86, %79 ], [ %159, %157 ]
  call void @llvm.memset.p0.i32(ptr noundef align 1 %92, i8 0, i32 %76, i1 false)
  br i1 %18, label %94, label %108

94:                                               ; preds = %90
  store i32 1, ptr %92, align 4
  %95 = getelementptr inbounds %struct.elf32_phdr, ptr %92, i32 0, i32 1
  store i32 %93, ptr %95, align 4
  %96 = getelementptr inbounds %struct.rproc_dump_segment, ptr %91, i32 0, i32 1
  %97 = load i32, ptr %96, align 8
  %98 = getelementptr inbounds %struct.elf32_phdr, ptr %92, i32 0, i32 2
  store i32 %97, ptr %98, align 4
  %99 = load i32, ptr %96, align 8
  %100 = getelementptr inbounds %struct.elf32_phdr, ptr %92, i32 0, i32 3
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.rproc_dump_segment, ptr %91, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.elf32_phdr, ptr %92, i32 0, i32 4
  store i32 %102, ptr %103, align 4
  %104 = load i32, ptr %101, align 4
  %105 = getelementptr inbounds %struct.elf32_phdr, ptr %92, i32 0, i32 5
  store i32 %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.elf32_phdr, ptr %92, i32 0, i32 6
  store i32 7, ptr %106, align 4
  %107 = getelementptr inbounds %struct.elf32_phdr, ptr %92, i32 0, i32 7
  store i32 0, ptr %107, align 4
  br label %127

108:                                              ; preds = %90
  store i32 1, ptr %92, align 8
  %109 = zext i32 %93 to i64
  %110 = getelementptr inbounds %struct.elf64_phdr, ptr %92, i32 0, i32 2
  store i64 %109, ptr %110, align 8
  %111 = getelementptr inbounds %struct.rproc_dump_segment, ptr %91, i32 0, i32 1
  %112 = load i32, ptr %111, align 8
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.elf64_phdr, ptr %92, i32 0, i32 3
  store i64 %113, ptr %114, align 8
  %115 = load i32, ptr %111, align 8
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.elf64_phdr, ptr %92, i32 0, i32 4
  store i64 %116, ptr %117, align 8
  %118 = getelementptr inbounds %struct.rproc_dump_segment, ptr %91, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.elf64_phdr, ptr %92, i32 0, i32 5
  store i64 %120, ptr %121, align 8
  %122 = load i32, ptr %118, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.elf64_phdr, ptr %92, i32 0, i32 6
  store i64 %123, ptr %124, align 8
  %125 = getelementptr inbounds %struct.elf64_phdr, ptr %92, i32 0, i32 1
  store i32 7, ptr %125, align 4
  %126 = getelementptr inbounds %struct.elf64_phdr, ptr %92, i32 0, i32 7
  store i64 0, ptr %126, align 8
  br label %127

127:                                              ; preds = %108, %94
  %128 = phi ptr [ %101, %94 ], [ %118, %108 ]
  %129 = phi ptr [ %96, %94 ], [ %111, %108 ]
  br i1 %88, label %130, label %149

130:                                              ; preds = %127
  %131 = getelementptr i8, ptr %38, i32 %93
  %132 = load i32, ptr %128, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  store i8 0, ptr %2, align 1
  %133 = getelementptr inbounds %struct.rproc_dump_segment, ptr %91, i32 0, i32 4
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %130
  call void %134(ptr noundef %0, ptr noundef %91, ptr noundef %131, i32 noundef 0, i32 noundef %132) #12
  br label %148

137:                                              ; preds = %130
  %138 = load i32, ptr %129, align 8
  %139 = zext i32 %138 to i64
  %140 = call ptr @rproc_da_to_va(ptr noundef %0, i64 noundef %139, i32 noundef %132, ptr noundef nonnull %2) #12
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.3, ptr noundef %129, i32 noundef 0, i32 noundef %132) #14
  call void @llvm.memset.p0.i32(ptr align 1 %131, i8 -1, i32 %132, i1 false) #12
  br label %148

143:                                              ; preds = %137
  %144 = load i8, ptr %2, align 1, !range !9
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  call void @mmiocpy(ptr noundef %131, ptr noundef nonnull %140, i32 noundef %132) #12
  br label %148

147:                                              ; preds = %143
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %131, ptr nonnull align 1 %140, i32 %132, i1 false) #12
  br label %148

148:                                              ; preds = %147, %146, %142, %136
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  br label %149

149:                                              ; preds = %148, %127
  br i1 %18, label %150, label %153

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.elf32_phdr, ptr %92, i32 0, i32 4
  %152 = load i32, ptr %151, align 4
  br label %157

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.elf64_phdr, ptr %92, i32 0, i32 5
  %155 = load i64, ptr %154, align 8
  %156 = trunc i64 %155 to i32
  br label %157

157:                                              ; preds = %153, %150
  %158 = phi i32 [ %152, %150 ], [ %156, %153 ]
  %159 = add i32 %158, %93
  %160 = getelementptr i8, ptr %92, i32 %76
  %161 = load ptr, ptr %91, align 8
  %162 = icmp eq ptr %161, %8
  br i1 %162, label %163, label %90

163:                                              ; preds = %157, %75
  %164 = icmp eq i32 %7, 1
  br i1 %164, label %165, label %167

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  call void @dev_coredumpv(ptr noundef %166, ptr noundef nonnull %38, i32 noundef %32, i32 noundef 3264) #12
  br label %172

167:                                              ; preds = %163
  store ptr %0, ptr %3, align 4
  %168 = getelementptr inbounds %struct.rproc_coredump_state, ptr %3, i32 0, i32 1
  store ptr %38, ptr %168, align 4
  %169 = getelementptr inbounds %struct.rproc_coredump_state, ptr %3, i32 0, i32 2
  store i32 0, ptr %169, align 4
  %170 = getelementptr inbounds %struct.rproc_coredump_state, ptr %3, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %170, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #12
  %171 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  call void @dev_coredumpm(ptr noundef %171, ptr noundef null, ptr noundef nonnull %3, i32 noundef %32, i32 noundef 3264, ptr noundef nonnull @rproc_coredump_read, ptr noundef nonnull @rproc_coredump_free) #12
  call void @wait_for_completion(ptr noundef %169) #12
  br label %172

172:                                              ; preds = %167, %165, %36, %15, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpm(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_coredump_read(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i64 %1, ptr %7, align 8
  %8 = load ptr, ptr %3, align 4
  %9 = zext i32 %4 to i64
  %10 = icmp sgt i64 %9, %1
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %69, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.rproc, ptr %8, i32 0, i32 31
  %15 = getelementptr inbounds %struct.rproc, ptr %8, i32 0, i32 6
  br label %20

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.rproc_coredump_state, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @memory_read_from_buffer(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %7, ptr noundef %18, i32 noundef %4) #12
  br label %72

20:                                               ; preds = %63, %13
  %21 = phi i64 [ %1, %13 ], [ %65, %63 ]
  %22 = phi ptr [ %0, %13 ], [ %66, %63 ]
  %23 = phi i32 [ %2, %13 ], [ %67, %63 ]
  %24 = load ptr, ptr %14, align 4
  %25 = icmp eq ptr %24, %14
  br i1 %25, label %41, label %26

26:                                               ; preds = %20
  %27 = sub i64 %21, %9
  br label %28

28:                                               ; preds = %35, %26
  %29 = phi ptr [ %37, %35 ], [ %24, %26 ]
  %30 = phi i64 [ %36, %35 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.rproc_dump_segment, ptr %29, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = zext i32 %32 to i64
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = sub i64 %30, %33
  %37 = load ptr, ptr %29, align 4
  %38 = icmp eq ptr %37, %14
  br i1 %38, label %41, label %28

39:                                               ; preds = %28
  %40 = icmp eq ptr %29, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %39, %35, %20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.5, i64 noundef %21) #14
  br label %69

42:                                               ; preds = %39
  %43 = trunc i64 %30 to i32
  %44 = sub i32 %32, %43
  %45 = call i32 @llvm.umin.i32(i32 %23, i32 %44)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 0, ptr %6, align 1
  %46 = getelementptr inbounds %struct.rproc_dump_segment, ptr %29, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  call void %47(ptr noundef %8, ptr noundef nonnull %29, ptr noundef %22, i32 noundef %43, i32 noundef %45) #12
  br label %63

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.rproc_dump_segment, ptr %29, i32 0, i32 1
  %52 = load i32, ptr %51, align 8
  %53 = add i32 %52, %43
  %54 = zext i32 %53 to i64
  %55 = call ptr @rproc_da_to_va(ptr noundef %8, i64 noundef %54, i32 noundef %45, ptr noundef nonnull %6) #12
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef %51, i32 noundef %43, i32 noundef %45) #14
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 -1, i32 %45, i1 false) #12
  br label %63

58:                                               ; preds = %50
  %59 = load i8, ptr %6, align 1, !range !9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  call void @mmiocpy(ptr noundef %22, ptr noundef nonnull %55, i32 noundef %45) #12
  br label %63

62:                                               ; preds = %58
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %22, ptr nonnull align 1 %55, i32 %45, i1 false) #12
  br label %63

63:                                               ; preds = %62, %61, %57, %49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  %64 = sext i32 %45 to i64
  %65 = add i64 %21, %64
  store i64 %65, ptr %7, align 8
  %66 = getelementptr i8, ptr %22, i32 %45
  %67 = sub i32 %23, %45
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %20

69:                                               ; preds = %63, %41, %11
  %70 = phi i32 [ %23, %41 ], [ 0, %11 ], [ 0, %63 ]
  %71 = sub i32 %2, %70
  br label %72

72:                                               ; preds = %69, %16
  %73 = phi i32 [ %19, %16 ], [ %71, %69 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rproc_coredump_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rproc_coredump_state, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @vfree(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.rproc_coredump_state, ptr %0, i32 0, i32 2
  tail call void @complete(ptr noundef %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_coredump_using_sections(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.rproc_coredump_state, align 4
  %4 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 33
  %5 = load i8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 31
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  %11 = icmp eq i32 %7, 0
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %271, label %13

13:                                               ; preds = %1
  %14 = icmp eq i8 %5, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str) #14
  br label %271

17:                                               ; preds = %13
  %18 = icmp eq i8 %5, 1
  %19 = select i1 %18, i32 52, i32 64
  %20 = select i1 %18, i32 40, i32 64
  %21 = shl nuw nsw i32 %20, 1
  %22 = add nuw nsw i32 %21, %19
  %23 = icmp eq i32 %7, 1
  br label %24

24:                                               ; preds = %39, %17
  %25 = phi ptr [ %9, %17 ], [ %42, %39 ]
  %26 = phi i32 [ %22, %17 ], [ %40, %39 ]
  %27 = phi i32 [ 9, %17 ], [ %34, %39 ]
  %28 = phi i32 [ 2, %17 ], [ %41, %39 ]
  %29 = add i32 %26, %20
  %30 = getelementptr inbounds %struct.rproc_dump_segment, ptr %25, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = tail call i32 @strlen(ptr noundef %31)
  %33 = add i32 %27, 1
  %34 = add i32 %33, %32
  br i1 %23, label %35, label %39

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.rproc_dump_segment, ptr %25, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %29
  br label %39

39:                                               ; preds = %35, %24
  %40 = phi i32 [ %38, %35 ], [ %29, %24 ]
  %41 = add i32 %28, 1
  %42 = load ptr, ptr %25, align 8
  %43 = icmp eq ptr %42, %8
  br i1 %43, label %44, label %24

44:                                               ; preds = %39
  %45 = trunc i32 %41 to i16
  %46 = add i32 %40, %34
  %47 = tail call noalias ptr @vmalloc(i32 noundef %46) #15
  %48 = icmp eq ptr %47, null
  br i1 %48, label %271, label %49

49:                                               ; preds = %44
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(52) %47, i8 0, i32 %19, i1 false)
  store i32 1179403647, ptr %47, align 4
  %50 = getelementptr [16 x i8], ptr %47, i32 0, i32 4
  store i8 %5, ptr %50, align 4
  %51 = getelementptr [16 x i8], ptr %47, i32 0, i32 5
  store i8 1, ptr %51, align 1
  %52 = getelementptr [16 x i8], ptr %47, i32 0, i32 6
  store i8 1, ptr %52, align 2
  %53 = getelementptr [16 x i8], ptr %47, i32 0, i32 7
  store i8 0, ptr %53, align 1
  br i1 %18, label %54, label %65

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.elf32_hdr, ptr %47, i32 0, i32 1
  store i16 4, ptr %55, align 4
  %56 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 34
  %57 = load i16, ptr %56, align 2
  %58 = getelementptr inbounds %struct.elf64_hdr, ptr %47, i32 0, i32 2
  store i16 %57, ptr %58, align 2
  %59 = getelementptr inbounds %struct.elf64_hdr, ptr %47, i32 0, i32 3
  store i32 1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 16
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = getelementptr inbounds %struct.elf32_hdr, ptr %47, i32 0, i32 4
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.elf32_hdr, ptr %47, i32 0, i32 6
  store i32 %19, ptr %64, align 4
  br label %76

65:                                               ; preds = %49
  %66 = getelementptr inbounds %struct.elf64_hdr, ptr %47, i32 0, i32 1
  store i16 4, ptr %66, align 8
  %67 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 34
  %68 = load i16, ptr %67, align 2
  %69 = getelementptr inbounds %struct.elf64_hdr, ptr %47, i32 0, i32 2
  store i16 %68, ptr %69, align 2
  %70 = getelementptr inbounds %struct.elf64_hdr, ptr %47, i32 0, i32 3
  store i32 1, ptr %70, align 4
  %71 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 16
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr inbounds %struct.elf64_hdr, ptr %47, i32 0, i32 4
  store i64 %72, ptr %73, align 8
  %74 = zext i32 %19 to i64
  %75 = getelementptr inbounds %struct.elf64_hdr, ptr %47, i32 0, i32 6
  store i64 %74, ptr %75, align 8
  br label %76

76:                                               ; preds = %65, %54
  %77 = trunc i32 %19 to i16
  %78 = getelementptr inbounds %struct.elf64_hdr, ptr %47, i32 0, i32 8
  %79 = getelementptr inbounds %struct.elf32_hdr, ptr %47, i32 0, i32 8
  %80 = select i1 %18, ptr %79, ptr %78
  store i16 %77, ptr %80, align 4
  %81 = trunc i32 %20 to i16
  %82 = getelementptr inbounds %struct.elf64_hdr, ptr %47, i32 0, i32 11
  %83 = getelementptr inbounds %struct.elf32_hdr, ptr %47, i32 0, i32 11
  %84 = select i1 %18, ptr %83, ptr %82
  store i16 %81, ptr %84, align 2
  %85 = getelementptr inbounds %struct.elf64_hdr, ptr %47, i32 0, i32 12
  %86 = getelementptr inbounds %struct.elf32_hdr, ptr %47, i32 0, i32 12
  %87 = select i1 %18, ptr %86, ptr %85
  store i16 %45, ptr %87, align 4
  %88 = getelementptr inbounds %struct.elf64_hdr, ptr %47, i32 0, i32 13
  %89 = getelementptr inbounds %struct.elf32_hdr, ptr %47, i32 0, i32 13
  %90 = select i1 %18, ptr %89, ptr %88
  store i16 1, ptr %90, align 2
  br i1 %18, label %91, label %96

91:                                               ; preds = %76
  %92 = getelementptr inbounds %struct.elf32_hdr, ptr %47, i32 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr i8, ptr %47, i32 %93
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(40) %94, i8 0, i32 %20, i1 false)
  %95 = load i32, ptr %92, align 4
  br label %102

96:                                               ; preds = %76
  %97 = load i64, ptr %79, align 8
  %98 = trunc i64 %97 to i32
  %99 = getelementptr i8, ptr %47, i32 %98
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(40) %99, i8 0, i32 %20, i1 false)
  %100 = load i64, ptr %79, align 8
  %101 = trunc i64 %100 to i32
  br label %102

102:                                              ; preds = %96, %91
  %103 = phi i32 [ %93, %91 ], [ %98, %96 ]
  %104 = phi i32 [ %95, %91 ], [ %101, %96 ]
  %105 = getelementptr i8, ptr %47, i32 %103
  %106 = getelementptr i8, ptr %105, i32 %20
  %107 = load i16, ptr %87, align 4
  %108 = zext i16 %107 to i32
  %109 = mul nuw nsw i32 %20, %108
  %110 = add i32 %109, %104
  %111 = getelementptr i8, ptr %47, i32 %110
  tail call void @llvm.memset.p0.i32(ptr align 1 %111, i8 0, i32 %34, i1 false)
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(40) %106, i8 0, i32 %20, i1 false)
  %112 = getelementptr inbounds %struct.elf64_shdr, ptr %106, i32 0, i32 1
  store i32 3, ptr %112, align 4
  br i1 %18, label %113, label %125

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct.elf32_shdr, ptr %106, i32 0, i32 4
  store i32 %110, ptr %114, align 4
  %115 = getelementptr inbounds %struct.elf32_shdr, ptr %106, i32 0, i32 5
  store i32 %34, ptr %115, align 4
  %116 = getelementptr inbounds %struct.elf32_shdr, ptr %106, i32 0, i32 9
  store i32 0, ptr %116, align 4
  %117 = getelementptr inbounds %struct.elf32_shdr, ptr %106, i32 0, i32 2
  store i32 0, ptr %117, align 4
  %118 = load i16, ptr %90, align 2
  %119 = getelementptr i8, ptr %47, i32 %19
  %120 = zext i16 %118 to i32
  %121 = mul nuw nsw i32 %20, %120
  %122 = getelementptr i8, ptr %119, i32 %121
  %123 = getelementptr inbounds %struct.elf32_shdr, ptr %122, i32 0, i32 4
  %124 = load i32, ptr %123, align 4
  br label %140

125:                                              ; preds = %102
  %126 = zext i32 %110 to i64
  %127 = getelementptr inbounds %struct.elf64_shdr, ptr %106, i32 0, i32 4
  store i64 %126, ptr %127, align 8
  %128 = zext i32 %34 to i64
  %129 = getelementptr inbounds %struct.elf64_shdr, ptr %106, i32 0, i32 5
  store i64 %128, ptr %129, align 8
  %130 = getelementptr inbounds %struct.elf64_shdr, ptr %106, i32 0, i32 9
  store i64 0, ptr %130, align 8
  %131 = getelementptr inbounds %struct.elf64_shdr, ptr %106, i32 0, i32 2
  store i64 0, ptr %131, align 8
  %132 = load i16, ptr %90, align 2
  %133 = getelementptr i8, ptr %47, i32 %19
  %134 = zext i16 %132 to i32
  %135 = mul nuw nsw i32 %20, %134
  %136 = getelementptr i8, ptr %133, i32 %135
  %137 = getelementptr inbounds %struct.elf64_shdr, ptr %136, i32 0, i32 4
  %138 = load i64, ptr %137, align 8
  %139 = trunc i64 %138 to i32
  br label %140

140:                                              ; preds = %125, %113
  %141 = phi i32 [ %124, %113 ], [ %139, %125 ]
  %142 = getelementptr i8, ptr %47, i32 %141
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = getelementptr i8, ptr %142, i32 1
  store i64 21465028373926995, ptr %145, align 1
  br label %146

146:                                              ; preds = %144, %140
  %147 = phi i32 [ 9, %144 ], [ 1, %140 ]
  %148 = phi i32 [ 1, %144 ], [ 0, %140 ]
  br i1 %18, label %149, label %152

149:                                              ; preds = %146
  store i32 %148, ptr %106, align 4
  %150 = getelementptr inbounds %struct.elf32_shdr, ptr %106, i32 0, i32 5
  %151 = load i32, ptr %150, align 4
  br label %156

152:                                              ; preds = %146
  store i32 %148, ptr %106, align 8
  %153 = getelementptr inbounds %struct.elf64_shdr, ptr %106, i32 0, i32 5
  %154 = load i64, ptr %153, align 8
  %155 = trunc i64 %154 to i32
  br label %156

156:                                              ; preds = %152, %149
  %157 = phi i32 [ %151, %149 ], [ %155, %152 ]
  %158 = load ptr, ptr %8, align 8
  %159 = icmp eq ptr %158, %8
  br i1 %159, label %262, label %160

160:                                              ; preds = %156
  %161 = add i32 %157, %110
  %162 = getelementptr i8, ptr %47, i32 %19
  %163 = icmp eq i32 %7, 1
  %164 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  br label %165

165:                                              ; preds = %257, %160
  %166 = phi ptr [ %158, %160 ], [ %260, %257 ]
  %167 = phi ptr [ %106, %160 ], [ %170, %257 ]
  %168 = phi i32 [ %161, %160 ], [ %259, %257 ]
  %169 = phi i32 [ %147, %160 ], [ %225, %257 ]
  %170 = getelementptr i8, ptr %167, i32 %20
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(40) %170, i8 0, i32 %20, i1 false)
  %171 = getelementptr inbounds %struct.elf64_shdr, ptr %170, i32 0, i32 1
  store i32 1, ptr %171, align 4
  br i1 %18, label %172, label %188

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.elf32_shdr, ptr %170, i32 0, i32 4
  store i32 %168, ptr %173, align 4
  %174 = getelementptr inbounds %struct.rproc_dump_segment, ptr %166, i32 0, i32 1
  %175 = load i32, ptr %174, align 8
  %176 = getelementptr inbounds %struct.elf32_shdr, ptr %170, i32 0, i32 3
  store i32 %175, ptr %176, align 4
  %177 = getelementptr inbounds %struct.rproc_dump_segment, ptr %166, i32 0, i32 2
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr inbounds %struct.elf32_shdr, ptr %170, i32 0, i32 5
  store i32 %178, ptr %179, align 4
  %180 = getelementptr inbounds %struct.elf32_shdr, ptr %170, i32 0, i32 9
  store i32 0, ptr %180, align 4
  %181 = getelementptr inbounds %struct.elf32_shdr, ptr %170, i32 0, i32 2
  store i32 1, ptr %181, align 4
  %182 = load i16, ptr %90, align 2
  %183 = zext i16 %182 to i32
  %184 = mul nuw nsw i32 %20, %183
  %185 = getelementptr i8, ptr %162, i32 %184
  %186 = getelementptr inbounds %struct.elf32_shdr, ptr %185, i32 0, i32 4
  %187 = load i32, ptr %186, align 4
  br label %208

188:                                              ; preds = %165
  %189 = zext i32 %168 to i64
  %190 = getelementptr inbounds %struct.elf64_shdr, ptr %170, i32 0, i32 4
  store i64 %189, ptr %190, align 8
  %191 = getelementptr inbounds %struct.rproc_dump_segment, ptr %166, i32 0, i32 1
  %192 = load i32, ptr %191, align 8
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.elf64_shdr, ptr %170, i32 0, i32 3
  store i64 %193, ptr %194, align 8
  %195 = getelementptr inbounds %struct.rproc_dump_segment, ptr %166, i32 0, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.elf64_shdr, ptr %170, i32 0, i32 5
  store i64 %197, ptr %198, align 8
  %199 = getelementptr inbounds %struct.elf64_shdr, ptr %170, i32 0, i32 9
  store i64 0, ptr %199, align 8
  %200 = getelementptr inbounds %struct.elf64_shdr, ptr %170, i32 0, i32 2
  store i64 1, ptr %200, align 8
  %201 = load i16, ptr %90, align 2
  %202 = zext i16 %201 to i32
  %203 = mul nuw nsw i32 %20, %202
  %204 = getelementptr i8, ptr %162, i32 %203
  %205 = getelementptr inbounds %struct.elf64_shdr, ptr %204, i32 0, i32 4
  %206 = load i64, ptr %205, align 8
  %207 = trunc i64 %206 to i32
  br label %208

208:                                              ; preds = %188, %172
  %209 = phi ptr [ %174, %172 ], [ %191, %188 ]
  %210 = phi ptr [ %177, %172 ], [ %195, %188 ]
  %211 = phi i32 [ %187, %172 ], [ %207, %188 ]
  %212 = getelementptr inbounds %struct.rproc_dump_segment, ptr %166, i32 0, i32 3
  %213 = load ptr, ptr %212, align 8
  %214 = getelementptr i8, ptr %47, i32 %211
  %215 = icmp ne ptr %214, null
  %216 = icmp ne ptr %213, null
  %217 = and i1 %216, %215
  br i1 %217, label %218, label %224

218:                                              ; preds = %208
  %219 = getelementptr i8, ptr %214, i32 %169
  %220 = call ptr @strcpy(ptr noundef %219, ptr noundef nonnull %213) #12
  %221 = call i32 @strlen(ptr noundef nonnull %213) #12
  %222 = add i32 %169, 1
  %223 = add i32 %222, %221
  br label %224

224:                                              ; preds = %218, %208
  %225 = phi i32 [ %223, %218 ], [ %169, %208 ]
  %226 = phi i32 [ %169, %218 ], [ 0, %208 ]
  br i1 %18, label %227, label %228

227:                                              ; preds = %224
  store i32 %226, ptr %170, align 4
  br label %229

228:                                              ; preds = %224
  store i32 %226, ptr %170, align 8
  br label %229

229:                                              ; preds = %228, %227
  br i1 %163, label %230, label %249

230:                                              ; preds = %229
  %231 = getelementptr i8, ptr %47, i32 %168
  %232 = load i32, ptr %210, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  store i8 0, ptr %2, align 1
  %233 = getelementptr inbounds %struct.rproc_dump_segment, ptr %166, i32 0, i32 4
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %237, label %236

236:                                              ; preds = %230
  call void %234(ptr noundef %0, ptr noundef %166, ptr noundef %231, i32 noundef 0, i32 noundef %232) #12
  br label %248

237:                                              ; preds = %230
  %238 = load i32, ptr %209, align 8
  %239 = zext i32 %238 to i64
  %240 = call ptr @rproc_da_to_va(ptr noundef %0, i64 noundef %239, i32 noundef %232, ptr noundef nonnull %2) #12
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.3, ptr noundef %209, i32 noundef 0, i32 noundef %232) #14
  call void @llvm.memset.p0.i32(ptr align 1 %231, i8 -1, i32 %232, i1 false) #12
  br label %248

243:                                              ; preds = %237
  %244 = load i8, ptr %2, align 1, !range !9
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %243
  call void @mmiocpy(ptr noundef %231, ptr noundef nonnull %240, i32 noundef %232) #12
  br label %248

247:                                              ; preds = %243
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %231, ptr nonnull align 1 %240, i32 %232, i1 false) #12
  br label %248

248:                                              ; preds = %247, %246, %242, %236
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  br label %249

249:                                              ; preds = %248, %229
  br i1 %18, label %250, label %253

250:                                              ; preds = %249
  %251 = getelementptr inbounds %struct.elf32_shdr, ptr %170, i32 0, i32 5
  %252 = load i32, ptr %251, align 4
  br label %257

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.elf64_shdr, ptr %170, i32 0, i32 5
  %255 = load i64, ptr %254, align 8
  %256 = trunc i64 %255 to i32
  br label %257

257:                                              ; preds = %253, %250
  %258 = phi i32 [ %252, %250 ], [ %256, %253 ]
  %259 = add i32 %258, %168
  %260 = load ptr, ptr %166, align 8
  %261 = icmp eq ptr %260, %8
  br i1 %261, label %262, label %165

262:                                              ; preds = %257, %156
  %263 = icmp eq i32 %7, 1
  br i1 %263, label %264, label %266

264:                                              ; preds = %262
  %265 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  call void @dev_coredumpv(ptr noundef %265, ptr noundef %47, i32 noundef %46, i32 noundef 3264) #12
  br label %271

266:                                              ; preds = %262
  store ptr %0, ptr %3, align 4
  %267 = getelementptr inbounds %struct.rproc_coredump_state, ptr %3, i32 0, i32 1
  store ptr %47, ptr %267, align 4
  %268 = getelementptr inbounds %struct.rproc_coredump_state, ptr %3, i32 0, i32 2
  store i32 0, ptr %268, align 4
  %269 = getelementptr inbounds %struct.rproc_coredump_state, ptr %3, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %269, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #12
  %270 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  call void @dev_coredumpm(ptr noundef %270, ptr noundef null, ptr noundef nonnull %3, i32 noundef %46, i32 noundef 3264, ptr noundef nonnull @rproc_coredump_read, ptr noundef nonnull @rproc_coredump_free) #12
  call void @wait_for_completion(ptr noundef %268) #12
  br label %271

271:                                              ; preds = %266, %264, %44, %15, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_da_to_va(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
