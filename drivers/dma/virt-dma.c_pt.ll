; ModuleID = '/llk/IR/drivers/dma/virt-dma.c_pt.bc'
source_filename = "../drivers/dma/virt-dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vchan_tx_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22vchan_tx_submit\22\09\09\09\09\09"
module asm "__kstrtabns_vchan_tx_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vchan_tx_desc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22vchan_tx_desc_free\22\09\09\09\09\09"
module asm "__kstrtabns_vchan_tx_desc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vchan_find_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22vchan_find_desc\22\09\09\09\09\09"
module asm "__kstrtabns_vchan_find_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vchan_dma_desc_free_list:\09\09\09\09\09"
module asm "\09.asciz \09\22vchan_dma_desc_free_list\22\09\09\09\09\09"
module asm "__kstrtabns_vchan_dma_desc_free_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vchan_init:\09\09\09\09\09"
module asm "\09.asciz \09\22vchan_init\22\09\09\09\09\09"
module asm "__kstrtabns_vchan_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%struct.atomic_t = type { i32 }
%union.anon.68 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__kstrtab_vchan_tx_submit = external dso_local constant [0 x i8], align 1
@__kstrtabns_vchan_tx_submit = external dso_local constant [0 x i8], align 1
@__ksymtab_vchan_tx_submit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vchan_tx_submit to i32), ptr @__kstrtab_vchan_tx_submit, ptr @__kstrtabns_vchan_tx_submit }, section "___ksymtab_gpl+vchan_tx_submit", align 4
@__kstrtab_vchan_tx_desc_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_vchan_tx_desc_free = external dso_local constant [0 x i8], align 1
@__ksymtab_vchan_tx_desc_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vchan_tx_desc_free to i32), ptr @__kstrtab_vchan_tx_desc_free, ptr @__kstrtabns_vchan_tx_desc_free }, section "___ksymtab_gpl+vchan_tx_desc_free", align 4
@__kstrtab_vchan_find_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_vchan_find_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_vchan_find_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vchan_find_desc to i32), ptr @__kstrtab_vchan_find_desc, ptr @__kstrtabns_vchan_find_desc }, section "___ksymtab_gpl+vchan_find_desc", align 4
@__kstrtab_vchan_dma_desc_free_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_vchan_dma_desc_free_list = external dso_local constant [0 x i8], align 1
@__ksymtab_vchan_dma_desc_free_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vchan_dma_desc_free_list to i32), ptr @__kstrtab_vchan_dma_desc_free_list, ptr @__kstrtabns_vchan_dma_desc_free_list }, section "___ksymtab_gpl+vchan_dma_desc_free_list", align 4
@__kstrtab_vchan_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_vchan_init = external dso_local constant [0 x i8], align 1
@__ksymtab_vchan_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vchan_init to i32), ptr @__kstrtab_vchan_init, ptr @__kstrtabns_vchan_init }, section "___ksymtab_gpl+vchan_init", align 4
@__UNIQUE_ID_author227 = internal constant [29 x i8] c"virt_dma.author=Russell King\00", section ".modinfo", align 1
@__UNIQUE_ID_file228 = internal constant [35 x i8] c"virt_dma.file=drivers/dma/virt-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [21 x i8] c"virt_dma.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__ksymtab_vchan_dma_desc_free_list, ptr @__ksymtab_vchan_find_desc, ptr @__ksymtab_vchan_init, ptr @__ksymtab_vchan_tx_desc_free, ptr @__ksymtab_vchan_tx_submit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vchan_tx_submit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.dma_chan, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1) #5
  store i32 %10, ptr %7, align 4
  store i32 %10, ptr %0, align 4
  %11 = getelementptr inbounds %struct.virt_dma_desc, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 5
  %13 = getelementptr inbounds %struct.virt_dma_desc, ptr %0, i32 0, i32 2, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  %17 = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 5, i32 1
  %18 = load ptr, ptr %17, align 4
  store ptr %11, ptr %17, align 4
  store ptr %12, ptr %11, align 4
  store ptr %18, ptr %13, align 4
  store volatile ptr %11, ptr %18, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vchan_tx_desc_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.virt_dma_desc, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.virt_dma_desc, ptr %0, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  %11 = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %0) #5
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @vchan_find_desc(ptr noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -68
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -68
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vchan_dma_desc_free_list(ptr nocapture readnone %0, ptr noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %29, label %5

5:                                                ; preds = %27, %2
  %6 = phi ptr [ %7, %27 ], [ %3, %2 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %11 = getelementptr i8, ptr %6, i32 -56
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %6, i32 -64
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 3
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #5
  %20 = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %6, ptr %22, align 4
  store ptr %21, ptr %6, align 4
  store ptr %20, ptr %8, align 4
  store volatile ptr %6, ptr %20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #5
  br label %27

23:                                               ; preds = %5
  %24 = getelementptr i8, ptr %6, i32 -68
  %25 = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef %24) #5
  br label %27

27:                                               ; preds = %23, %17
  %28 = icmp eq ptr %7, %1
  br i1 %28, label %29, label %5

29:                                               ; preds = %27, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vchan_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  store i32 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 1
  tail call void @tasklet_setup(ptr noundef %16, ptr noundef nonnull @vchan_complete) #5
  store ptr %1, ptr %0, align 4
  %17 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 8
  %18 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %19 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3, i32 1
  %20 = load ptr, ptr %19, align 4
  store ptr %17, ptr %19, align 4
  store ptr %18, ptr %17, align 4
  %21 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 8, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %17, ptr %20, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vchan_complete(ptr noundef %0) #0 {
  %2 = alloca %struct.dmaengine_result, align 8
  %3 = alloca %struct.dmaengine_result, align 8
  %4 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  store ptr %4, ptr %4, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 28
  call void @_raw_spin_lock_irq(ptr noundef %6) #5
  %7 = getelementptr i8, ptr %0, i32 56
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %0, i32 60
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %11, ptr %14, align 4
  store ptr %8, ptr %11, align 4
  store ptr %4, ptr %13, align 4
  store ptr %13, ptr %5, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %12, align 4
  br label %15

15:                                               ; preds = %10, %1
  %16 = getelementptr i8, ptr %0, i32 72
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  store ptr null, ptr %16, align 4
  %20 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi ptr [ %21, %19 ], [ null, %15 ]
  %28 = phi ptr [ %23, %19 ], [ null, %15 ]
  %29 = phi ptr [ %25, %19 ], [ null, %15 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %30 = load i16, ptr %6, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  store i64 0, ptr %3, align 8
  %32 = icmp eq ptr %28, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.virt_dma_desc, ptr %17, i32 0, i32 1
  %35 = icmp eq ptr %34, null
  %36 = select i1 %35, ptr %3, ptr %34
  call void %28(ptr noundef %29, ptr noundef %36) #5
  br label %40

37:                                               ; preds = %26
  %38 = icmp eq ptr %27, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  call void %27(ptr noundef %29) #5
  br label %40

40:                                               ; preds = %39, %37, %33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  %41 = load ptr, ptr %4, align 8
  %42 = icmp eq ptr %41, %4
  br i1 %42, label %82, label %43

43:                                               ; preds = %80, %40
  %44 = phi ptr [ %46, %80 ], [ %41, %40 ]
  %45 = getelementptr i8, ptr %44, i32 -68
  %46 = load ptr, ptr %44, align 4
  %47 = getelementptr i8, ptr %44, i32 -44
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %44, i32 -40
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %44, i32 -36
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr %struct.list_head, ptr %44, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %54, ptr %55, align 4
  store volatile ptr %46, ptr %54, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  store i64 0, ptr %2, align 8
  %56 = icmp eq ptr %50, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %43
  %58 = getelementptr i8, ptr %44, i32 -8
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, ptr %2, ptr %58
  call void %50(ptr noundef %52, ptr noundef %60) #5
  br label %64

61:                                               ; preds = %43
  %62 = icmp eq ptr %48, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %61
  call void %48(ptr noundef %52) #5
  br label %64

64:                                               ; preds = %63, %61, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  %65 = getelementptr i8, ptr %44, i32 -56
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %44, i32 -64
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 64
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.virt_dma_chan, ptr %66, i32 0, i32 3
  %73 = call i32 @_raw_spin_lock_irqsave(ptr noundef %72) #5
  %74 = getelementptr inbounds %struct.virt_dma_chan, ptr %66, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %44, ptr %76, align 4
  store ptr %75, ptr %44, align 4
  store ptr %74, ptr %53, align 4
  store volatile ptr %44, ptr %74, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %72, i32 noundef %73) #5
  br label %80

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.virt_dma_chan, ptr %66, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  call void %79(ptr noundef %45) #5
  br label %80

80:                                               ; preds = %77, %71
  %81 = icmp eq ptr %46, %4
  br i1 %81, label %82, label %43

82:                                               ; preds = %80, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!8 = !{i64 2149211316}
!9 = !{i64 2149207140}
!10 = !{i64 2149207215, i64 2149207242, i64 2149207289, i64 2149207311, i64 2149207339, i64 2149207359}
!11 = !{i64 603367}
!12 = !{i64 2149235460}
