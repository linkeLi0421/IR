; ModuleID = '/llk/IR/net/nfc/nci/spi.c_pt.bc'
source_filename = "../net/nfc/nci/spi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_spi_send:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_spi_send\22\09\09\09\09\09"
module asm "__kstrtabns_nci_spi_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_spi_allocate_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_spi_allocate_spi\22\09\09\09\09\09"
module asm "__kstrtabns_nci_spi_allocate_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_spi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_spi_read\22\09\09\09\09\09"
module asm "__kstrtabns_nci_spi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.sk_buff = type { %union.anon.67, %union.anon.70, %union.anon.71, [48 x i8], %union.anon.72, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.74, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr, %union.anon.69 }
%union.anon.69 = type { ptr }
%union.anon.70 = type { ptr }
%union.anon.71 = type { i64 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i32, ptr }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.76, i32, i32, i32, i16, i16, %union.anon.78, %union.anon.79, %union.anon.80, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.76 = type { i32 }
%union.anon.78 = type { i32 }
%union.anon.79 = type { i32 }
%union.anon.80 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nci_spi = type { ptr, ptr, i32, i32, i8, %struct.completion, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.87, i32, %struct.spinlock }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }

@__kstrtab_nci_spi_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_spi_send = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_spi_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_spi_send to i32), ptr @__kstrtab_nci_spi_send, ptr @__kstrtabns_nci_spi_send }, section "___ksymtab_gpl+nci_spi_send", align 4
@__kstrtab_nci_spi_allocate_spi = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_spi_allocate_spi = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_spi_allocate_spi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_spi_allocate_spi to i32), ptr @__kstrtab_nci_spi_allocate_spi, ptr @__kstrtabns_nci_spi_allocate_spi }, section "___ksymtab_gpl+nci_spi_allocate_spi", align 4
@__kstrtab_nci_spi_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_spi_read = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_spi_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_spi_read to i32), ptr @__kstrtab_nci_spi_read, ptr @__kstrtabns_nci_spi_read }, section "___ksymtab_gpl+nci_spi_read", align 4
@__UNIQUE_ID_license269 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_license269, ptr @__ksymtab_nci_spi_allocate_spi, ptr @__ksymtab_nci_spi_read, ptr @__ksymtab_nci_spi_send], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_spi_send(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.spi_message, align 4
  %5 = alloca %struct.spi_transfer, align 4
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca %struct.spi_transfer, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = tail call ptr @skb_push(ptr noundef %2, i32 noundef 4) #4
  store i8 1, ptr %10, align 1
  %11 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 4
  %13 = getelementptr i8, ptr %10, i32 1
  store i8 %12, ptr %13, align 1
  %14 = lshr i32 %9, 8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr i8, ptr %10, i32 2
  store i8 %15, ptr %16, align 1
  %17 = trunc i32 %9 to i8
  %18 = getelementptr i8, ptr %10, i32 3
  store i8 %17, ptr %18, align 1
  %19 = load i8, ptr %11, align 4
  %20 = icmp eq i8 %19, 1
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %8, align 8
  %25 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %23, i32 noundef %24) #4
  %26 = lshr i16 %25, 8
  %27 = trunc i16 %26 to i8
  %28 = tail call ptr @skb_put(ptr noundef %2, i32 noundef 1) #4
  store i8 %27, ptr %28, align 1
  %29 = trunc i16 %25 to i8
  %30 = tail call ptr @skb_put(ptr noundef %2, i32 noundef 1) #4
  store i8 %29, ptr %30, align 1
  br label %31

31:                                               ; preds = %21, %3
  %32 = icmp eq ptr %1, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #4
  %34 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %34, i8 0, i64 92, i1 false) #4
  store ptr %7, ptr %7, align 4
  %35 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 7
  store i8 2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 9
  store i16 %38, ptr %39, align 2
  %40 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 12
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %43, i8 0, i32 40, i1 false) #4
  store volatile ptr %6, ptr %6, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %45 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr inbounds %struct.spi_message, ptr %6, i32 0, i32 10, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18
  store ptr %47, ptr %44, align 4
  store ptr %6, ptr %47, align 4
  %48 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 18, i32 1
  store ptr %6, ptr %48, align 4
  store volatile ptr %47, ptr %6, align 4
  %49 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 @spi_sync(ptr noundef %50, ptr noundef nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %97

53:                                               ; preds = %33
  %54 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %1, i32 noundef 100) #4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %97, label %56

56:                                               ; preds = %53, %31
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #4
  %57 = icmp eq ptr %2, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %5, i8 0, i64 96, i1 false) #4
  br i1 %57, label %62, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  store ptr %60, ptr %5, align 4
  %61 = load i32, ptr %8, align 8
  br label %63

62:                                               ; preds = %56
  store ptr %5, ptr %5, align 4
  br label %63

63:                                               ; preds = %62, %58
  %64 = phi i32 [ 0, %62 ], [ %61, %58 ]
  %65 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 7
  store i8 0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = trunc i32 %68 to i16
  %70 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 9
  store i16 %69, ptr %70, align 2
  %71 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 9, i32 1
  store i8 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 12
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %75, i8 0, i32 40, i1 false) #4
  store volatile ptr %4, ptr %4, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %77 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10
  store volatile ptr %77, ptr %77, align 4
  %78 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10, i32 1
  store ptr %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  store ptr %79, ptr %76, align 4
  store ptr %4, ptr %79, align 4
  %80 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  store ptr %4, ptr %80, align 4
  store volatile ptr %79, ptr %4, align 4
  %81 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 @spi_sync(ptr noundef %82, ptr noundef nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %63
  %86 = load i8, ptr %11, align 4
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 5
  store i32 0, ptr %89, align 4
  %90 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %89, i32 noundef 5000) #4
  %91 = icmp slt i32 %90, 1
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 6
  %94 = load i8, ptr %93, align 4
  %95 = icmp eq i8 %94, 2
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %88
  br label %97

97:                                               ; preds = %96, %92, %85, %63, %53, %33
  %98 = phi i32 [ %51, %33 ], [ %83, %63 ], [ 0, %85 ], [ -5, %96 ], [ 0, %92 ], [ -62, %53 ]
  call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #4
  ret i32 %98
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nci_spi_allocate_spi(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 40, i32 noundef 3520) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.nci_spi, ptr %5, i32 0, i32 4
  store i8 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nci_spi, ptr %5, i32 0, i32 2
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nci_spi, ptr %5, i32 0, i32 3
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nci_spi, ptr %5, i32 0, i32 1
  store ptr %0, ptr %11, align 4
  store ptr %3, ptr %5, align 4
  %12 = getelementptr inbounds %struct.nci_spi, ptr %5, i32 0, i32 5
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nci_spi, ptr %5, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #4
  br label %14

14:                                               ; preds = %7, %4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nci_spi_read(ptr noundef %0) #0 {
  %2 = alloca %struct.spi_message, align 4
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.spi_transfer, align 4
  %6 = alloca %struct.spi_transfer, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  store i16 2, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #4
  %7 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %7, i8 0, i32 40, i1 false) #4
  store volatile ptr %2, ptr %2, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.spi_message, ptr %2, i32 0, i32 10, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %11, i8 0, i32 92, i1 false) #4
  %12 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 4
  %13 = load i8, ptr %12, align 4
  %14 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %13, ptr %14, align 1
  store ptr %3, ptr %5, align 4
  %15 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  store i32 2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 12
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18
  %20 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 18, i32 1
  store ptr %2, ptr %20, align 4
  store volatile ptr %19, ptr %2, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %6, i8 0, i32 96, i1 false) #4
  %21 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 1
  store ptr %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 2
  store i32 2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 7
  store i8 2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 12
  store i32 %17, ptr %24, align 4
  %25 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18
  store ptr %25, ptr %8, align 4
  store ptr %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18, i32 1
  store ptr %19, ptr %26, align 4
  store volatile ptr %25, ptr %19, align 4
  %27 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @spi_sync(ptr noundef %28, ptr noundef nonnull %2) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %89

31:                                               ; preds = %1
  %32 = load i8, ptr %12, align 4
  %33 = icmp eq i8 %32, 1
  %34 = load i8, ptr %4, align 2
  br i1 %33, label %35, label %44

35:                                               ; preds = %31
  %36 = and i8 %34, 63
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %38, 2
  %43 = add nuw nsw i32 %42, %41
  br label %51

44:                                               ; preds = %31
  %45 = zext i8 %34 to i32
  %46 = shl nuw nsw i32 %45, 8
  %47 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %46, %49
  br label %51

51:                                               ; preds = %44, %35
  %52 = phi i32 [ %43, %35 ], [ %50, %44 ]
  %53 = load ptr, ptr %0, align 4
  %54 = and i32 %52, 65535
  %55 = getelementptr inbounds %struct.nci_dev, ptr %53, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %54
  %58 = getelementptr inbounds %struct.nci_dev, ptr %53, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %57, %59
  %61 = call ptr @__alloc_skb(i32 noundef %60, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %89, label %63

63:                                               ; preds = %51
  %64 = load i32, ptr %55, align 4
  %65 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 17
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %66, i32 %64
  store ptr %67, ptr %65, align 4
  %68 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 14
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr i8, ptr %69, i32 %64
  store ptr %70, ptr %68, align 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %7, i8 0, i32 40, i1 false) #4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %8, align 4
  store volatile ptr %9, ptr %9, align 4
  store ptr %9, ptr %10, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %6, i8 0, i32 96, i1 false) #4
  %71 = call ptr @skb_put(ptr noundef nonnull %61, i32 noundef %54) #4
  store ptr %71, ptr %21, align 4
  store i32 %54, ptr %22, align 4
  %72 = load i8, ptr %23, align 4
  %73 = and i8 %72, -3
  store i8 %73, ptr %23, align 4
  %74 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = trunc i32 %75 to i16
  %77 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 9
  store i16 %76, ptr %77, align 2
  %78 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 9, i32 1
  store i8 0, ptr %78, align 4
  %79 = load i32, ptr %16, align 4
  store i32 %79, ptr %24, align 4
  %80 = load ptr, ptr %8, align 4
  store ptr %25, ptr %8, align 4
  store ptr %2, ptr %25, align 4
  store ptr %80, ptr %26, align 4
  store volatile ptr %25, ptr %80, align 4
  %81 = load ptr, ptr %27, align 4
  %82 = call i32 @spi_sync(ptr noundef %81, ptr noundef nonnull %2) #4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %63
  %85 = load i8, ptr %12, align 4
  %86 = icmp eq i8 %85, 1
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #4
  br label %127

88:                                               ; preds = %63
  call void @kfree_skb_reason(ptr noundef nonnull %61, i32 noundef 0) #4
  br label %89

89:                                               ; preds = %88, %51, %1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #4
  br label %136

90:                                               ; preds = %84
  %91 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %92 = load i8, ptr %91, align 1
  %93 = call ptr @skb_push(ptr noundef nonnull %61, i32 noundef 1) #4
  store i8 %92, ptr %93, align 1
  %94 = load i8, ptr %4, align 2
  %95 = call ptr @skb_push(ptr noundef nonnull %61, i32 noundef 1) #4
  store i8 %94, ptr %95, align 1
  %96 = load i8, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #4
  %97 = icmp eq i8 %96, 1
  br i1 %97, label %98, label %127

98:                                               ; preds = %90
  %99 = load ptr, ptr %65, align 4
  %100 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 5
  %101 = load i32, ptr %100, align 8
  %102 = add i32 %101, -2
  %103 = getelementptr i8, ptr %99, i32 %102
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 8
  %107 = add i32 %101, -1
  %108 = getelementptr i8, ptr %99, i32 %107
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = or i32 %106, %110
  %112 = call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %99, i32 noundef %102) #4
  %113 = zext i16 %112 to i32
  %114 = icmp eq i32 %111, %113
  %115 = load i32, ptr %100, align 8
  %116 = add i32 %115, -2
  call void @skb_trim(ptr noundef nonnull %61, i32 noundef %116) #4
  br i1 %114, label %118, label %117

117:                                              ; preds = %98
  call fastcc void @send_acknowledge(ptr noundef %0, i8 noundef zeroext 2)
  br label %136

118:                                              ; preds = %98
  %119 = load ptr, ptr %65, align 4
  %120 = load i8, ptr %119, align 1
  %121 = lshr i8 %120, 6
  %122 = call ptr @skb_pull(ptr noundef nonnull %61, i32 noundef 2) #4
  %123 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 6
  store i8 %121, ptr %123, align 4
  %124 = icmp ult i8 %120, 64
  br i1 %124, label %127, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 5
  call void @complete(ptr noundef %126) #4
  br label %127

127:                                              ; preds = %125, %118, %90, %87
  %128 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 5
  %129 = load i32, ptr %128, align 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  call void @kfree_skb_reason(ptr noundef nonnull %61, i32 noundef 0) #4
  br label %136

132:                                              ; preds = %127
  %133 = load i8, ptr %12, align 4
  %134 = icmp eq i8 %133, 1
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  call fastcc void @send_acknowledge(ptr noundef %0, i8 noundef zeroext 1)
  br label %136

136:                                              ; preds = %135, %132, %131, %117, %89
  %137 = phi ptr [ %61, %135 ], [ %61, %132 ], [ null, %131 ], [ %61, %117 ], [ null, %89 ]
  ret ptr %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @send_acknowledge(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.spi_message, align 4
  %4 = alloca %struct.spi_transfer, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.nci_dev, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nci_dev, ptr %5, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = tail call ptr @__alloc_skb(i32 noundef %10, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load i32, ptr %6, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  store ptr %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 %14
  store ptr %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %13, %2
  %22 = tail call ptr @skb_push(ptr noundef %11, i32 noundef 4) #4
  store i8 1, ptr %22, align 1
  %23 = getelementptr i8, ptr %22, i32 1
  store i8 1, ptr %23, align 1
  %24 = shl i8 %1, 6
  %25 = getelementptr i8, ptr %22, i32 2
  store i8 %24, ptr %25, align 1
  %26 = getelementptr i8, ptr %22, i32 3
  store i8 0, ptr %26, align 1
  %27 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %28, i32 noundef %30) #4
  %32 = lshr i16 %31, 8
  %33 = trunc i16 %32 to i8
  %34 = tail call ptr @skb_put(ptr noundef %11, i32 noundef 1) #4
  store i8 %33, ptr %34, align 1
  %35 = trunc i16 %31 to i8
  %36 = tail call ptr @skb_put(ptr noundef %11, i32 noundef 1) #4
  store i8 %35, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %4, i8 0, i64 96, i1 false) #4
  br i1 %12, label %40, label %37

37:                                               ; preds = %21
  %38 = load ptr, ptr %27, align 4
  store ptr %38, ptr %4, align 4
  %39 = load i32, ptr %29, align 8
  br label %41

40:                                               ; preds = %21
  store ptr %4, ptr %4, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ 0, %40 ], [ %39, %37 ]
  %43 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 7
  store i8 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = trunc i32 %46 to i16
  %48 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 9
  store i16 %47, ptr %48, align 2
  %49 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 9, i32 1
  store i8 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 12
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %53, i8 0, i32 40, i1 false) #4
  store volatile ptr %3, ptr %3, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %55 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10
  store volatile ptr %55, ptr %55, align 4
  %56 = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 10, i32 1
  store ptr %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18
  store ptr %57, ptr %54, align 4
  store ptr %3, ptr %57, align 4
  %58 = getelementptr inbounds %struct.spi_transfer, ptr %4, i32 0, i32 18, i32 1
  store ptr %3, ptr %58, align 4
  store volatile ptr %57, ptr %3, align 4
  %59 = getelementptr inbounds %struct.nci_spi, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 @spi_sync(ptr noundef %60, ptr noundef nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #4
  call void @kfree_skb_reason(ptr noundef %11, i32 noundef 0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
