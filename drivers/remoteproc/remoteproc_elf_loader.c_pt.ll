; ModuleID = '/llk/IR/drivers/remoteproc/remoteproc_elf_loader.c_pt.bc'
source_filename = "../drivers/remoteproc/remoteproc_elf_loader.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_elf_sanity_check:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_elf_sanity_check\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_elf_sanity_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_elf_get_boot_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_elf_get_boot_addr\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_elf_get_boot_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_elf_load_segments:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_elf_load_segments\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_elf_load_segments:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_elf_load_rsc_table:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_elf_load_rsc_table\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_elf_load_rsc_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_elf_find_loaded_rsc_table:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_elf_find_loaded_rsc_table\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_elf_find_loaded_rsc_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf64_phdr = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf64_shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.resource_table = type { i32, i32, [2 x i32], [0 x i32] }

@.str = private unnamed_addr constant [19 x i8] c"failed to load %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Image is too small\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Image is corrupted (bad magic)\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Unsupported class: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"elf64 header is too small\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Unsupported firmware endianness\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"No loadable segments\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Firmware size is too small\0A\00", align 1
@__kstrtab_rproc_elf_sanity_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_elf_sanity_check = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_elf_sanity_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_elf_sanity_check to i32), ptr @__kstrtab_rproc_elf_sanity_check, ptr @__kstrtabns_rproc_elf_sanity_check }, section "___ksymtab+rproc_elf_sanity_check", align 4
@__kstrtab_rproc_elf_get_boot_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_elf_get_boot_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_elf_get_boot_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_elf_get_boot_addr to i32), ptr @__kstrtab_rproc_elf_get_boot_addr, ptr @__kstrtabns_rproc_elf_get_boot_addr }, section "___ksymtab+rproc_elf_get_boot_addr", align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"bad phdr filesz 0x%llx memsz 0x%llx\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"truncated fw: need 0x%llx avail 0x%zx\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"size (%llx) does not fit in size_t type\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"bad phdr da 0x%llx mem 0x%llx\0A\00", align 1
@__kstrtab_rproc_elf_load_segments = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_elf_load_segments = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_elf_load_segments = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_elf_load_segments to i32), ptr @__kstrtab_rproc_elf_load_segments, ptr @__kstrtabns_rproc_elf_load_segments }, section "___ksymtab+rproc_elf_load_segments", align 4
@__kstrtab_rproc_elf_load_rsc_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_elf_load_rsc_table = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_elf_load_rsc_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_elf_load_rsc_table to i32), ptr @__kstrtab_rproc_elf_load_rsc_table, ptr @__kstrtabns_rproc_elf_load_rsc_table }, section "___ksymtab+rproc_elf_load_rsc_table", align 4
@__kstrtab_rproc_elf_find_loaded_rsc_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_elf_find_loaded_rsc_table = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_elf_find_loaded_rsc_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_elf_find_loaded_rsc_table to i32), ptr @__kstrtab_rproc_elf_find_loaded_rsc_table, ptr @__kstrtabns_rproc_elf_find_loaded_rsc_table }, section "___ksymtab+rproc_elf_find_loaded_rsc_table", align 4
@.str.13 = private unnamed_addr constant [16 x i8] c".resource_table\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"resource table truncated\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"header-less resource table\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"unsupported fw ver: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"non zero reserved bytes\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"resource table incomplete\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_rproc_elf_find_loaded_rsc_table, ptr @__ksymtab_rproc_elf_get_boot_addr, ptr @__ksymtab_rproc_elf_load_rsc_table, ptr @__ksymtab_rproc_elf_load_segments, ptr @__ksymtab_rproc_elf_sanity_check], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_elf_sanity_check(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef %7) #10
  br label %68

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 4
  %10 = icmp ult i32 %9, 52
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #10
  br label %68

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %14, ptr noundef nonnull dereferenceable(4) @.str.2, i32 4)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #10
  br label %68

18:                                               ; preds = %12
  %19 = getelementptr [16 x i8], ptr %14, i32 0, i32 4
  %20 = load i8, ptr %19, align 4
  %21 = add i8 %20, -3
  %22 = icmp ult i8 %21, -2
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %24) #10
  br label %68

25:                                               ; preds = %18
  %26 = icmp eq i8 %20, 2
  %27 = icmp ult i32 %9, 64
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #10
  br label %68

30:                                               ; preds = %25
  %31 = getelementptr [16 x i8], ptr %14, i32 0, i32 5
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 1
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #10
  br label %68

35:                                               ; preds = %30
  %36 = icmp eq i8 %20, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.elf32_hdr, ptr %14, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.elf32_hdr, ptr %14, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = zext i32 %42 to i64
  br label %49

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.elf64_hdr, ptr %14, i32 0, i32 5
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds %struct.elf64_hdr, ptr %14, i32 0, i32 6
  %48 = load i64, ptr %47, align 8
  br label %49

49:                                               ; preds = %44, %37
  %50 = phi i32 [ 40, %37 ], [ 64, %44 ]
  %51 = phi i64 [ %40, %37 ], [ %46, %44 ]
  %52 = phi i64 [ %43, %37 ], [ %48, %44 ]
  %53 = zext i32 %9 to i64
  %54 = zext i32 %50 to i64
  %55 = add i64 %52, %54
  %56 = icmp ugt i64 %55, %53
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #10
  br label %68

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.elf32_hdr, ptr %14, i32 0, i32 10
  %60 = getelementptr inbounds %struct.elf64_hdr, ptr %14, i32 0, i32 10
  %61 = select i1 %36, ptr %59, ptr %60
  %62 = load i16, ptr %61, align 4
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #10
  br label %68

65:                                               ; preds = %58
  %66 = icmp ugt i64 %51, %53
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #10
  br label %68

68:                                               ; preds = %67, %65, %64, %57, %34, %29, %23, %17, %11, %5
  %69 = phi i32 [ -22, %11 ], [ -22, %17 ], [ -22, %23 ], [ -22, %29 ], [ -22, %34 ], [ -22, %57 ], [ -22, %64 ], [ -22, %67 ], [ -22, %5 ], [ 0, %65 ]
  ret i32 %69
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @rproc_elf_get_boot_addr(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr [16 x i8], ptr %4, i32 0, i32 4
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.elf32_hdr, ptr %4, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = zext i32 %10 to i64
  br label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.elf64_hdr, ptr %4, i32 0, i32 4
  %14 = load i64, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i64 [ %11, %8 ], [ %14, %12 ]
  ret i64 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_elf_load_segments(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr [16 x i8], ptr %6, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 1
  %10 = select i1 %9, i32 32, i32 56
  %11 = getelementptr inbounds %struct.elf32_hdr, ptr %6, i32 0, i32 10
  %12 = getelementptr inbounds %struct.elf64_hdr, ptr %6, i32 0, i32 10
  %13 = select i1 %9, ptr %11, ptr %12
  %14 = load i16, ptr %13, align 4
  br i1 %9, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.elf32_hdr, ptr %6, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  br label %22

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.elf64_hdr, ptr %6, i32 0, i32 5
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i32 [ %17, %15 ], [ %21, %18 ]
  %24 = zext i16 %14 to i32
  %25 = icmp eq i16 %14, 0
  br i1 %25, label %104, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %6, i32 %23
  br label %28

28:                                               ; preds = %100, %26
  %29 = phi i32 [ %101, %100 ], [ 0, %26 ]
  %30 = phi ptr [ %102, %100 ], [ %27, %26 ]
  br i1 %9, label %31, label %44

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.elf32_phdr, ptr %30, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.elf32_phdr, ptr %30, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.elf32_phdr, ptr %30, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.elf32_phdr, ptr %30, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = zext i32 %42 to i64
  br label %53

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.elf64_phdr, ptr %30, i32 0, i32 4
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds %struct.elf64_phdr, ptr %30, i32 0, i32 6
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds %struct.elf64_phdr, ptr %30, i32 0, i32 5
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.elf64_phdr, ptr %30, i32 0, i32 2
  %52 = load i64, ptr %51, align 8
  br label %53

53:                                               ; preds = %44, %31
  %54 = phi i64 [ %40, %31 ], [ %50, %44 ]
  %55 = phi i64 [ %34, %31 ], [ %46, %44 ]
  %56 = phi i64 [ %37, %31 ], [ %48, %44 ]
  %57 = phi i64 [ %43, %31 ], [ %52, %44 ]
  %58 = load i32, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %100

60:                                               ; preds = %53
  %61 = icmp ult i64 %56, %54
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, i64 noundef %54, i64 noundef %56) #10
  br label %98

63:                                               ; preds = %60
  %64 = add i64 %57, %54
  %65 = load i32, ptr %1, align 4
  %66 = zext i32 %65 to i64
  %67 = icmp ugt i64 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, i64 noundef %64, i32 noundef %65) #10
  br label %98

69:                                               ; preds = %63
  %70 = icmp ult i64 %56, 4294967296
  br i1 %70, label %72, label %71

71:                                               ; preds = %69
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11, i64 noundef %56) #10
  br label %98

72:                                               ; preds = %69
  %73 = trunc i64 %56 to i32
  %74 = call ptr @rproc_da_to_va(ptr noundef %0, i64 noundef %55, i32 noundef %73, ptr noundef nonnull %3) #11
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, i64 noundef %55, i64 noundef %56) #10
  br label %98

77:                                               ; preds = %72
  %78 = icmp eq i64 %54, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %77
  %80 = load i8, ptr %3, align 1, !range !8
  %81 = icmp eq i8 %80, 0
  %82 = trunc i64 %57 to i32
  %83 = getelementptr i8, ptr %6, i32 %82
  %84 = trunc i64 %54 to i32
  br i1 %81, label %86, label %85

85:                                               ; preds = %79
  call void @mmiocpy(ptr noundef nonnull %74, ptr noundef %83, i32 noundef %84) #11
  br label %87

86:                                               ; preds = %79
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %74, ptr align 1 %83, i32 %84, i1 false)
  br label %87

87:                                               ; preds = %86, %85, %77
  %88 = icmp ugt i64 %56, %54
  br i1 %88, label %89, label %100

89:                                               ; preds = %87
  %90 = load i8, ptr %3, align 1, !range !8
  %91 = icmp eq i8 %90, 0
  %92 = trunc i64 %54 to i32
  %93 = getelementptr i8, ptr %74, i32 %92
  %94 = sub i64 %56, %54
  %95 = trunc i64 %94 to i32
  br i1 %91, label %97, label %96

96:                                               ; preds = %89
  call void @mmioset(ptr noundef %93, i32 noundef 0, i32 noundef %95) #11
  br label %100

97:                                               ; preds = %89
  call void @llvm.memset.p0.i32(ptr align 1 %93, i8 0, i32 %95, i1 false)
  br label %100

98:                                               ; preds = %76, %71, %68, %62
  %99 = phi i32 [ -75, %71 ], [ -22, %76 ], [ -22, %68 ], [ -22, %62 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %104

100:                                              ; preds = %97, %96, %87, %53
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %101 = add nuw nsw i32 %29, 1
  %102 = getelementptr i8, ptr %30, i32 %10
  %103 = icmp eq i32 %101, %24
  br i1 %103, label %104, label %28

104:                                              ; preds = %100, %98, %22
  %105 = phi i32 [ %99, %98 ], [ 0, %22 ], [ 0, %100 ]
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_da_to_va(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_elf_load_rsc_table(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr [16 x i8], ptr %5, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = tail call fastcc ptr @find_table(ptr noundef %3, ptr noundef %1)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %2
  %11 = icmp eq i8 %7, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.elf32_shdr, ptr %8, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.elf32_shdr, ptr %8, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  br label %24

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.elf64_shdr, ptr %8, i32 0, i32 4
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.elf64_shdr, ptr %8, i32 0, i32 5
  %22 = load i64, ptr %21, align 8
  %23 = trunc i64 %22 to i32
  br label %24

24:                                               ; preds = %17, %12
  %25 = phi i32 [ %14, %12 ], [ %20, %17 ]
  %26 = phi i32 [ %16, %12 ], [ %23, %17 ]
  %27 = getelementptr i8, ptr %5, i32 %25
  %28 = tail call ptr @kmemdup(ptr noundef %27, i32 noundef %26, i32 noundef 3264) #11
  %29 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 27
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 25
  store ptr %28, ptr %32, align 4
  %33 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 28
  store i32 %26, ptr %33, align 8
  br label %34

34:                                               ; preds = %31, %24, %2
  %35 = phi i32 [ 0, %31 ], [ -22, %2 ], [ -12, %24 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @find_table(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr [16 x i8], ptr %4, i32 0, i32 4
  %6 = load i8, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = icmp eq i8 %6, 1
  %9 = getelementptr inbounds %struct.elf32_hdr, ptr %4, i32 0, i32 12
  %10 = getelementptr inbounds %struct.elf64_hdr, ptr %4, i32 0, i32 12
  %11 = select i1 %8, ptr %9, ptr %10
  %12 = load i16, ptr %11, align 4
  %13 = select i1 %8, i32 40, i32 64
  %14 = getelementptr inbounds %struct.elf32_hdr, ptr %4, i32 0, i32 13
  %15 = getelementptr inbounds %struct.elf64_hdr, ptr %4, i32 0, i32 13
  %16 = select i1 %8, ptr %14, ptr %15
  %17 = load i16, ptr %16, align 2
  br i1 %8, label %18, label %27

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.elf32_hdr, ptr %4, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %4, i32 %20
  %22 = zext i16 %17 to i32
  %23 = mul nuw nsw i32 %13, %22
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = getelementptr inbounds %struct.elf32_shdr, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  br label %38

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.elf64_hdr, ptr %4, i32 0, i32 6
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = getelementptr i8, ptr %4, i32 %30
  %32 = zext i16 %17 to i32
  %33 = mul nuw nsw i32 %13, %32
  %34 = getelementptr i8, ptr %31, i32 %33
  %35 = getelementptr inbounds %struct.elf64_shdr, ptr %34, i32 0, i32 4
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %36 to i32
  br label %38

38:                                               ; preds = %27, %18
  %39 = phi ptr [ %21, %18 ], [ %31, %27 ]
  %40 = phi i32 [ %26, %18 ], [ %37, %27 ]
  %41 = getelementptr i8, ptr %4, i32 %40
  %42 = zext i16 %12 to i32
  %43 = icmp eq i16 %12, 0
  br i1 %43, label %106, label %44

44:                                               ; preds = %102, %38
  %45 = phi ptr [ %104, %102 ], [ %39, %38 ]
  %46 = phi i32 [ %103, %102 ], [ 0, %38 ]
  br i1 %8, label %47, label %54

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.elf32_shdr, ptr %45, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.elf32_shdr, ptr %45, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = zext i32 %52 to i64
  br label %59

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.elf64_shdr, ptr %45, i32 0, i32 5
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds %struct.elf64_shdr, ptr %45, i32 0, i32 4
  %58 = load i64, ptr %57, align 8
  br label %59

59:                                               ; preds = %54, %47
  %60 = phi i64 [ %50, %47 ], [ %56, %54 ]
  %61 = phi i64 [ %53, %47 ], [ %58, %54 ]
  %62 = load i32, ptr %45, align 4
  %63 = getelementptr i8, ptr %41, i32 %62
  %64 = tail call i32 @strcmp(ptr noundef %63, ptr noundef nonnull dereferenceable(16) @.str.13)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %102

66:                                               ; preds = %59
  %67 = trunc i64 %61 to i32
  %68 = getelementptr i8, ptr %4, i32 %67
  %69 = add i64 %61, %60
  %70 = zext i32 %7 to i64
  %71 = icmp ugt i64 %69, %70
  %72 = icmp ult i64 %69, %60
  %73 = or i1 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14) #10
  br label %106

75:                                               ; preds = %66
  %76 = icmp ult i64 %60, 16
  br i1 %76, label %77, label %78

77:                                               ; preds = %75
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #10
  br label %106

78:                                               ; preds = %75
  %79 = load i32, ptr %68, align 1
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %79) #10
  br label %106

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.resource_table, ptr %68, i32 0, i32 2
  %84 = load i32, ptr %83, align 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = getelementptr [2 x i32], ptr %83, i32 0, i32 1
  %88 = load i32, ptr %87, align 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86, %82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.17) #10
  br label %106

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.resource_table, ptr %68, i32 0, i32 1
  %93 = load i32, ptr %92, align 1
  %94 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %93, i32 4) #11
  %95 = extractvalue { i32, i1 } %94, 1
  %96 = extractvalue { i32, i1 } %94, 0
  %97 = tail call i32 @llvm.uadd.sat.i32(i32 %96, i32 16) #11
  %98 = zext i32 %97 to i64
  %99 = select i1 %95, i64 4294967295, i64 %98
  %100 = icmp ult i64 %60, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18) #10
  br label %106

102:                                              ; preds = %59
  %103 = add nuw nsw i32 %46, 1
  %104 = getelementptr i8, ptr %45, i32 %13
  %105 = icmp eq i32 %103, %42
  br i1 %105, label %106, label %44

106:                                              ; preds = %102, %101, %91, %90, %81, %77, %74, %38
  %107 = phi ptr [ %45, %91 ], [ null, %101 ], [ null, %90 ], [ null, %81 ], [ null, %77 ], [ null, %74 ], [ null, %38 ], [ null, %102 ]
  ret ptr %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rproc_elf_find_loaded_rsc_table(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr [16 x i8], ptr %4, i32 0, i32 4
  %6 = load i8, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %8 = tail call fastcc ptr @find_table(ptr noundef %7, ptr noundef %1)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = icmp eq i8 %6, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.elf32_shdr, ptr %8, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.elf32_shdr, ptr %8, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  br label %26

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.elf64_shdr, ptr %8, i32 0, i32 3
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.elf64_shdr, ptr %8, i32 0, i32 5
  %22 = load i64, ptr %21, align 8
  %23 = icmp ult i64 %22, 4294967296
  %24 = trunc i64 %22 to i32
  br i1 %23, label %26, label %25

25:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.11, i64 noundef %22) #10
  br label %30

26:                                               ; preds = %18, %12
  %27 = phi i32 [ %17, %12 ], [ %24, %18 ]
  %28 = phi i64 [ %15, %12 ], [ %20, %18 ]
  %29 = tail call ptr @rproc_da_to_va(ptr noundef %0, i64 noundef %28, i32 noundef %27, ptr noundef null) #11
  br label %30

30:                                               ; preds = %26, %25, %2
  %31 = phi ptr [ %29, %26 ], [ null, %25 ], [ null, %2 ]
  ret ptr %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }

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
