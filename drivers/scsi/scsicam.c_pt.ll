; ModuleID = '/llk/IR/drivers/scsi/scsicam.c_pt.bc'
source_filename = "../drivers/scsi/scsicam.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_bios_ptable:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_bios_ptable\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_bios_ptable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_partsize:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_partsize\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_partsize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsicam_bios_param:\09\09\09\09\09"
module asm "\09.asciz \09\22scsicam_bios_param\22\09\09\09\09\09"
module asm "__kstrtabns_scsicam_bios_param:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.lockdep_map = type {}
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.page = type { i32, %union.anon.4, %union.anon.34, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.34 = type { %struct.atomic_t }
%struct.msdos_partition = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

@__kstrtab_scsi_bios_ptable = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_bios_ptable = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_bios_ptable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_bios_ptable to i32), ptr @__kstrtab_scsi_bios_ptable, ptr @__kstrtabns_scsi_bios_ptable }, section "___ksymtab+scsi_bios_ptable", align 4
@__kstrtab_scsi_partsize = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_partsize = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_partsize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_partsize to i32), ptr @__kstrtab_scsi_partsize, ptr @__kstrtabns_scsi_partsize }, section "___ksymtab+scsi_partsize", align 4
@__kstrtab_scsicam_bios_param = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsicam_bios_param = external dso_local constant [0 x i8], align 1
@__ksymtab_scsicam_bios_param = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsicam_bios_param to i32), ptr @__kstrtab_scsicam_bios_param, ptr @__kstrtabns_scsicam_bios_param }, section "___ksymtab+scsicam_bios_param", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_scsi_bios_ptable, ptr @__ksymtab_scsi_partsize, ptr @__ksymtab_scsicam_bios_param], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scsi_bios_ptable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @read_cache_page(ptr noundef %9, i32 noundef 0, ptr noundef null, ptr noundef null) #3
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %48, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !8

17:                                               ; preds = %12
  %18 = add i32 %14, -1
  br label %21

19:                                               ; preds = %12
  %20 = ptrtoint ptr %10 to i32
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = inttoptr i32 %22 to ptr
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = tail call ptr @page_address(ptr noundef %10) #3
  %29 = getelementptr i8, ptr %28, i32 446
  %30 = tail call ptr @kmemdup(ptr noundef %29, i32 noundef 66, i32 noundef 3264) #3
  br label %31

31:                                               ; preds = %27, %21
  %32 = phi ptr [ null, %21 ], [ %30, %27 ]
  %33 = load volatile i32, ptr %13, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !8

36:                                               ; preds = %31
  %37 = add i32 %33, -1
  br label %40

38:                                               ; preds = %31
  %39 = ptrtoint ptr %10 to i32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #3, !srcloc !10
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #3, !srcloc !11
  %45 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  tail call void @__put_page(ptr noundef %42) #3
  br label %48

48:                                               ; preds = %47, %40, %1
  %49 = phi ptr [ null, %1 ], [ %32, %40 ], [ %32, %47 ]
  ret ptr %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @scsi_partsize(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @scsi_bios_ptable(ptr noundef %0)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %131, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %4, i32 64
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, -21931
  br i1 %9, label %10, label %129

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.msdos_partition, ptr %4, i32 0, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.msdos_partition, ptr %4, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.msdos_partition, ptr %4, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, -64
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 2
  %23 = or i32 %22, %17
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 -1)
  br label %25

25:                                               ; preds = %14, %10
  %26 = phi ptr [ null, %10 ], [ %4, %14 ]
  %27 = phi i32 [ -1, %10 ], [ %24, %14 ]
  %28 = getelementptr %struct.msdos_partition, ptr %4, i32 1, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %25
  %32 = getelementptr %struct.msdos_partition, ptr %4, i32 1
  %33 = getelementptr %struct.msdos_partition, ptr %4, i32 1, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr %struct.msdos_partition, ptr %4, i32 1, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, -64
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 2
  %41 = or i32 %40, %35
  %42 = icmp sgt i32 %41, %27
  %43 = select i1 %42, ptr %32, ptr %26
  %44 = tail call i32 @llvm.smax.i32(i32 %41, i32 %27)
  br label %45

45:                                               ; preds = %31, %25
  %46 = phi ptr [ %26, %25 ], [ %43, %31 ]
  %47 = phi i32 [ %27, %25 ], [ %44, %31 ]
  %48 = getelementptr %struct.msdos_partition, ptr %4, i32 2, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %45
  %52 = getelementptr %struct.msdos_partition, ptr %4, i32 2
  %53 = getelementptr %struct.msdos_partition, ptr %4, i32 2, i32 3
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr %struct.msdos_partition, ptr %4, i32 2, i32 2
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, -64
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 2
  %61 = or i32 %60, %55
  %62 = icmp sgt i32 %61, %47
  %63 = select i1 %62, ptr %52, ptr %46
  %64 = tail call i32 @llvm.smax.i32(i32 %61, i32 %47)
  br label %65

65:                                               ; preds = %51, %45
  %66 = phi ptr [ %46, %45 ], [ %63, %51 ]
  %67 = phi i32 [ %47, %45 ], [ %64, %51 ]
  %68 = getelementptr %struct.msdos_partition, ptr %4, i32 3, i32 4
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %65
  %72 = getelementptr %struct.msdos_partition, ptr %4, i32 3
  %73 = getelementptr %struct.msdos_partition, ptr %4, i32 3, i32 3
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = getelementptr %struct.msdos_partition, ptr %4, i32 3, i32 2
  %77 = load i8, ptr %76, align 1
  %78 = and i8 %77, -64
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 2
  %81 = or i32 %80, %75
  %82 = icmp sgt i32 %81, %67
  %83 = select i1 %82, ptr %72, ptr %66
  br label %84

84:                                               ; preds = %71, %65
  %85 = phi ptr [ %66, %65 ], [ %83, %71 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %129, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.msdos_partition, ptr %85, i32 0, i32 7
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr inbounds %struct.msdos_partition, ptr %85, i32 0, i32 6
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 2
  %95 = and i32 %94, 768
  %96 = or i32 %95, %90
  %97 = getelementptr inbounds %struct.msdos_partition, ptr %85, i32 0, i32 5
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = and i32 %93, 63
  %101 = add nuw nsw i32 %99, 1
  %102 = icmp eq i32 %100, 0
  br i1 %102, label %129, label %103

103:                                              ; preds = %87
  %104 = mul nuw nsw i32 %101, %100
  %105 = mul nuw nsw i32 %104, %96
  %106 = mul nuw nsw i32 %100, %99
  %107 = add nuw nsw i32 %106, %100
  %108 = add nuw nsw i32 %107, %105
  %109 = getelementptr inbounds %struct.msdos_partition, ptr %85, i32 0, i32 8
  %110 = load i32, ptr %109, align 1
  %111 = getelementptr inbounds %struct.msdos_partition, ptr %85, i32 0, i32 9
  %112 = load i32, ptr %111, align 1
  %113 = add i32 %112, %110
  %114 = icmp eq i32 %113, %108
  br i1 %114, label %124, label %115

115:                                              ; preds = %103
  %116 = sub i32 %113, %107
  %117 = udiv i32 %116, %101
  %118 = udiv i32 %117, %100
  %119 = mul i32 %104, %118
  %120 = add i32 %107, %119
  %121 = icmp eq i32 %96, 1023
  %122 = icmp eq i32 %120, %113
  %123 = select i1 %121, i1 %122, i1 false
  br i1 %123, label %124, label %129

124:                                              ; preds = %115, %103
  store i32 %101, ptr %2, align 4
  %125 = getelementptr i32, ptr %2, i32 1
  store i32 %100, ptr %125, align 4
  %126 = trunc i64 %1 to i32
  %127 = udiv i32 %126, %104
  %128 = getelementptr i32, ptr %2, i32 2
  store i32 %127, ptr %128, align 4
  br label %129

129:                                              ; preds = %124, %115, %87, %84, %6
  %130 = phi i1 [ false, %84 ], [ false, %115 ], [ false, %87 ], [ true, %124 ], [ false, %6 ]
  tail call void @kfree(ptr noundef nonnull %4) #3
  br label %131

131:                                              ; preds = %129, %3
  %132 = phi i1 [ %130, %129 ], [ false, %3 ]
  ret i1 %132
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsicam_bios_param(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call zeroext i1 @scsi_partsize(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  br i1 %4, label %57, label %5

5:                                                ; preds = %3
  %6 = icmp ult i64 %1, 4294967296
  br i1 %6, label %7, label %32

7:                                                ; preds = %5
  %8 = trunc i64 %1 to i32
  %9 = getelementptr i32, ptr %2, i32 2
  %10 = getelementptr i32, ptr %2, i32 1
  %11 = udiv i32 %8, 63488
  %12 = mul i32 %11, 63488
  %13 = sub i32 %8, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %7
  %16 = add nuw nsw i32 %11, 1
  %17 = shl nuw nsw i32 %16, 10
  %18 = freeze i32 %17
  %19 = udiv i32 %8, %18
  %20 = mul i32 %19, %18
  %21 = sub i32 %8, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15, %7
  %24 = phi i32 [ 62, %7 ], [ %19, %15 ]
  %25 = phi i32 [ %11, %7 ], [ %16, %15 ]
  store i32 1024, ptr %9, align 4
  store i32 %24, ptr %10, align 4
  store i32 %25, ptr %2, align 4
  br label %34

26:                                               ; preds = %15
  %27 = add nuw nsw i32 %19, 1
  %28 = mul i32 %27, %16
  %29 = udiv i32 %8, %28
  %30 = icmp ugt i32 %28, %8
  %31 = select i1 %30, i32 0, i32 %29
  store i32 %31, ptr %9, align 4
  store i32 %27, ptr %10, align 4
  store i32 %16, ptr %2, align 4
  br i1 %30, label %41, label %34

32:                                               ; preds = %5
  %33 = load i32, ptr %2, align 4
  br label %34

34:                                               ; preds = %32, %26, %23
  %35 = phi i32 [ %33, %32 ], [ %25, %23 ], [ %16, %26 ]
  %36 = icmp sgt i32 %35, 255
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr i32, ptr %2, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 63
  br i1 %40, label %41, label %57

41:                                               ; preds = %37, %34, %26
  %42 = icmp ugt i64 %1, 134215679
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  store i32 64, ptr %2, align 4
  %44 = getelementptr i32, ptr %2, i32 1
  store i32 32, ptr %44, align 4
  br label %48

45:                                               ; preds = %41
  store i32 255, ptr %2, align 4
  %46 = getelementptr i32, ptr %2, i32 1
  store i32 63, ptr %46, align 4
  %47 = icmp ugt i64 %1, 1052819775
  br i1 %47, label %54, label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ 32, %43 ], [ 63, %45 ]
  %50 = phi i32 [ 64, %43 ], [ 255, %45 ]
  %51 = trunc i64 %1 to i32
  %52 = mul nuw nsw i32 %49, %50
  %53 = udiv i32 %51, %52
  br label %54

54:                                               ; preds = %48, %45
  %55 = phi i32 [ %53, %48 ], [ 65535, %45 ]
  %56 = getelementptr i32, ptr %2, i32 2
  store i32 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %54, %37, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148149631}
!10 = !{i64 547566, i64 2148037537, i64 2148037563, i64 2148037610, i64 2148037632, i64 2148037660, i64 2148037680}
!11 = !{i64 2148051993, i64 2148052025, i64 2148052054, i64 2148052088, i64 2148052119, i64 2148052142}
!12 = !{i64 2148149834}
