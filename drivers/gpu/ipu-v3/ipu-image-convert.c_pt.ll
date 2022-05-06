; ModuleID = '/llk/IR/drivers/gpu/ipu-v3/ipu-image-convert.c_pt.bc'
source_filename = "../drivers/gpu/ipu-v3/ipu-image-convert.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_image_convert_enum_format:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_image_convert_enum_format\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_image_convert_enum_format:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_image_convert_adjust:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_image_convert_adjust\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_image_convert_adjust:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_image_convert_verify:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_image_convert_verify\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_image_convert_verify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_image_convert_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_image_convert_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_image_convert_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_image_convert_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_image_convert_queue\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_image_convert_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_image_convert_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_image_convert_abort\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_image_convert_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_image_convert_unprepare:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_image_convert_unprepare\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_image_convert_unprepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_image_convert:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_image_convert\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_image_convert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_image_convert_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_image_convert_sync\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_image_convert_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ipu_image_pixfmt = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ipu_image_convert_dma_chan = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon, i32, i32 }
%union.anon = type { i32 }
%struct.ipu_image = type { %struct.v4l2_pix_format, %struct.v4l2_rect, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.ipu_soc = type { ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.list_head, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ipu_image_convert_priv = type { [3 x %struct.ipu_image_convert_chan], ptr }
%struct.ipu_image_convert_chan = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.ipu_image_convert_ctx = type { ptr, ptr, ptr, %struct.ipu_image_convert_image, %struct.ipu_image_convert_image, %struct.ipu_ic_csc, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [2 x %struct.ipu_image_convert_dma_buf], i32, i8, %struct.completion, i8, i32, i32, [16 x i32], i32, %struct.list_head }
%struct.ipu_image_convert_image = type { %struct.ipu_image, i32, ptr, i32, i32, i32, [16 x %struct.ipu_image_tile] }
%struct.ipu_image_tile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipu_ic_csc = type { %struct.ipu_ic_colorspace, %struct.ipu_ic_colorspace, %struct.ipu_ic_csc_params }
%struct.ipu_ic_colorspace = type { i32, i32, i32 }
%struct.ipu_ic_csc_params = type { [3 x [3 x i16]], [3 x i16], i8 }
%struct.ipu_image_convert_dma_buf = type { ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ipu_image_convert_run = type { ptr, i32, i32, i32, %struct.list_head }
%struct.ipuv3_channel = type { i32, ptr, %struct.list_head }

@image_convert_formats = internal constant [16 x %struct.ipu_image_pixfmt] [%struct.ipu_image_pixfmt { i32 1346520914, i32 16, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.ipu_image_pixfmt { i32 859981650, i32 24, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.ipu_image_pixfmt { i32 861030210, i32 24, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.ipu_image_pixfmt { i32 876758866, i32 32, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.ipu_image_pixfmt { i32 877807426, i32 32, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.ipu_image_pixfmt { i32 875714626, i32 32, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.ipu_image_pixfmt { i32 875713112, i32 32, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.ipu_image_pixfmt { i32 875714642, i32 32, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.ipu_image_pixfmt { i32 875709016, i32 32, i32 0, i32 0, i8 0, i8 0, i8 0 }, %struct.ipu_image_pixfmt { i32 1448695129, i32 16, i32 2, i32 1, i8 0, i8 0, i8 0 }, %struct.ipu_image_pixfmt { i32 1498831189, i32 16, i32 2, i32 1, i8 0, i8 0, i8 0 }, %struct.ipu_image_pixfmt { i32 842093913, i32 12, i32 2, i32 2, i8 1, i8 0, i8 0 }, %struct.ipu_image_pixfmt { i32 842094169, i32 12, i32 2, i32 2, i8 1, i8 1, i8 0 }, %struct.ipu_image_pixfmt { i32 842094158, i32 12, i32 2, i32 2, i8 1, i8 0, i8 1 }, %struct.ipu_image_pixfmt { i32 1345466932, i32 16, i32 2, i32 1, i8 1, i8 0, i8 0 }, %struct.ipu_image_pixfmt { i32 909203022, i32 16, i32 2, i32 1, i8 1, i8 0, i8 1 }], align 4
@__kstrtab_ipu_image_convert_enum_format = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_image_convert_enum_format = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_image_convert_enum_format = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_image_convert_enum_format to i32), ptr @__kstrtab_ipu_image_convert_enum_format, ptr @__kstrtabns_ipu_image_convert_enum_format }, section "___ksymtab_gpl+ipu_image_convert_enum_format", align 4
@__kstrtab_ipu_image_convert_adjust = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_image_convert_adjust = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_image_convert_adjust = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_image_convert_adjust to i32), ptr @__kstrtab_ipu_image_convert_adjust, ptr @__kstrtabns_ipu_image_convert_adjust }, section "___ksymtab_gpl+ipu_image_convert_adjust", align 4
@__kstrtab_ipu_image_convert_verify = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_image_convert_verify = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_image_convert_verify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_image_convert_verify to i32), ptr @__kstrtab_ipu_image_convert_verify, ptr @__kstrtabns_ipu_image_convert_verify }, section "___ksymtab_gpl+ipu_image_convert_verify", align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: in/out formats invalid\0A\00", align 1
@__func__.ipu_image_convert_prepare = private unnamed_addr constant [26 x i8] c"ipu_image_convert_prepare\00", align 1
@__kstrtab_ipu_image_convert_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_image_convert_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_image_convert_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_image_convert_prepare to i32), ptr @__kstrtab_ipu_image_convert_prepare, ptr @__kstrtabns_ipu_image_convert_prepare }, section "___ksymtab_gpl+ipu_image_convert_prepare", align 4
@__kstrtab_ipu_image_convert_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_image_convert_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_image_convert_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_image_convert_queue to i32), ptr @__kstrtab_ipu_image_convert_queue, ptr @__kstrtabns_ipu_image_convert_queue }, section "___ksymtab_gpl+ipu_image_convert_queue", align 4
@__kstrtab_ipu_image_convert_abort = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_image_convert_abort = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_image_convert_abort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_image_convert_abort to i32), ptr @__kstrtab_ipu_image_convert_abort, ptr @__kstrtabns_ipu_image_convert_abort }, section "___ksymtab_gpl+ipu_image_convert_abort", align 4
@__kstrtab_ipu_image_convert_unprepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_image_convert_unprepare = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_image_convert_unprepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_image_convert_unprepare to i32), ptr @__kstrtab_ipu_image_convert_unprepare, ptr @__kstrtabns_ipu_image_convert_unprepare }, section "___ksymtab_gpl+ipu_image_convert_unprepare", align 4
@__kstrtab_ipu_image_convert = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_image_convert = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_image_convert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_image_convert to i32), ptr @__kstrtab_ipu_image_convert, ptr @__kstrtabns_ipu_image_convert }, section "___ksymtab_gpl+ipu_image_convert", align 4
@__kstrtab_ipu_image_convert_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_image_convert_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_image_convert_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_image_convert_sync to i32), ptr @__kstrtab_ipu_image_convert_sync, ptr @__kstrtabns_ipu_image_convert_sync }, section "___ksymtab_gpl+ipu_image_convert_sync", align 4
@image_convert_dma_chan = internal constant [3 x %struct.ipu_image_convert_dma_chan] [%struct.ipu_image_convert_dma_chan zeroinitializer, %struct.ipu_image_convert_dma_chan { i32 12, i32 21, i32 46, i32 49, i32 8, i32 9, i32 10 }, %struct.ipu_image_convert_dma_chan { i32 11, i32 22, i32 47, i32 50, i32 0, i32 0, i32 0 }], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"drivers/gpu/ipu-v3/ipu-image-convert.c\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"pixelformat not supported for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"invalid %s tile size: %ux%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"task %u: ctx %p: %s@[%d,%d]: y_off %08x, u_off %08x, v_off %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"task %u: ctx %p: %s@[%d,%d]: phys %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"failed to alloc dma buffer\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"could not acquire IC\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"could not acquire idmac channels\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"could not acquire idmac rotation channels\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"ipu-ic\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"could not acquire irq %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Unexpected rotation interrupt\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Received unknown irq %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"ipu_ic_task_init failed, %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"%s: timeout\0A\00", align 1
@__func__.__ipu_image_convert_abort = private unnamed_addr constant [26 x i8] c"__ipu_image_convert_abort\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_ipu_image_convert, ptr @__ksymtab_ipu_image_convert_abort, ptr @__ksymtab_ipu_image_convert_adjust, ptr @__ksymtab_ipu_image_convert_enum_format, ptr @__ksymtab_ipu_image_convert_prepare, ptr @__ksymtab_ipu_image_convert_queue, ptr @__ksymtab_ipu_image_convert_sync, ptr @__ksymtab_ipu_image_convert_unprepare, ptr @__ksymtab_ipu_image_convert_verify], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @ipu_image_convert_enum_format(i32 noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = icmp sgt i32 %0, 15
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr [16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 %0
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ipu_image_convert_adjust(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_pix_format, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %6 [
    i32 1346520914, label %22
    i32 859981650, label %7
    i32 861030210, label %8
    i32 876758866, label %9
    i32 877807426, label %10
    i32 875714626, label %11
    i32 875713112, label %12
    i32 875714642, label %13
    i32 875709016, label %14
    i32 1448695129, label %15
    i32 1498831189, label %16
    i32 842093913, label %17
    i32 842094169, label %18
    i32 842094158, label %19
    i32 1345466932, label %20
    i32 909203022, label %21
  ]

6:                                                ; preds = %3
  br label %22

7:                                                ; preds = %3
  br label %22

8:                                                ; preds = %3
  br label %22

9:                                                ; preds = %3
  br label %22

10:                                               ; preds = %3
  br label %22

11:                                               ; preds = %3
  br label %22

12:                                               ; preds = %3
  br label %22

13:                                               ; preds = %3
  br label %22

14:                                               ; preds = %3
  br label %22

15:                                               ; preds = %3
  br label %22

16:                                               ; preds = %3
  br label %22

17:                                               ; preds = %3
  br label %22

18:                                               ; preds = %3
  br label %22

19:                                               ; preds = %3
  br label %22

20:                                               ; preds = %3
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %3
  %23 = phi i1 [ false, %3 ], [ true, %6 ], [ false, %7 ], [ false, %8 ], [ false, %9 ], [ false, %10 ], [ false, %11 ], [ false, %12 ], [ false, %13 ], [ false, %14 ], [ false, %15 ], [ false, %16 ], [ false, %17 ], [ false, %18 ], [ false, %19 ], [ false, %20 ], [ false, %21 ]
  %24 = phi ptr [ @image_convert_formats, %3 ], [ null, %6 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 1), %7 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 2), %8 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 3), %9 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 4), %10 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 5), %11 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 6), %12 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 7), %13 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 8), %14 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 9), %15 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 10), %16 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 11), %17 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 12), %18 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 13), %19 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 14), %20 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 15), %21 ]
  %25 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %27 [
    i32 1346520914, label %43
    i32 859981650, label %28
    i32 861030210, label %29
    i32 876758866, label %30
    i32 877807426, label %31
    i32 875714626, label %32
    i32 875713112, label %33
    i32 875714642, label %34
    i32 875709016, label %35
    i32 1448695129, label %36
    i32 1498831189, label %37
    i32 842093913, label %38
    i32 842094169, label %39
    i32 842094158, label %40
    i32 1345466932, label %41
    i32 909203022, label %42
  ]

27:                                               ; preds = %22
  br label %43

28:                                               ; preds = %22
  br label %43

29:                                               ; preds = %22
  br label %43

30:                                               ; preds = %22
  br label %43

31:                                               ; preds = %22
  br label %43

32:                                               ; preds = %22
  br label %43

33:                                               ; preds = %22
  br label %43

34:                                               ; preds = %22
  br label %43

35:                                               ; preds = %22
  br label %43

36:                                               ; preds = %22
  br label %43

37:                                               ; preds = %22
  br label %43

38:                                               ; preds = %22
  br label %43

39:                                               ; preds = %22
  br label %43

40:                                               ; preds = %22
  br label %43

41:                                               ; preds = %22
  br label %43

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %22
  %44 = phi i1 [ false, %22 ], [ true, %27 ], [ false, %28 ], [ false, %29 ], [ false, %30 ], [ false, %31 ], [ false, %32 ], [ false, %33 ], [ false, %34 ], [ false, %35 ], [ false, %36 ], [ false, %37 ], [ false, %38 ], [ false, %39 ], [ false, %40 ], [ false, %41 ], [ false, %42 ]
  %45 = phi ptr [ @image_convert_formats, %22 ], [ null, %27 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 1), %28 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 2), %29 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 3), %30 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 4), %31 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 5), %32 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 6), %33 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 7), %34 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 8), %35 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 9), %36 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 10), %37 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 11), %38 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 12), %39 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 13), %40 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 14), %41 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 15), %42 ]
  br i1 %23, label %46, label %47

46:                                               ; preds = %43
  store i32 859981650, ptr %4, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi ptr [ %24, %43 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 1), %46 ]
  br i1 %44, label %49, label %50

49:                                               ; preds = %47
  store i32 859981650, ptr %25, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi ptr [ %45, %47 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 1), %49 ]
  %52 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 3
  store i32 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.v4l2_pix_format, ptr %0, i32 0, i32 3
  store i32 1, ptr %53, align 4
  %54 = and i32 %2, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = load i32, ptr %0, align 4
  %60 = lshr i32 %59, 2
  %61 = tail call i32 @llvm.umax.i32(i32 %58, i32 %60)
  store i32 %61, ptr %57, align 4
  br label %68

62:                                               ; preds = %50
  %63 = load i32, ptr %1, align 4
  %64 = load i32, ptr %0, align 4
  %65 = lshr i32 %64, 2
  %66 = tail call i32 @llvm.umax.i32(i32 %63, i32 %65)
  store i32 %66, ptr %1, align 4
  %67 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 1
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi ptr [ %67, %62 ], [ %1, %56 ]
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.v4l2_pix_format, ptr %0, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = lshr i32 %72, 2
  %74 = tail call i32 @llvm.umax.i32(i32 %70, i32 %73)
  store i32 %74, ptr %69, align 4
  %75 = and i32 %2, 6
  %76 = icmp eq i32 %75, 2
  %77 = select i1 %76, i32 3, i32 1
  %78 = load i32, ptr %0, align 4
  %79 = shl nsw i32 -1, %77
  %80 = xor i32 %79, -1
  %81 = sub nsw i32 15, %79
  %82 = and i32 %81, %79
  %83 = tail call i32 @llvm.umax.i32(i32 %82, i32 %78) #14
  %84 = tail call i32 @llvm.umin.i32(i32 %83, i32 4096) #14
  %85 = add nsw i32 %77, -1
  %86 = shl nuw nsw i32 1, %85
  %87 = add nuw nsw i32 %84, %86
  %88 = and i32 %87, %79
  store i32 %88, ptr %0, align 4
  %89 = getelementptr inbounds %struct.v4l2_pix_format, ptr %0, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = tail call i32 @llvm.umax.i32(i32 %90, i32 8) #14
  %92 = tail call i32 @llvm.umin.i32(i32 %91, i32 4096) #14
  %93 = add nuw nsw i32 %92, 1
  %94 = and i32 %93, 16382
  store i32 %94, ptr %89, align 4
  br i1 %55, label %116, label %95

95:                                               ; preds = %68
  %96 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %51, i32 0, i32 4
  %97 = load i8, ptr %96, align 4, !range !8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %116, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %51, i32 0, i32 6
  %101 = load i8, ptr %100, align 2, !range !8
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %51, i32 0, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 %105, 3
  %107 = icmp eq i32 %106, 0
  %108 = tail call i32 @llvm.ctlz.i32(i32 %106, i1 false) #14, !range !9
  %109 = sub nsw i32 31, %108
  %110 = select i1 %107, i32 -1, i32 %109
  br label %111

111:                                              ; preds = %103, %99
  %112 = phi i32 [ %110, %103 ], [ 3, %99 ]
  %113 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %51, i32 0, i32 6
  %114 = load i8, ptr %113, align 2, !range !8
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %111, %95, %68
  %117 = phi i32 [ 3, %68 ], [ %112, %111 ], [ 3, %95 ]
  %118 = phi i32 [ 2, %68 ], [ 8, %111 ], [ 8, %95 ]
  %119 = tail call i32 @llvm.ctlz.i32(i32 %118, i1 true) #14, !range !9
  %120 = xor i32 %119, 31
  br label %129

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %51, i32 0, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = shl i32 %123, 3
  %125 = icmp eq i32 %124, 0
  %126 = tail call i32 @llvm.ctlz.i32(i32 %124, i1 false) #14, !range !9
  %127 = sub nsw i32 31, %126
  %128 = select i1 %125, i32 -1, i32 %127
  br label %129

129:                                              ; preds = %121, %116
  %130 = phi i32 [ %117, %116 ], [ %112, %121 ]
  %131 = phi i32 [ %120, %116 ], [ %128, %121 ]
  %132 = load i32, ptr %1, align 4
  %133 = shl nsw i32 -1, %130
  %134 = sub i32 15, %133
  %135 = and i32 %134, %133
  %136 = tail call i32 @llvm.umax.i32(i32 %135, i32 %132) #14
  %137 = and i32 %133, 4096
  %138 = tail call i32 @llvm.umin.i32(i32 %136, i32 %137) #14
  %139 = icmp eq i32 %130, 0
  %140 = add nsw i32 %130, -1
  %141 = shl nuw nsw i32 1, %140
  %142 = add nuw i32 %138, %141
  %143 = and i32 %142, %133
  %144 = select i1 %139, i32 %138, i32 %143
  store i32 %144, ptr %1, align 4
  %145 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = shl nsw i32 -1, %131
  %148 = sub i32 7, %147
  %149 = and i32 %148, %147
  %150 = tail call i32 @llvm.umax.i32(i32 %149, i32 %146) #14
  %151 = and i32 %147, 4096
  %152 = tail call i32 @llvm.umin.i32(i32 %150, i32 %151) #14
  %153 = icmp eq i32 %131, 0
  %154 = add nsw i32 %131, -1
  %155 = shl nuw nsw i32 1, %154
  %156 = add nuw i32 %152, %155
  %157 = and i32 %156, %147
  %158 = select i1 %153, i32 %152, i32 %157
  store i32 %158, ptr %145, align 4
  %159 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %48, i32 0, i32 4
  %160 = load i8, ptr %159, align 4, !range !8
  %161 = icmp eq i8 %160, 0
  %162 = load i32, ptr %0, align 4
  br i1 %161, label %165, label %163

163:                                              ; preds = %129
  %164 = shl nuw nsw i32 2, %77
  br label %175

165:                                              ; preds = %129
  %166 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %48, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = mul i32 %167, %162
  %169 = lshr i32 %168, 3
  %170 = shl nuw nsw i32 2, %77
  %171 = mul i32 %167, %170
  %172 = ashr i32 %171, 3
  %173 = shl i32 %167, 12
  %174 = ashr exact i32 %173, 3
  br label %175

175:                                              ; preds = %165, %163
  %176 = phi i32 [ %172, %165 ], [ %164, %163 ]
  %177 = phi i32 [ %169, %165 ], [ %162, %163 ]
  %178 = phi i32 [ %174, %165 ], [ 4096, %163 ]
  %179 = add nsw i32 %176, %80
  %180 = and i32 %179, %79
  %181 = tail call i32 @llvm.umax.i32(i32 %180, i32 %177) #14
  %182 = tail call i32 @llvm.umin.i32(i32 %181, i32 %178) #14
  %183 = add i32 %182, %86
  %184 = and i32 %183, %79
  %185 = getelementptr inbounds %struct.v4l2_pix_format, ptr %0, i32 0, i32 4
  store i32 %184, ptr %185, align 4
  %186 = load i8, ptr %159, align 4, !range !8
  %187 = icmp eq i8 %186, 0
  %188 = load i32, ptr %89, align 4
  %189 = mul i32 %188, %184
  br i1 %187, label %195, label %190

190:                                              ; preds = %175
  %191 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %48, i32 0, i32 1
  %192 = load i32, ptr %191, align 4
  %193 = mul i32 %189, %192
  %194 = lshr i32 %193, 3
  br label %195

195:                                              ; preds = %190, %175
  %196 = phi i32 [ %194, %190 ], [ %189, %175 ]
  %197 = getelementptr inbounds %struct.v4l2_pix_format, ptr %0, i32 0, i32 5
  store i32 %196, ptr %197, align 4
  %198 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %51, i32 0, i32 4
  %199 = load i8, ptr %198, align 4, !range !8
  %200 = icmp eq i8 %199, 0
  %201 = load i32, ptr %1, align 4
  br i1 %200, label %202, label %207

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %51, i32 0, i32 1
  %204 = load i32, ptr %203, align 4
  %205 = mul i32 %204, %201
  %206 = lshr i32 %205, 3
  br label %207

207:                                              ; preds = %202, %195
  %208 = phi i32 [ %206, %202 ], [ %201, %195 ]
  %209 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 4
  store i32 %208, ptr %209, align 4
  %210 = load i8, ptr %198, align 4, !range !8
  %211 = icmp eq i8 %210, 0
  %212 = load i32, ptr %145, align 4
  %213 = mul i32 %212, %208
  br i1 %211, label %219, label %214

214:                                              ; preds = %207
  %215 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %51, i32 0, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = mul i32 %213, %216
  %218 = lshr i32 %217, 3
  br label %219

219:                                              ; preds = %214, %207
  %220 = phi i32 [ %218, %214 ], [ %213, %207 ]
  %221 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 5
  store i32 %220, ptr %221, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ipu_image_convert_verify(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca %struct.ipu_image, align 4
  %5 = alloca %struct.ipu_image, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %4, ptr noundef align 4 dereferenceable(80) %0, i32 80, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %5, ptr noundef align 4 dereferenceable(80) %1, i32 80, i1 false)
  call void @ipu_image_convert_adjust(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %2)
  %6 = load i32, ptr %4, align 4
  %7 = load i32, ptr %0, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_pix_format, ptr %4, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_pix_format, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load i32, ptr %5, align 4
  %17 = load i32, ptr %1, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.v4l2_pix_format, ptr %5, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %21, %23
  %25 = select i1 %24, i32 0, i32 -22
  br label %26

26:                                               ; preds = %19, %15, %9, %3
  %27 = phi i32 [ -22, %15 ], [ -22, %9 ], [ -22, %3 ], [ %25, %19 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #14
  ret i32 %27
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipu_image_convert_prepare(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #5 {
  %8 = alloca %struct.ipu_image, align 4
  %9 = alloca %struct.ipu_image, align 4
  %10 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 22
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ne ptr %2, null
  %13 = icmp ne ptr %3, null
  %14 = and i1 %12, %13
  %15 = icmp ne ptr %5, null
  %16 = and i1 %14, %15
  %17 = add i32 %1, -1
  %18 = icmp ult i32 %17, 2
  %19 = and i1 %18, %16
  br i1 %19, label %20, label %299

20:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %9) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %8, ptr noundef nonnull align 4 dereferenceable(80) %2, i32 80, i1 false) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %9, ptr noundef nonnull align 4 dereferenceable(80) %3, i32 80, i1 false) #14
  call void @ipu_image_convert_adjust(ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %4) #14
  %21 = load i32, ptr %8, align 4
  %22 = load i32, ptr %2, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.v4l2_pix_format, ptr %8, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.v4l2_pix_format, ptr %2, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i32, ptr %9, align 4
  %32 = load i32, ptr %3, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.v4l2_pix_format, ptr %9, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.v4l2_pix_format, ptr %3, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %34, %30, %24, %20
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #14
  %41 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %11, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ipu_image_convert_prepare) #15
  br label %299

44:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #14
  %45 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %11, i32 0, i32 %1
  %46 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 1732) #16
  %48 = icmp eq ptr %47, null
  br i1 %48, label %299, label %49

49:                                               ; preds = %44
  store ptr %45, ptr %47, align 8
  %50 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 16
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %51, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #14
  %52 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 6
  store i32 %4, ptr %52, align 8
  %53 = getelementptr inbounds %struct.ipu_image, ptr %2, i32 0, i32 1, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ipu_image, ptr %3, i32 0, i32 1, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.ipu_image, ptr %3, i32 0, i32 1, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %4, 4
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 %58, i32 %56
  %62 = select i1 %60, i32 %56, i32 %58
  %63 = icmp eq i32 %62, 0
  %64 = icmp eq i32 %61, 0
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %71, label %66, !prof !10

66:                                               ; preds = %49
  %67 = getelementptr inbounds %struct.ipu_image, ptr %2, i32 0, i32 1, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = shl i32 %62, 1
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %72, label %77

71:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 428, i32 noundef 9, ptr noundef null) #14
  br label %296

72:                                               ; preds = %77, %66
  %73 = phi i32 [ 0, %66 ], [ %81, %77 ]
  %74 = phi i32 [ %68, %66 ], [ %80, %77 ]
  %75 = shl i32 %61, 1
  %76 = icmp ult i32 %54, %75
  br i1 %76, label %89, label %83

77:                                               ; preds = %77, %66
  %78 = phi i32 [ %80, %77 ], [ %68, %66 ]
  %79 = phi i32 [ %81, %77 ], [ 0, %66 ]
  %80 = lshr i32 %78, 1
  %81 = add i32 %79, 1
  %82 = icmp ult i32 %80, %69
  br i1 %82, label %72, label %77

83:                                               ; preds = %83, %72
  %84 = phi i32 [ %86, %83 ], [ %54, %72 ]
  %85 = phi i32 [ %87, %83 ], [ 0, %72 ]
  %86 = lshr i32 %84, 1
  %87 = add i32 %85, 1
  %88 = icmp ult i32 %86, %75
  br i1 %88, label %89, label %83

89:                                               ; preds = %83, %72
  %90 = phi i32 [ 0, %72 ], [ %87, %83 ]
  %91 = phi i32 [ %54, %72 ], [ %86, %83 ]
  %92 = shl i32 %74, 13
  %93 = add i32 %92, -8192
  %94 = add i32 %62, -1
  %95 = udiv i32 %93, %94
  %96 = shl i32 %91, 13
  %97 = add i32 %96, -8192
  %98 = add i32 %61, -1
  %99 = udiv i32 %97, %98
  %100 = icmp ugt i32 %73, 2
  %101 = icmp ugt i32 %90, 2
  %102 = select i1 %100, i1 true, i1 %101
  %103 = icmp ugt i32 %95, 16383
  %104 = select i1 %102, i1 true, i1 %103
  %105 = icmp ugt i32 %99, 16383
  %106 = select i1 %104, i1 true, i1 %105
  br i1 %106, label %296, label %107

107:                                              ; preds = %89
  %108 = tail call i32 @llvm.umax.i32(i32 %91, i32 %61) #14
  %109 = add i32 %108, -1
  %110 = sdiv i32 %109, 1024
  %111 = add nsw i32 %110, 1
  %112 = tail call i32 @llvm.umax.i32(i32 %74, i32 %62) #14
  %113 = add i32 %112, -1
  %114 = sdiv i32 %113, 1024
  %115 = add nsw i32 %114, 1
  %116 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 7
  store i32 %73, ptr %116, align 4
  %117 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 8
  store i32 %90, ptr %117, align 8
  %118 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 9
  store i32 %95, ptr %118, align 4
  %119 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 10
  store i32 %99, ptr %119, align 8
  %120 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 3, i32 5
  store i32 %115, ptr %120, align 4
  %121 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 3, i32 4
  store i32 %111, ptr %121, align 8
  %122 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 3
  %123 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 4
  %124 = select i1 %60, i32 %111, i32 %115
  %125 = select i1 %60, i32 %115, i32 %111
  %126 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 4, i32 4
  store i32 %124, ptr %126, align 4
  %127 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 4, i32 5
  store i32 %125, ptr %127, align 8
  %128 = mul i32 %124, %125
  %129 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 18
  store i32 %128, ptr %129, align 8
  %130 = tail call fastcc i32 @fill_image(ptr noundef nonnull %47, ptr noundef %122, ptr noundef nonnull %2, i32 noundef 0)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %296

132:                                              ; preds = %107
  %133 = tail call fastcc i32 @fill_image(ptr noundef nonnull %47, ptr noundef %123, ptr noundef nonnull %3, i32 noundef 1)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %296

135:                                              ; preds = %132
  tail call fastcc void @calc_out_tile_map(ptr noundef nonnull %47)
  tail call fastcc void @find_seams(ptr noundef nonnull %47, ptr noundef %122, ptr noundef %123)
  %136 = tail call fastcc i32 @calc_tile_dimensions(ptr noundef nonnull %47, ptr noundef %122)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %296

138:                                              ; preds = %135
  %139 = tail call fastcc i32 @calc_tile_offsets(ptr noundef nonnull %47, ptr noundef %122)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %296

141:                                              ; preds = %138
  %142 = tail call fastcc i32 @calc_tile_dimensions(ptr noundef nonnull %47, ptr noundef %123)
  %143 = tail call fastcc i32 @calc_tile_offsets(ptr noundef nonnull %47, ptr noundef %123)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %296

145:                                              ; preds = %141
  tail call fastcc void @calc_tile_resize_coefficients(ptr noundef nonnull %47)
  %146 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 5
  %147 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 3, i32 0, i32 0, i32 9
  %148 = load i32, ptr %147, align 8
  %149 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 3, i32 0, i32 0, i32 10
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 3, i32 2
  %152 = load ptr, ptr %151, align 8
  %153 = load i32, ptr %152, align 4
  %154 = tail call i32 @ipu_pixelformat_to_colorspace(i32 noundef %153) #14
  %155 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 4, i32 0, i32 0, i32 9
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 4, i32 0, i32 0, i32 10
  %158 = load i32, ptr %157, align 8
  %159 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 4, i32 2
  %160 = load ptr, ptr %159, align 4
  %161 = load i32, ptr %160, align 4
  %162 = tail call i32 @ipu_pixelformat_to_colorspace(i32 noundef %161) #14
  %163 = tail call i32 @ipu_ic_calc_csc(ptr noundef %146, i32 noundef %148, i32 noundef %150, i32 noundef %154, i32 noundef %156, i32 noundef %158, i32 noundef %162) #14
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %296

165:                                              ; preds = %145
  %166 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 1
  store ptr %5, ptr %166, align 4
  %167 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 2
  store ptr %6, ptr %167, align 8
  %168 = load i32, ptr %129, align 8
  %169 = icmp ugt i32 %168, 1
  br i1 %169, label %170, label %180

170:                                              ; preds = %165
  %171 = load ptr, ptr %151, align 8
  %172 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %171, i32 0, i32 4
  %173 = load i8, ptr %172, align 4, !range !8
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %170
  %176 = load ptr, ptr %159, align 4
  %177 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %176, i32 0, i32 4
  %178 = load i8, ptr %177, align 4, !range !8
  %179 = icmp eq i8 %178, 0
  br label %182

180:                                              ; preds = %165
  %181 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 17
  br label %214

182:                                              ; preds = %175, %170
  %183 = phi i1 [ %179, %175 ], [ false, %170 ]
  %184 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 17
  %185 = zext i1 %183 to i8
  store i8 %185, ptr %184, align 4
  %186 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 3, i32 6
  %187 = load i32, ptr %186, align 8
  %188 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 3, i32 6, i32 0, i32 1
  %189 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 4, i32 6
  %190 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 4, i32 6, i32 0, i32 1
  br label %194

191:                                              ; preds = %209
  %192 = add nuw i32 %195, 1
  %193 = icmp eq i32 %192, %168
  br i1 %193, label %216, label %194

194:                                              ; preds = %191, %182
  %195 = phi i32 [ 1, %182 ], [ %192, %191 ]
  %196 = getelementptr %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 3, i32 6, i32 %195
  %197 = load i32, ptr %196, align 8
  %198 = icmp eq i32 %197, %187
  br i1 %198, label %199, label %214

199:                                              ; preds = %194
  %200 = getelementptr %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 3, i32 6, i32 %195, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = load i32, ptr %188, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %199
  %205 = getelementptr %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 4, i32 6, i32 %195
  %206 = load i32, ptr %205, align 4
  %207 = load i32, ptr %189, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = getelementptr %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 4, i32 6, i32 %195, i32 1
  %211 = load i32, ptr %210, align 8
  %212 = load i32, ptr %190, align 8
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %191, label %214

214:                                              ; preds = %209, %204, %199, %194, %180
  %215 = phi ptr [ %181, %180 ], [ %184, %209 ], [ %184, %204 ], [ %184, %199 ], [ %184, %194 ]
  store i8 0, ptr %215, align 4
  br label %216

216:                                              ; preds = %214, %191
  %217 = phi ptr [ %215, %214 ], [ %184, %191 ]
  %218 = load i32, ptr %120, align 4
  %219 = icmp ugt i32 %218, 1
  br i1 %219, label %220, label %232

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 11
  %222 = load i32, ptr %221, align 4
  br label %226

223:                                              ; preds = %226
  %224 = add nuw i32 %227, 1
  %225 = icmp eq i32 %224, %218
  br i1 %225, label %232, label %226

226:                                              ; preds = %223, %220
  %227 = phi i32 [ 1, %220 ], [ %224, %223 ]
  %228 = getelementptr %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 11, i32 %227
  %229 = load i32, ptr %228, align 4
  %230 = icmp eq i32 %229, %222
  br i1 %230, label %223, label %231

231:                                              ; preds = %226
  store i8 0, ptr %217, align 4
  br label %232

232:                                              ; preds = %231, %223, %216
  %233 = load i32, ptr %121, align 8
  %234 = icmp ugt i32 %233, 1
  br i1 %234, label %235, label %247

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 12
  %237 = load i32, ptr %236, align 4
  br label %241

238:                                              ; preds = %241
  %239 = add nuw i32 %242, 1
  %240 = icmp eq i32 %239, %233
  br i1 %240, label %247, label %241

241:                                              ; preds = %238, %235
  %242 = phi i32 [ 1, %235 ], [ %239, %238 ]
  %243 = getelementptr %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 12, i32 %242
  %244 = load i32, ptr %243, align 4
  %245 = icmp eq i32 %244, %237
  br i1 %245, label %238, label %246

246:                                              ; preds = %241
  store i8 0, ptr %217, align 4
  br label %247

247:                                              ; preds = %246, %238, %232
  %248 = load i32, ptr %52, align 8
  %249 = and i32 %248, 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %274, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 4, i32 6, i32 0, i32 4
  %253 = load i32, ptr %252, align 4
  br i1 %169, label %254, label %262

254:                                              ; preds = %254, %251
  %255 = phi i32 [ %259, %254 ], [ %253, %251 ]
  %256 = phi i32 [ %260, %254 ], [ 1, %251 ]
  %257 = getelementptr %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 4, i32 6, i32 %256, i32 4
  %258 = load i32, ptr %257, align 4
  %259 = tail call i32 @llvm.umax.i32(i32 %258, i32 %255)
  %260 = add nuw i32 %256, 1
  %261 = icmp eq i32 %260, %168
  br i1 %261, label %262, label %254

262:                                              ; preds = %254, %251
  %263 = phi i32 [ %253, %251 ], [ %259, %254 ]
  %264 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 13
  %265 = tail call fastcc i32 @alloc_dma_buf(ptr noundef %11, ptr noundef %264, i32 noundef %263)
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %296

267:                                              ; preds = %262
  %268 = load i8, ptr %217, align 4, !range !8
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %267
  %271 = getelementptr %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 13, i32 1
  %272 = tail call fastcc i32 @alloc_dma_buf(ptr noundef %11, ptr noundef %271, i32 noundef %263)
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %293

274:                                              ; preds = %270, %267, %247
  %275 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %11, i32 0, i32 %1, i32 12
  %276 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %275) #14
  %277 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %11, i32 0, i32 %1, i32 13
  %278 = load volatile ptr, ptr %277, align 4
  %279 = icmp eq ptr %278, %277
  %280 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 22
  %281 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %11, i32 0, i32 %1, i32 13, i32 1
  %282 = load ptr, ptr %281, align 4
  store ptr %280, ptr %281, align 4
  store ptr %277, ptr %280, align 4
  %283 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 22, i32 1
  store ptr %282, ptr %283, align 8
  store volatile ptr %280, ptr %282, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %275, i32 noundef %276) #14
  br i1 %279, label %284, label %299

284:                                              ; preds = %274
  %285 = tail call fastcc i32 @get_ipu_resources(ptr noundef %45)
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %299, label %287

287:                                              ; preds = %284
  %288 = getelementptr %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 13, i32 1
  tail call fastcc void @free_dma_buf(ptr noundef %11, ptr noundef %288)
  %289 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %275) #14
  %290 = load ptr, ptr %283, align 8
  %291 = load ptr, ptr %280, align 4
  %292 = getelementptr inbounds %struct.list_head, ptr %291, i32 0, i32 1
  store ptr %290, ptr %292, align 4
  store volatile ptr %291, ptr %290, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %280, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %283, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %275, i32 noundef %289) #14
  br label %293

293:                                              ; preds = %287, %270
  %294 = phi i32 [ %285, %287 ], [ %272, %270 ]
  %295 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %47, i32 0, i32 13
  tail call fastcc void @free_dma_buf(ptr noundef %11, ptr noundef %295)
  br label %296

296:                                              ; preds = %293, %262, %145, %141, %138, %135, %132, %107, %89, %71
  %297 = phi i32 [ %130, %107 ], [ %133, %132 ], [ %136, %135 ], [ %139, %138 ], [ %143, %141 ], [ %163, %145 ], [ %294, %293 ], [ %265, %262 ], [ -22, %71 ], [ -22, %89 ]
  tail call void @kfree(ptr noundef nonnull %47) #14
  %298 = inttoptr i32 %297 to ptr
  br label %299

299:                                              ; preds = %296, %284, %274, %44, %40, %7
  %300 = phi ptr [ inttoptr (i32 -22 to ptr), %40 ], [ %298, %296 ], [ %47, %284 ], [ %47, %274 ], [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -12 to ptr), %44 ]
  ret ptr %300
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fill_image(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #5 {
  %5 = load ptr, ptr %0, align 4
  %6 = load ptr, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(80) %1, ptr noundef align 4 dereferenceable(80) %2, i32 80, i1 false)
  %7 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 1
  store i32 %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.v4l2_pix_format, ptr %2, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %25 [
    i32 1346520914, label %32
    i32 859981650, label %10
    i32 861030210, label %11
    i32 876758866, label %12
    i32 877807426, label %13
    i32 875714626, label %14
    i32 875713112, label %15
    i32 875714642, label %16
    i32 875709016, label %17
    i32 1448695129, label %18
    i32 1498831189, label %19
    i32 842093913, label %20
    i32 842094169, label %21
    i32 842094158, label %22
    i32 1345466932, label %23
    i32 909203022, label %24
  ]

10:                                               ; preds = %4
  br label %32

11:                                               ; preds = %4
  br label %32

12:                                               ; preds = %4
  br label %32

13:                                               ; preds = %4
  br label %32

14:                                               ; preds = %4
  br label %32

15:                                               ; preds = %4
  br label %32

16:                                               ; preds = %4
  br label %32

17:                                               ; preds = %4
  br label %32

18:                                               ; preds = %4
  br label %32

19:                                               ; preds = %4
  br label %32

20:                                               ; preds = %4
  br label %32

21:                                               ; preds = %4
  br label %32

22:                                               ; preds = %4
  br label %32

23:                                               ; preds = %4
  br label %32

24:                                               ; preds = %4
  br label %32

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 2
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %6, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq i32 %3, 1
  %31 = select i1 %30, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull %31) #15
  br label %45

32:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %4
  %33 = phi ptr [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 15), %24 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 14), %23 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 13), %22 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 12), %21 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 11), %20 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 10), %19 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 9), %18 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 8), %17 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 7), %16 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 6), %15 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 5), %14 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 4), %13 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 3), %12 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 2), %11 ], [ getelementptr inbounds ([16 x %struct.ipu_image_pixfmt], ptr @image_convert_formats, i32 0, i32 1), %10 ], [ @image_convert_formats, %4 ]
  %34 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 2
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %33, i32 0, i32 4
  %36 = load i8, ptr %35, align 4, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, ptr %1, align 4
  %40 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 3
  store i32 %39, ptr %40, align 4
  br label %45

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  br label %45

45:                                               ; preds = %41, %38, %25
  %46 = phi i32 [ -22, %25 ], [ 0, %41 ], [ 0, %38 ]
  ret i32 %46
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @calc_out_tile_map(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 3, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %73, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 3, i32 5
  %7 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 4, i32 4
  %9 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 4, i32 5
  %10 = load i32, ptr %6, align 4
  br label %11

11:                                               ; preds = %67, %5
  %12 = phi i32 [ %3, %5 ], [ %68, %67 ]
  %13 = phi i32 [ %10, %5 ], [ %69, %67 ]
  %14 = phi i32 [ 0, %5 ], [ %70, %67 ]
  %15 = phi i32 [ 0, %5 ], [ %71, %67 ]
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %67, label %17

17:                                               ; preds = %11
  %18 = shl i32 %15, 1
  %19 = or i32 %18, 1
  br label %20

20:                                               ; preds = %58, %17
  %21 = phi i32 [ %13, %17 ], [ %63, %58 ]
  %22 = phi i32 [ %14, %17 ], [ %61, %58 ]
  %23 = phi i32 [ 0, %17 ], [ %62, %58 ]
  %24 = load i32, ptr %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = mul i32 %21, %15
  %28 = add i32 %27, %23
  br label %58

29:                                               ; preds = %20
  %30 = load i32, ptr %2, align 4
  %31 = sub i32 %19, %30
  %32 = shl i32 %23, 1
  %33 = or i32 %32, 1
  %34 = sub i32 %33, %21
  %35 = and i32 %24, 4
  %36 = icmp eq i32 %35, 0
  %37 = sub i32 0, %31
  %38 = select i1 %36, i32 %31, i32 %34
  %39 = select i1 %36, i32 %34, i32 %37
  %40 = and i32 %24, 2
  %41 = icmp eq i32 %40, 0
  %42 = sub i32 0, %39
  %43 = select i1 %41, i32 %39, i32 %42
  %44 = and i32 %24, 1
  %45 = icmp eq i32 %44, 0
  %46 = sub i32 0, %38
  %47 = select i1 %45, i32 %38, i32 %46
  %48 = load i32, ptr %8, align 4
  %49 = add i32 %48, -1
  %50 = add i32 %49, %47
  %51 = load i32, ptr %9, align 4
  %52 = add i32 %51, -1
  %53 = add i32 %52, %43
  %54 = sdiv i32 %50, 2
  %55 = sdiv i32 %53, 2
  %56 = mul i32 %54, %51
  %57 = add i32 %56, %55
  br label %58

58:                                               ; preds = %29, %26
  %59 = phi i32 [ %28, %26 ], [ %57, %29 ]
  %60 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 20, i32 %22
  store i32 %59, ptr %60, align 4
  %61 = add i32 %22, 1
  %62 = add nuw i32 %23, 1
  %63 = load i32, ptr %6, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %20, label %65

65:                                               ; preds = %58
  %66 = load i32, ptr %2, align 4
  br label %67

67:                                               ; preds = %65, %11
  %68 = phi i32 [ %12, %11 ], [ %66, %65 ]
  %69 = phi i32 [ 0, %11 ], [ %63, %65 ]
  %70 = phi i32 [ %14, %11 ], [ %61, %65 ]
  %71 = add nuw i32 %15, 1
  %72 = icmp ult i32 %71, %68
  br i1 %72, label %11, label %73

73:                                               ; preds = %67, %1
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @find_seams(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.ipu_image, ptr %2, i32 0, i32 1, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ipu_image, ptr %2, i32 0, i32 1, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %9, i32 0, i32 4
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %9, i32 0, i32 6
  %15 = load i8, ptr %14, align 2, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %9, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 3
  br label %28

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %9, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 32
  %25 = icmp eq i32 %23, 16
  %26 = select i1 %25, i32 4, i32 8
  %27 = select i1 %24, i32 2, i32 %26
  br label %28

28:                                               ; preds = %21, %17, %13
  %29 = phi i32 [ %27, %21 ], [ %20, %17 ], [ 8, %13 ]
  %30 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %9, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, 1
  %33 = select i1 %32, i32 -16384, i32 -8192
  %34 = select i1 %32, i32 2, i32 1
  %35 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %2, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %36, i32 0, i32 4
  %38 = load i8, ptr %37, align 4, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %36, i32 0, i32 6
  %42 = load i8, ptr %41, align 2, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %36, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = shl i32 %46, 3
  br label %55

48:                                               ; preds = %28
  %49 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %36, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 32
  %52 = icmp eq i32 %50, 16
  %53 = select i1 %52, i32 4, i32 8
  %54 = select i1 %51, i32 2, i32 %53
  br label %55

55:                                               ; preds = %48, %44, %40
  %56 = phi i32 [ %54, %48 ], [ %47, %44 ], [ 8, %40 ]
  %57 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %36, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = icmp sgt i32 %58, 1
  %60 = select i1 %59, i32 2, i32 1
  %61 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %2, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %62, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %55
  %67 = and i32 %64, 6
  %68 = icmp eq i32 %67, 2
  %69 = select i1 %68, i32 8, i32 2
  %70 = and i32 %64, 4
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 3
  %75 = load i32, ptr %74, align 4
  br i1 %71, label %114, label %109

76:                                               ; preds = %55
  %77 = and i32 %64, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 3
  %83 = load i32, ptr %82, align 4
  br label %114

84:                                               ; preds = %76
  br i1 %39, label %102, label %85

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %36, i32 0, i32 6
  %87 = load i8, ptr %86, align 2, !range !8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %36, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = shl i32 %91, 3
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i32 [ %92, %89 ], [ 8, %85 ]
  %95 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %36, i32 0, i32 6
  %96 = load i8, ptr %95, align 2, !range !8
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %36, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = shl i32 %100, 3
  br label %102

102:                                              ; preds = %98, %93, %84
  %103 = phi i32 [ %101, %98 ], [ 8, %84 ], [ 8, %93 ]
  %104 = phi i32 [ %94, %98 ], [ 8, %84 ], [ %94, %93 ]
  %105 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 3
  %108 = load i32, ptr %107, align 4
  br label %109

109:                                              ; preds = %102, %66
  %110 = phi i32 [ %75, %66 ], [ %108, %102 ]
  %111 = phi i32 [ %73, %66 ], [ %106, %102 ]
  %112 = phi i32 [ 2, %66 ], [ %103, %102 ]
  %113 = phi i32 [ %69, %66 ], [ %104, %102 ]
  br label %114

114:                                              ; preds = %109, %79, %66
  %115 = phi i32 [ %110, %109 ], [ %75, %66 ], [ %83, %79 ]
  %116 = phi i32 [ %111, %109 ], [ %73, %66 ], [ %81, %79 ]
  %117 = phi i32 [ %5, %109 ], [ %7, %66 ], [ %7, %79 ]
  %118 = phi i32 [ %112, %109 ], [ %56, %66 ], [ %56, %79 ]
  %119 = phi i32 [ %113, %109 ], [ %60, %66 ], [ %60, %79 ]
  %120 = phi i32 [ %112, %109 ], [ %69, %66 ], [ 8, %79 ]
  %121 = phi i32 [ %113, %109 ], [ 2, %66 ], [ 2, %79 ]
  %122 = phi i32 [ %7, %109 ], [ %5, %66 ], [ %5, %79 ]
  %123 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 5
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, -1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %114
  %128 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 4
  %129 = load i32, ptr %128, align 4
  br label %253

130:                                              ; preds = %114
  %131 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 7
  %132 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 9
  %133 = add i32 %118, -1
  %134 = shl i32 %29, 13
  %135 = lshr exact i32 %134, 1
  %136 = sub i32 0, %134
  %137 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 4
  br label %138

138:                                              ; preds = %251, %130
  %139 = phi i32 [ %124, %130 ], [ %252, %251 ]
  %140 = phi i32 [ %64, %130 ], [ %250, %251 ]
  %141 = phi i32 [ %125, %130 ], [ %248, %251 ]
  %142 = phi i32 [ %122, %130 ], [ %214, %251 ]
  %143 = phi i32 [ %116, %130 ], [ %213, %251 ]
  %144 = and i32 %140, 2
  %145 = icmp eq i32 %144, 0
  %146 = and i32 %140, 6
  %147 = icmp eq i32 %146, 2
  %148 = add i32 %139, -1
  %149 = icmp ult i32 %141, %148
  %150 = select i1 %149, i1 %145, i1 false
  %151 = select i1 %150, i32 1, i32 %120
  %152 = load i32, ptr %131, align 4
  %153 = load i32, ptr %132, align 4
  %154 = mul i32 %141, %118
  %155 = add i32 %142, -1024
  %156 = tail call i32 @llvm.smax.i32(i32 %154, i32 %155) #14
  %157 = shl i32 %141, 10
  %158 = or i32 %157, 1
  %159 = tail call i32 @llvm.umin.i32(i32 %158, i32 %142) #14
  %160 = mul i32 %141, %29
  %161 = shl i32 1024, %152
  %162 = sub i32 %143, %161
  %163 = tail call i32 @llvm.smax.i32(i32 %160, i32 %162) #14
  %164 = mul i32 %161, %141
  %165 = or i32 %164, 1
  %166 = tail call i32 @llvm.umin.i32(i32 %165, i32 %143) #14
  %167 = add i32 %156, -1
  %168 = or i32 %167, %133
  %169 = add i32 %168, 1
  %170 = icmp ult i32 %169, %159
  br i1 %170, label %171, label %212

171:                                              ; preds = %138
  %172 = icmp ugt i32 %151, 1
  %173 = select i1 %147, i32 7, i32 0
  br label %174

174:                                              ; preds = %206, %171
  %175 = phi i32 [ %169, %171 ], [ %210, %206 ]
  %176 = phi i32 [ 0, %171 ], [ %209, %206 ]
  %177 = phi i32 [ 0, %171 ], [ %208, %206 ]
  %178 = phi i32 [ -1, %171 ], [ %207, %206 ]
  br i1 %172, label %179, label %183

179:                                              ; preds = %174
  %180 = sub i32 %142, %175
  %181 = urem i32 %180, %151
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %206

183:                                              ; preds = %179, %174
  %184 = mul i32 %175, %153
  %185 = shl i32 %184, %152
  %186 = add i32 %185, %135
  %187 = and i32 %186, %136
  %188 = lshr exact i32 %187, 13
  %189 = icmp ult i32 %188, %163
  br i1 %189, label %206, label %190

190:                                              ; preds = %183
  %191 = icmp ult i32 %188, %166
  br i1 %191, label %192, label %212

192:                                              ; preds = %190
  br i1 %147, label %193, label %197

193:                                              ; preds = %192
  %194 = sub i32 %143, %188
  %195 = and i32 %194, %173
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %193, %192
  %198 = icmp ult i32 %185, %187
  %199 = sub i32 %187, %185
  %200 = sub i32 %185, %187
  %201 = select i1 %198, i32 %199, i32 %200
  %202 = icmp ult i32 %201, %178
  %203 = tail call i32 @llvm.umin.i32(i32 %201, i32 %178) #14
  %204 = select i1 %202, i32 %188, i32 %177
  %205 = select i1 %202, i32 %175, i32 %176
  br label %206

206:                                              ; preds = %197, %193, %183, %179
  %207 = phi i32 [ %178, %193 ], [ %178, %183 ], [ %178, %179 ], [ %203, %197 ]
  %208 = phi i32 [ %177, %193 ], [ %177, %183 ], [ %177, %179 ], [ %204, %197 ]
  %209 = phi i32 [ %176, %193 ], [ %176, %183 ], [ %176, %179 ], [ %205, %197 ]
  %210 = add i32 %175, %118
  %211 = icmp ult i32 %210, %159
  br i1 %211, label %174, label %212

212:                                              ; preds = %206, %190, %138
  %213 = phi i32 [ 0, %138 ], [ %208, %206 ], [ %177, %190 ]
  %214 = phi i32 [ 0, %138 ], [ %209, %206 ], [ %176, %190 ]
  %215 = sub i32 %122, %142
  %216 = select i1 %145, i32 %214, i32 %215
  %217 = sub i32 %143, %213
  %218 = sub i32 %142, %214
  %219 = load i32, ptr %137, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %246, label %221

221:                                              ; preds = %244, %212
  %222 = phi i32 [ %245, %244 ], [ %139, %212 ]
  %223 = phi i32 [ %241, %244 ], [ 0, %212 ]
  %224 = mul i32 %222, %223
  %225 = add i32 %224, %141
  %226 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %225
  %227 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 20, i32 %225
  %228 = load i32, ptr %227, align 4
  %229 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %225, i32 2
  store i32 %213, ptr %229, align 4
  store i32 %217, ptr %226, align 4
  %230 = load i32, ptr %63, align 4
  %231 = and i32 %230, 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %221
  %234 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %228, i32 3
  store i32 %216, ptr %234, align 4
  %235 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %228, i32 1
  br label %239

236:                                              ; preds = %221
  %237 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %228
  %238 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %228, i32 2
  store i32 %216, ptr %238, align 4
  br label %239

239:                                              ; preds = %236, %233
  %240 = phi ptr [ %235, %233 ], [ %237, %236 ]
  store i32 %218, ptr %240, align 4
  %241 = add nuw i32 %223, 1
  %242 = load i32, ptr %137, align 4
  %243 = icmp ult i32 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %239
  %245 = load i32, ptr %123, align 4
  br label %221

246:                                              ; preds = %239, %212
  %247 = phi i32 [ 0, %212 ], [ %242, %239 ]
  %248 = add i32 %141, -1
  %249 = icmp eq i32 %248, 0
  %250 = load i32, ptr %63, align 4
  br i1 %249, label %253, label %251

251:                                              ; preds = %246
  %252 = load i32, ptr %123, align 4
  br label %138

253:                                              ; preds = %246, %127
  %254 = phi i32 [ %129, %127 ], [ %247, %246 ]
  %255 = phi i32 [ %64, %127 ], [ %250, %246 ]
  %256 = phi i32 [ %116, %127 ], [ %213, %246 ]
  %257 = phi i32 [ %122, %127 ], [ %214, %246 ]
  %258 = and i32 %255, 2
  %259 = icmp eq i32 %258, 0
  %260 = sub i32 %122, %257
  %261 = select i1 %259, i32 0, i32 %260
  %262 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 4
  %263 = icmp eq i32 %254, 0
  br i1 %263, label %291, label %264

264:                                              ; preds = %281, %253
  %265 = phi i32 [ %283, %281 ], [ 0, %253 ]
  %266 = load i32, ptr %123, align 4
  %267 = mul i32 %266, %265
  %268 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %267
  %269 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 20, i32 %267
  %270 = load i32, ptr %269, align 4
  %271 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %267, i32 2
  store i32 0, ptr %271, align 4
  store i32 %256, ptr %268, align 4
  %272 = load i32, ptr %63, align 4
  %273 = and i32 %272, 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %264
  %276 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %270, i32 3
  store i32 %261, ptr %276, align 4
  %277 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %270, i32 1
  br label %281

278:                                              ; preds = %264
  %279 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %270
  %280 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %270, i32 2
  store i32 %261, ptr %280, align 4
  br label %281

281:                                              ; preds = %278, %275
  %282 = phi ptr [ %277, %275 ], [ %279, %278 ]
  store i32 %257, ptr %282, align 4
  %283 = add nuw i32 %265, 1
  %284 = load i32, ptr %262, align 4
  %285 = icmp ult i32 %283, %284
  br i1 %285, label %264, label %286

286:                                              ; preds = %281
  %287 = add i32 %284, -1
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %286
  %290 = load i32, ptr %123, align 4
  br label %403

291:                                              ; preds = %286, %253
  %292 = phi i32 [ %287, %286 ], [ -1, %253 ]
  %293 = phi i32 [ %284, %286 ], [ 0, %253 ]
  %294 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 8
  %295 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 10
  %296 = add i32 %119, -1
  %297 = shl nuw nsw i32 %34, 12
  br label %298

298:                                              ; preds = %401, %291
  %299 = phi i32 [ %293, %291 ], [ %402, %401 ]
  %300 = phi i32 [ %292, %291 ], [ %399, %401 ]
  %301 = phi i32 [ %117, %291 ], [ %362, %401 ]
  %302 = phi i32 [ %115, %291 ], [ %361, %401 ]
  %303 = add i32 %299, -1
  %304 = icmp ult i32 %300, %303
  %305 = select i1 %304, i32 1, i32 %121
  %306 = load i32, ptr %294, align 4
  %307 = load i32, ptr %295, align 4
  %308 = mul i32 %300, %119
  %309 = add i32 %301, -1024
  %310 = tail call i32 @llvm.smax.i32(i32 %308, i32 %309) #14
  %311 = shl i32 %300, 10
  %312 = or i32 %311, 1
  %313 = tail call i32 @llvm.umin.i32(i32 %312, i32 %301) #14
  %314 = mul i32 %300, %34
  %315 = shl i32 1024, %306
  %316 = sub i32 %302, %315
  %317 = tail call i32 @llvm.smax.i32(i32 %314, i32 %316) #14
  %318 = mul i32 %315, %300
  %319 = or i32 %318, 1
  %320 = tail call i32 @llvm.umin.i32(i32 %319, i32 %302) #14
  %321 = add i32 %310, -1
  %322 = or i32 %321, %296
  %323 = add i32 %322, 1
  %324 = icmp ult i32 %323, %313
  br i1 %324, label %325, label %360

325:                                              ; preds = %298
  %326 = icmp ugt i32 %305, 1
  br label %327

327:                                              ; preds = %354, %325
  %328 = phi i32 [ %323, %325 ], [ %358, %354 ]
  %329 = phi i32 [ 0, %325 ], [ %357, %354 ]
  %330 = phi i32 [ 0, %325 ], [ %356, %354 ]
  %331 = phi i32 [ -1, %325 ], [ %355, %354 ]
  br i1 %326, label %332, label %336

332:                                              ; preds = %327
  %333 = sub i32 %301, %328
  %334 = urem i32 %333, %305
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %354

336:                                              ; preds = %332, %327
  %337 = mul i32 %328, %307
  %338 = shl i32 %337, %306
  %339 = add i32 %338, %297
  %340 = and i32 %339, %33
  %341 = lshr exact i32 %340, 13
  %342 = icmp ult i32 %341, %317
  br i1 %342, label %354, label %343

343:                                              ; preds = %336
  %344 = icmp ult i32 %341, %320
  br i1 %344, label %345, label %360

345:                                              ; preds = %343
  %346 = icmp ult i32 %338, %340
  %347 = sub i32 %340, %338
  %348 = sub i32 %338, %340
  %349 = select i1 %346, i32 %347, i32 %348
  %350 = icmp ult i32 %349, %331
  %351 = tail call i32 @llvm.umin.i32(i32 %349, i32 %331) #14
  %352 = select i1 %350, i32 %341, i32 %330
  %353 = select i1 %350, i32 %328, i32 %329
  br label %354

354:                                              ; preds = %345, %336, %332
  %355 = phi i32 [ %331, %336 ], [ %331, %332 ], [ %351, %345 ]
  %356 = phi i32 [ %330, %336 ], [ %330, %332 ], [ %352, %345 ]
  %357 = phi i32 [ %329, %336 ], [ %329, %332 ], [ %353, %345 ]
  %358 = add i32 %328, %119
  %359 = icmp ult i32 %358, %313
  br i1 %359, label %327, label %360

360:                                              ; preds = %354, %343, %298
  %361 = phi i32 [ 0, %298 ], [ %356, %354 ], [ %330, %343 ]
  %362 = phi i32 [ 0, %298 ], [ %357, %354 ], [ %329, %343 ]
  %363 = load i32, ptr %63, align 4
  %364 = lshr i32 %363, 2
  %365 = xor i32 %364, %363
  %366 = and i32 %365, 1
  %367 = icmp eq i32 %366, 0
  %368 = sub i32 %117, %301
  %369 = select i1 %367, i32 %362, i32 %368
  %370 = sub i32 %302, %361
  %371 = sub i32 %301, %362
  %372 = load i32, ptr %123, align 4
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %397, label %374

374:                                              ; preds = %392, %360
  %375 = phi i32 [ %395, %392 ], [ %372, %360 ]
  %376 = phi i32 [ %394, %392 ], [ 0, %360 ]
  %377 = mul i32 %375, %300
  %378 = add i32 %377, %376
  %379 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 20, i32 %378
  %380 = load i32, ptr %379, align 4
  %381 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %378, i32 3
  store i32 %361, ptr %381, align 4
  %382 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %378, i32 1
  store i32 %370, ptr %382, align 4
  %383 = load i32, ptr %63, align 4
  %384 = and i32 %383, 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %389, label %386

386:                                              ; preds = %374
  %387 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %380
  %388 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %380, i32 2
  store i32 %369, ptr %388, align 4
  br label %392

389:                                              ; preds = %374
  %390 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %380, i32 3
  store i32 %369, ptr %390, align 4
  %391 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %380, i32 1
  br label %392

392:                                              ; preds = %389, %386
  %393 = phi ptr [ %387, %386 ], [ %391, %389 ]
  store i32 %371, ptr %393, align 4
  %394 = add nuw i32 %376, 1
  %395 = load i32, ptr %123, align 4
  %396 = icmp ult i32 %394, %395
  br i1 %396, label %374, label %397

397:                                              ; preds = %392, %360
  %398 = phi i32 [ 0, %360 ], [ %395, %392 ]
  %399 = add i32 %300, -1
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %403, label %401

401:                                              ; preds = %397
  %402 = load i32, ptr %262, align 4
  br label %298

403:                                              ; preds = %397, %289
  %404 = phi i32 [ %290, %289 ], [ %398, %397 ]
  %405 = phi i32 [ %115, %289 ], [ %361, %397 ]
  %406 = phi i32 [ %117, %289 ], [ %362, %397 ]
  %407 = load i32, ptr %63, align 4
  %408 = lshr i32 %407, 2
  %409 = xor i32 %408, %407
  %410 = and i32 %409, 1
  %411 = icmp eq i32 %410, 0
  %412 = sub i32 %117, %406
  %413 = select i1 %411, i32 0, i32 %412
  %414 = icmp eq i32 %404, 0
  br i1 %414, label %435, label %415

415:                                              ; preds = %430, %403
  %416 = phi i32 [ %432, %430 ], [ 0, %403 ]
  %417 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 20, i32 %416
  %418 = load i32, ptr %417, align 4
  %419 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %416, i32 3
  store i32 0, ptr %419, align 4
  %420 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %416, i32 1
  store i32 %405, ptr %420, align 4
  %421 = load i32, ptr %63, align 4
  %422 = and i32 %421, 4
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %427, label %424

424:                                              ; preds = %415
  %425 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %418
  %426 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %418, i32 2
  store i32 %413, ptr %426, align 4
  br label %430

427:                                              ; preds = %415
  %428 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %418, i32 3
  store i32 %413, ptr %428, align 4
  %429 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %418, i32 1
  br label %430

430:                                              ; preds = %427, %424
  %431 = phi ptr [ %425, %424 ], [ %429, %427 ]
  store i32 %406, ptr %431, align 4
  %432 = add nuw i32 %416, 1
  %433 = load i32, ptr %123, align 4
  %434 = icmp ult i32 %432, %433
  br i1 %434, label %415, label %435

435:                                              ; preds = %430, %403
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @calc_tile_dimensions(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 1024, %10
  %12 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 1024, %13
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi i32 [ %11, %8 ], [ 1024, %2 ]
  %17 = phi i32 [ %14, %8 ], [ 1024, %2 ]
  %18 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 18
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %81, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 2
  br label %29

23:                                               ; preds = %70
  %24 = add nuw i32 %31, 1
  %25 = load i32, ptr %18, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %81

27:                                               ; preds = %23
  %28 = load i32, ptr %5, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi i32 [ %6, %21 ], [ %28, %27 ]
  %31 = phi i32 [ 0, %21 ], [ %24, %27 ]
  %32 = icmp eq i32 %30, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 20, i32 %31
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i32 [ %35, %33 ], [ %31, %29 ]
  %38 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %37
  %39 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %37, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %22, align 4
  %42 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = mul i32 %43, %40
  %45 = lshr i32 %44, 3
  %46 = load i32, ptr %38, align 4
  %47 = mul i32 %45, %46
  %48 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %37, i32 4
  store i32 %47, ptr %48, align 4
  %49 = load ptr, ptr %22, align 4
  %50 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %49, i32 0, i32 4
  %51 = load i8, ptr %50, align 4, !range !8
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %36
  %54 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %37, i32 5
  store i32 %46, ptr %54, align 4
  br label %64

55:                                               ; preds = %36
  %56 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %49, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = mul i32 %57, %46
  %59 = lshr i32 %58, 3
  %60 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %37, i32 5
  store i32 %59, ptr %60, align 4
  %61 = load i32, ptr %56, align 4
  %62 = mul i32 %61, %40
  %63 = lshr i32 %62, 3
  br label %64

64:                                               ; preds = %55, %53
  %65 = phi i32 [ %63, %55 ], [ %40, %53 ]
  %66 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %37, i32 6
  store i32 %65, ptr %66, align 4
  %67 = icmp eq i32 %46, 0
  %68 = icmp ugt i32 %46, %16
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = icmp eq i32 %40, 0
  %72 = icmp ugt i32 %40, %17
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %74, label %23

74:                                               ; preds = %70, %64
  %75 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %4, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %76, align 4
  %78 = load i32, ptr %5, align 4
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, ptr @.str.7, ptr @.str.8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.6, ptr noundef nonnull %80, i32 noundef %46, i32 noundef %40) #15
  br label %81

81:                                               ; preds = %74, %23, %15
  %82 = phi i32 [ -22, %74 ], [ 0, %15 ], [ 0, %23 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @calc_tile_offsets(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %4, i32 0, i32 4
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = load ptr, ptr %0, align 4
  %9 = load ptr, ptr %8, align 4
  br i1 %7, label %105, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %4, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = udiv i32 %14, %16
  %18 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %4, i32 0, i32 6
  %19 = load i8, ptr %18, align 2, !range !8
  %20 = zext i8 %19 to i32
  %21 = shl i32 %17, %20
  %22 = mul i32 %14, %12
  %23 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %4, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, %16
  %26 = udiv i32 %22, %25
  %27 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %161, label %30

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 5
  %32 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %4, i32 0, i32 5
  %33 = load i32, ptr %31, align 4
  br label %34

34:                                               ; preds = %103, %30
  %35 = phi i32 [ %28, %30 ], [ %98, %103 ]
  %36 = phi i32 [ %33, %30 ], [ %99, %103 ]
  %37 = phi i32 [ %24, %30 ], [ %104, %103 ]
  %38 = phi i32 [ 0, %30 ], [ %100, %103 ]
  %39 = phi i32 [ 0, %30 ], [ %101, %103 ]
  %40 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %38, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = mul i32 %41, %14
  %43 = icmp eq i32 %36, 0
  br i1 %43, label %97, label %44

44:                                               ; preds = %34
  %45 = mul i32 %41, %21
  %46 = udiv i32 %45, %37
  %47 = add i32 %46, %22
  br label %48

48:                                               ; preds = %90, %44
  %49 = phi i32 [ %91, %90 ], [ %38, %44 ]
  %50 = phi i32 [ %92, %90 ], [ 0, %44 ]
  %51 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %49, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %15, align 4
  %54 = udiv i32 %52, %53
  %55 = load i8, ptr %18, align 2, !range !8
  %56 = icmp eq i8 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = shl i32 %54, %58
  %60 = add i32 %52, %42
  %61 = sub i32 %47, %60
  %62 = add i32 %61, %59
  %63 = add i32 %62, %26
  %64 = select i1 %56, i32 %63, i32 0
  %65 = load i8, ptr %32, align 1, !range !8
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %66, i32 %62, i32 %64
  %68 = select i1 %66, i32 %64, i32 %62
  %69 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %49, i32 7
  store i32 %60, ptr %69, align 4
  %70 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %49, i32 8
  store i32 %67, ptr %70, align 4
  %71 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %49, i32 9
  store i32 %68, ptr %71, align 4
  %72 = and i32 %60, 7
  %73 = icmp eq i32 %72, 0
  %74 = and i32 %67, 7
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %73, i1 %75, i1 false
  %77 = and i32 %68, 7
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %90, label %80

80:                                               ; preds = %48
  %81 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %9, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %8, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.9, i32 noundef %85, ptr noundef %0, ptr noundef nonnull %89, i32 noundef %39, i32 noundef %50, i32 noundef %60, i32 noundef %67, i32 noundef %68) #15
  br label %161

90:                                               ; preds = %48
  %91 = add i32 %49, 1
  %92 = add nuw i32 %50, 1
  %93 = load i32, ptr %31, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %48, label %95

95:                                               ; preds = %90
  %96 = load i32, ptr %27, align 4
  br label %97

97:                                               ; preds = %95, %34
  %98 = phi i32 [ %35, %34 ], [ %96, %95 ]
  %99 = phi i32 [ 0, %34 ], [ %93, %95 ]
  %100 = phi i32 [ %38, %34 ], [ %91, %95 ]
  %101 = add nuw i32 %39, 1
  %102 = icmp ult i32 %101, %98
  br i1 %102, label %103, label %161

103:                                              ; preds = %97
  %104 = load i32, ptr %23, align 4
  br label %34

105:                                              ; preds = %2
  %106 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %4, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 4
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %161, label %113

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 5
  %115 = load i32, ptr %114, align 4
  br label %116

116:                                              ; preds = %155, %113
  %117 = phi i32 [ %111, %113 ], [ %156, %155 ]
  %118 = phi i32 [ %115, %113 ], [ %157, %155 ]
  %119 = phi i32 [ 0, %113 ], [ %158, %155 ]
  %120 = phi i32 [ 0, %113 ], [ %159, %155 ]
  %121 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %119, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = mul i32 %122, %107
  %124 = icmp eq i32 %118, 0
  br i1 %124, label %155, label %125

125:                                              ; preds = %148, %116
  %126 = phi i32 [ %149, %148 ], [ %119, %116 ]
  %127 = phi i32 [ %150, %148 ], [ 0, %116 ]
  %128 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %126, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = mul i32 %129, %109
  %131 = lshr i32 %130, 3
  %132 = add i32 %131, %123
  %133 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %126, i32 7
  store i32 %132, ptr %133, align 4
  %134 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %126, i32 8
  store i32 0, ptr %134, align 4
  %135 = getelementptr %struct.ipu_image_convert_image, ptr %1, i32 0, i32 6, i32 %126, i32 9
  store i32 0, ptr %135, align 4
  %136 = and i32 %132, 7
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %125
  %139 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %9, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %8, i32 0, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %1, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.10, i32 noundef %143, ptr noundef %0, ptr noundef nonnull %147, i32 noundef %120, i32 noundef %127, i32 noundef %132) #15
  br label %161

148:                                              ; preds = %125
  %149 = add i32 %126, 1
  %150 = add nuw i32 %127, 1
  %151 = load i32, ptr %114, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %125, label %153

153:                                              ; preds = %148
  %154 = load i32, ptr %110, align 4
  br label %155

155:                                              ; preds = %153, %116
  %156 = phi i32 [ %117, %116 ], [ %154, %153 ]
  %157 = phi i32 [ 0, %116 ], [ %151, %153 ]
  %158 = phi i32 [ %119, %116 ], [ %149, %153 ]
  %159 = add nuw i32 %120, 1
  %160 = icmp ult i32 %159, %156
  br i1 %160, label %116, label %161

161:                                              ; preds = %155, %138, %105, %97, %80, %10
  %162 = phi i32 [ -22, %80 ], [ 0, %10 ], [ -22, %138 ], [ 0, %105 ], [ 0, %155 ], [ 0, %97 ]
  ret i32 %162
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @calc_tile_resize_coefficients(ptr noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 3, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 7
  %8 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 3, i32 4
  br label %16

9:                                                ; preds = %95, %1
  %10 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 3, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %186, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 6
  %15 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 8
  br label %100

16:                                               ; preds = %95, %5
  %17 = phi i32 [ %3, %5 ], [ %98, %95 ]
  %18 = phi i32 [ 0, %5 ], [ %97, %95 ]
  %19 = add i32 %17, -1
  %20 = icmp ult i32 %18, %19
  %21 = load i32, ptr %6, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %20, i1 %23, i1 false
  %25 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 3, i32 6, i32 %18
  %26 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 20, i32 %18
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %21, 4
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 4, i32 6, i32 %27, i32 1
  %31 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 4, i32 6, i32 %27
  %32 = select i1 %29, ptr %31, ptr %30
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %25, align 4
  %35 = load i32, ptr %7, align 4
  %36 = lshr i32 %34, %35
  %37 = shl i32 %36, 13
  br i1 %24, label %38, label %43

38:                                               ; preds = %16
  %39 = lshr i32 %33, 1
  %40 = add i32 %37, %39
  %41 = udiv i32 %40, %33
  %42 = add i32 %33, -1
  br label %47

43:                                               ; preds = %16
  %44 = add i32 %37, -8192
  %45 = add i32 %33, -1
  %46 = udiv i32 %44, %45
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i32 [ %42, %38 ], [ %45, %43 ]
  %49 = phi i32 [ %41, %38 ], [ %46, %43 ]
  %50 = or i32 %48, 7
  %51 = add i32 %50, 1
  %52 = mul i32 %49, %50
  %53 = and i32 %52, 8191
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 %50, i32 %51
  %56 = select i1 %24, i32 %55, i32 %50
  %57 = mul i32 %56, %49
  %58 = add i32 %57, 8191
  %59 = lshr i32 %58, 13
  %60 = add nuw nsw i32 %59, 1
  %61 = shl i32 %60, %35
  %62 = add i32 %61, -1
  %63 = or i32 %62, 7
  %64 = add i32 %63, 1
  %65 = load i32, ptr %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %95, label %67

67:                                               ; preds = %47
  %68 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 3, i32 6, i32 %18
  %69 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 20, i32 %18
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %21, 4
  %72 = icmp eq i32 %71, 0
  %73 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 4, i32 6, i32 %70
  %74 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 4, i32 6, i32 %70, i32 1
  %75 = select i1 %72, ptr %73, ptr %74
  store i32 %51, ptr %75, align 4
  store i32 %64, ptr %68, align 4
  %76 = load i32, ptr %8, align 4
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %78, label %95

78:                                               ; preds = %78, %67
  %79 = phi i32 [ %92, %78 ], [ 1, %67 ]
  %80 = load i32, ptr %2, align 4
  %81 = load i32, ptr %6, align 4
  %82 = mul i32 %80, %79
  %83 = add i32 %82, %18
  %84 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 3, i32 6, i32 %83
  %85 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 20, i32 %83
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %81, 4
  %88 = icmp eq i32 %87, 0
  %89 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 4, i32 6, i32 %86
  %90 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 4, i32 6, i32 %86, i32 1
  %91 = select i1 %88, ptr %89, ptr %90
  store i32 %51, ptr %91, align 4
  store i32 %64, ptr %84, align 4
  %92 = add nuw i32 %79, 1
  %93 = load i32, ptr %8, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %78, label %95

95:                                               ; preds = %78, %67, %47
  %96 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 11, i32 %18
  store i32 %49, ptr %96, align 4
  %97 = add nuw i32 %18, 1
  %98 = load i32, ptr %2, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %16, label %9

100:                                              ; preds = %181, %13
  %101 = phi i32 [ %11, %13 ], [ %184, %181 ]
  %102 = phi i32 [ 0, %13 ], [ %183, %181 ]
  %103 = add i32 %101, -1
  %104 = icmp ult i32 %102, %103
  %105 = load i32, ptr %14, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %104, i1 %107, i1 false
  %109 = load i32, ptr %2, align 4
  %110 = mul i32 %109, %102
  %111 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 20, i32 %110
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %105, 4
  %114 = icmp eq i32 %113, 0
  %115 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 4, i32 6, i32 %112
  %116 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 4, i32 6, i32 %112, i32 1
  %117 = select i1 %114, ptr %116, ptr %115
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 3, i32 6, i32 %110, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = load i32, ptr %15, align 4
  %122 = lshr i32 %120, %121
  %123 = shl i32 %122, 13
  br i1 %108, label %124, label %129

124:                                              ; preds = %100
  %125 = lshr i32 %118, 1
  %126 = add i32 %123, %125
  %127 = udiv i32 %126, %118
  %128 = add i32 %118, -1
  br label %133

129:                                              ; preds = %100
  %130 = add i32 %123, -8192
  %131 = add i32 %118, -1
  %132 = udiv i32 %130, %131
  br label %133

133:                                              ; preds = %129, %124
  %134 = phi i32 [ %128, %124 ], [ %131, %129 ]
  %135 = phi i32 [ %127, %124 ], [ %132, %129 ]
  %136 = or i32 %134, 1
  %137 = add i32 %136, 1
  %138 = mul i32 %135, %136
  %139 = and i32 %138, 8191
  %140 = icmp eq i32 %139, 0
  %141 = select i1 %140, i32 %136, i32 %137
  %142 = select i1 %108, i32 %141, i32 %136
  %143 = mul i32 %142, %135
  %144 = add i32 %143, 8191
  %145 = lshr i32 %144, 13
  %146 = add nuw nsw i32 %145, 1
  %147 = shl i32 %146, %121
  %148 = add i32 %147, -1
  %149 = or i32 %148, 1
  %150 = add i32 %149, 1
  %151 = icmp eq i32 %109, 0
  br i1 %151, label %181, label %152

152:                                              ; preds = %133
  %153 = mul i32 %109, %102
  %154 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 20, i32 %153
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %105, 4
  %157 = icmp eq i32 %156, 0
  %158 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 4, i32 6, i32 %155, i32 1
  %159 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 4, i32 6, i32 %155
  %160 = select i1 %157, ptr %158, ptr %159
  store i32 %137, ptr %160, align 4
  %161 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 3, i32 6, i32 %153, i32 1
  store i32 %150, ptr %161, align 4
  %162 = load i32, ptr %2, align 4
  %163 = icmp ugt i32 %162, 1
  br i1 %163, label %164, label %181

164:                                              ; preds = %164, %152
  %165 = phi i32 [ %179, %164 ], [ %162, %152 ]
  %166 = phi i32 [ %178, %164 ], [ 1, %152 ]
  %167 = load i32, ptr %14, align 4
  %168 = mul i32 %165, %102
  %169 = add i32 %168, %166
  %170 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 20, i32 %169
  %171 = load i32, ptr %170, align 4
  %172 = and i32 %167, 4
  %173 = icmp eq i32 %172, 0
  %174 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 4, i32 6, i32 %171, i32 1
  %175 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 4, i32 6, i32 %171
  %176 = select i1 %173, ptr %174, ptr %175
  store i32 %137, ptr %176, align 4
  %177 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 3, i32 6, i32 %169, i32 1
  store i32 %150, ptr %177, align 4
  %178 = add nuw i32 %166, 1
  %179 = load i32, ptr %2, align 4
  %180 = icmp ult i32 %178, %179
  br i1 %180, label %164, label %181

181:                                              ; preds = %164, %152, %133
  %182 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 12, i32 %102
  store i32 %135, ptr %182, align 4
  %183 = add nuw i32 %102, 1
  %184 = load i32, ptr %10, align 4
  %185 = icmp ult i32 %183, %184
  br i1 %185, label %100, label %186

186:                                              ; preds = %181, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_ic_calc_csc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_pixelformat_to_colorspace(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alloc_dma_buf(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = add i32 %2, 4095
  %5 = and i32 %4, -4096
  %6 = getelementptr inbounds %struct.ipu_image_convert_dma_buf, ptr %1, i32 0, i32 2
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ipu_image_convert_dma_buf, ptr %1, i32 0, i32 1
  %11 = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef %5, ptr noundef %10, i32 noundef 3265, i32 noundef 0) #14
  store ptr %11, ptr %1, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load ptr, ptr %7, align 4
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.11) #15
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i32 [ -12, %13 ], [ 0, %3 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #10 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_ipu_resources(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @ipu_ic_get(ptr noundef %6, i32 noundef %8) #14
  %10 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 3
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %12 = load ptr, ptr %5, align 4
  br i1 %11, label %13, label %17

13:                                               ; preds = %1
  %14 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.12) #15
  %15 = load ptr, ptr %10, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %119

17:                                               ; preds = %1
  %18 = load i32, ptr %3, align 4
  %19 = tail call ptr @ipu_idmac_get(ptr noundef %12, i32 noundef %18) #14
  %20 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 4
  store ptr %19, ptr %20, align 4
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds %struct.ipu_image_convert_dma_chan, ptr %3, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = tail call ptr @ipu_idmac_get(ptr noundef %21, i32 noundef %23) #14
  %25 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 5
  store ptr %24, ptr %25, align 4
  %26 = load ptr, ptr %20, align 4
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %28 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %29 = select i1 %27, i1 true, i1 %28
  %30 = load ptr, ptr %5, align 4
  br i1 %29, label %31, label %33

31:                                               ; preds = %17
  %32 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.13) #15
  br label %119

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.ipu_image_convert_dma_chan, ptr %3, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = tail call ptr @ipu_idmac_get(ptr noundef %30, i32 noundef %35) #14
  %37 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 6
  store ptr %36, ptr %37, align 4
  %38 = load ptr, ptr %5, align 4
  %39 = getelementptr inbounds %struct.ipu_image_convert_dma_chan, ptr %3, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = tail call ptr @ipu_idmac_get(ptr noundef %38, i32 noundef %40) #14
  %42 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 7
  store ptr %41, ptr %42, align 4
  %43 = load ptr, ptr %37, align 4
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  %45 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load ptr, ptr %5, align 4
  %49 = load ptr, ptr %48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.14) #15
  br label %119

50:                                               ; preds = %33
  %51 = load ptr, ptr %20, align 4
  %52 = load ptr, ptr %0, align 4
  %53 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @ipu_idmac_channel_irq(ptr noundef %54, ptr noundef %51, i32 noundef 0) #14
  %56 = tail call i32 @request_threaded_irq(i32 noundef %55, ptr noundef nonnull @eof_irq, ptr noundef nonnull @do_bh, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %0) #14
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load ptr, ptr %53, align 4
  %60 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.16, i32 noundef %55) #15
  br label %63

61:                                               ; preds = %50
  %62 = icmp slt i32 %55, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %61, %58
  %64 = phi i32 [ %56, %58 ], [ %55, %61 ]
  %65 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 8
  store i32 -1, ptr %65, align 4
  br label %119

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 8
  store i32 %55, ptr %67, align 4
  %68 = load ptr, ptr %37, align 4
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 @ipu_idmac_channel_irq(ptr noundef %71, ptr noundef %68, i32 noundef 0) #14
  %73 = tail call i32 @request_threaded_irq(i32 noundef %72, ptr noundef nonnull @eof_irq, ptr noundef nonnull @do_bh, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %0) #14
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load ptr, ptr %70, align 4
  %77 = load ptr, ptr %76, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.16, i32 noundef %72) #15
  br label %80

78:                                               ; preds = %66
  %79 = icmp slt i32 %72, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %78, %75
  %81 = phi i32 [ %73, %75 ], [ %72, %78 ]
  %82 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 9
  store i32 -1, ptr %82, align 4
  br label %119

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 9
  store i32 %72, ptr %84, align 4
  %85 = load ptr, ptr %25, align 4
  %86 = load ptr, ptr %0, align 4
  %87 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = tail call i32 @ipu_idmac_channel_irq(ptr noundef %88, ptr noundef %85, i32 noundef 0) #14
  %90 = tail call i32 @request_threaded_irq(i32 noundef %89, ptr noundef nonnull @eof_irq, ptr noundef nonnull @do_bh, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %0) #14
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load ptr, ptr %87, align 4
  %94 = load ptr, ptr %93, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.16, i32 noundef %89) #15
  br label %97

95:                                               ; preds = %83
  %96 = icmp slt i32 %89, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %95, %92
  %98 = phi i32 [ %90, %92 ], [ %89, %95 ]
  %99 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 10
  store i32 -1, ptr %99, align 4
  br label %119

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 10
  store i32 %89, ptr %101, align 4
  %102 = load ptr, ptr %42, align 4
  %103 = load ptr, ptr %0, align 4
  %104 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = tail call i32 @ipu_idmac_channel_irq(ptr noundef %105, ptr noundef %102, i32 noundef 0) #14
  %107 = tail call i32 @request_threaded_irq(i32 noundef %106, ptr noundef nonnull @eof_irq, ptr noundef nonnull @do_bh, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %0) #14
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load ptr, ptr %104, align 4
  %111 = load ptr, ptr %110, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.16, i32 noundef %106) #15
  br label %114

112:                                              ; preds = %100
  %113 = icmp slt i32 %106, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %112, %109
  %115 = phi i32 [ %107, %109 ], [ %106, %112 ]
  %116 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 11
  store i32 -1, ptr %116, align 4
  br label %119

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 11
  store i32 %106, ptr %118, align 4
  br label %121

119:                                              ; preds = %114, %97, %80, %63, %47, %31, %13
  %120 = phi i32 [ %16, %13 ], [ -16, %31 ], [ -16, %47 ], [ %64, %63 ], [ %81, %80 ], [ %98, %97 ], [ %115, %114 ]
  tail call fastcc void @release_ipu_resources(ptr noundef %0)
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %120, %119 ], [ 0, %117 ]
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_dma_buf(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #5 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ipu_image_convert_dma_buf, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ipu_image_convert_dma_buf, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %3, i32 noundef %12, i32 noundef 0) #14
  br label %13

13:                                               ; preds = %5, %2
  store ptr null, ptr %1, align 4
  %14 = getelementptr inbounds %struct.ipu_image_convert_dma_buf, ptr %1, i32 0, i32 1
  store i32 0, ptr %14, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_image_convert_queue(ptr noundef %0) #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %48, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %48, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ipu_image_convert_run, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %48, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ipu_image_convert_run, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.ipu_image_convert_run, ptr %0, i32 0, i32 4
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ipu_image_convert_run, ptr %0, i32 0, i32 4, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %15, i32 0, i32 12
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #14
  %20 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %4, i32 0, i32 15
  %21 = load i8, ptr %20, align 4, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %15, i32 0, i32 14
  %25 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %15, i32 0, i32 14, i32 1
  %26 = load ptr, ptr %25, align 4
  store ptr %16, ptr %25, align 4
  store ptr %24, ptr %16, align 4
  store ptr %26, ptr %17, align 4
  store volatile ptr %16, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %15, i32 0, i32 16
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %23
  %31 = load ptr, ptr %0, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %7, align 4
  %34 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %31, i32 0, i32 3, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = load i32, ptr %11, align 4
  %36 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %31, i32 0, i32 4, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %31, i32 0, i32 14
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %31, i32 0, i32 19
  store i32 1, ptr %38, align 4
  %39 = load ptr, ptr %17, align 4
  %40 = load ptr, ptr %16, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %39, ptr %41, align 4
  store volatile ptr %40, ptr %39, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  %42 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %32, i32 0, i32 16
  store ptr %0, ptr %42, align 4
  %43 = tail call fastcc i32 @convert_start(ptr noundef nonnull %0, i32 noundef 0) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %30
  store ptr null, ptr %27, align 4
  br label %46

46:                                               ; preds = %45, %30, %23, %14
  %47 = phi i32 [ 0, %23 ], [ %43, %45 ], [ 0, %30 ], [ -5, %14 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #14
  br label %48

48:                                               ; preds = %46, %10, %6, %3, %1
  %49 = phi i32 [ %47, %46 ], [ -22, %10 ], [ -22, %6 ], [ -22, %3 ], [ -22, %1 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_image_convert_abort(ptr noundef %0) #5 {
  tail call fastcc void @__ipu_image_convert_abort(ptr noundef %0)
  %2 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 15
  store i8 0, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ipu_image_convert_abort(ptr noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %2, i32 0, i32 12
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %2, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %2, i32 0, i32 15
  %11 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %2, i32 0, i32 15, i32 1
  br label %12

12:                                               ; preds = %24, %9
  %13 = phi ptr [ %7, %9 ], [ %14, %24 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %13, i32 -16
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %13, i32 -4
  store i32 -5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %14, ptr %21, align 4
  %23 = load ptr, ptr %11, align 4
  store ptr %13, ptr %11, align 4
  store ptr %10, ptr %13, align 4
  store ptr %23, ptr %20, align 4
  store volatile ptr %13, ptr %23, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = icmp eq ptr %14, %6
  br i1 %25, label %26, label %12

26:                                               ; preds = %24, %1
  %27 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %2, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %40, label %30

30:                                               ; preds = %30, %26
  %31 = phi ptr [ %38, %30 ], [ %28, %26 ]
  %32 = phi i32 [ %37, %30 ], [ 0, %26 ]
  %33 = getelementptr i8, ptr %31, i32 -16
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %0
  %36 = zext i1 %35 to i32
  %37 = add i32 %32, %36
  %38 = load ptr, ptr %31, align 4
  %39 = icmp eq ptr %38, %27
  br i1 %39, label %40, label %30

40:                                               ; preds = %30, %26
  %41 = phi i32 [ 0, %26 ], [ %37, %30 ]
  %42 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %2, i32 0, i32 16
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %43, align 4
  %47 = icmp eq ptr %46, %0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 16
  store i32 0, ptr %49, align 4
  br label %50

50:                                               ; preds = %48, %45, %40
  %51 = phi i1 [ true, %48 ], [ false, %45 ], [ false, %40 ]
  %52 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 15
  store i8 1, ptr %52, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  %53 = icmp ne i32 %41, 0
  %54 = or i1 %53, %51
  br i1 %54, label %55, label %86

55:                                               ; preds = %50
  br i1 %51, label %78, label %56

56:                                               ; preds = %55
  %57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %58 = load volatile ptr, ptr %27, align 4
  %59 = icmp eq ptr %58, %27
  br i1 %59, label %76, label %60

60:                                               ; preds = %60, %56
  %61 = phi ptr [ %74, %60 ], [ %58, %56 ]
  %62 = phi i32 [ %73, %60 ], [ %57, %56 ]
  %63 = getelementptr i8, ptr %61, i32 -16
  %64 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = load ptr, ptr %61, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  store ptr %65, ptr %67, align 4
  store volatile ptr %66, ptr %65, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %61, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %64, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %62) #14
  %68 = load ptr, ptr %63, align 4
  %69 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %68, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  tail call void %70(ptr noundef %63, ptr noundef %72) #14
  %73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %74 = load volatile ptr, ptr %27, align 4
  %75 = icmp eq ptr %74, %27
  br i1 %75, label %76, label %60

76:                                               ; preds = %60, %56
  %77 = phi i32 [ %57, %56 ], [ %73, %60 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %77) #14
  br label %86

78:                                               ; preds = %55
  %79 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 16
  %80 = tail call i32 @wait_for_completion_timeout(ptr noundef %79, i32 noundef 1000) #14
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %3, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %84, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %85, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.__ipu_image_convert_abort) #15
  tail call fastcc void @force_abort(ptr noundef %0)
  br label %86

86:                                               ; preds = %82, %78, %76, %50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_image_convert_unprepare(ptr noundef %0) #5 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @__ipu_image_convert_abort(ptr noundef %0)
  %4 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %2, i32 0, i32 12
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 22
  %7 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 22, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %2, i32 0, i32 13
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  tail call fastcc void @release_ipu_resources(ptr noundef %2)
  br label %15

15:                                               ; preds = %14, %1
  %16 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 13
  %17 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 13, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 13, i32 1, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 13, i32 1, i32 1
  %27 = load i32, ptr %26, align 4
  tail call void @dma_free_attrs(ptr noundef %23, i32 noundef %25, ptr noundef nonnull %18, i32 noundef %27, i32 noundef 0) #14
  br label %28

28:                                               ; preds = %20, %15
  store ptr null, ptr %17, align 4
  %29 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 13, i32 1, i32 1
  store i32 0, ptr %29, align 4
  %30 = load ptr, ptr %16, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %3, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 13, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 13, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  tail call void @dma_free_attrs(ptr noundef %35, i32 noundef %37, ptr noundef nonnull %30, i32 noundef %39, i32 noundef 0) #14
  br label %40

40:                                               ; preds = %32, %28
  store ptr null, ptr %16, align 4
  %41 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 13, i32 0, i32 1
  store i32 0, ptr %41, align 4
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @release_ipu_resources(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %0) #14
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %0) #14
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %0) #14
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call ptr @free_irq(i32 noundef %21, ptr noundef %0) #14
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  %30 = or i1 %28, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  tail call void @ipu_idmac_put(ptr noundef nonnull %27) #14
  br label %32

32:                                               ; preds = %31, %25
  %33 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %37 = or i1 %35, %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  tail call void @ipu_idmac_put(ptr noundef nonnull %34) #14
  br label %39

39:                                               ; preds = %38, %32
  %40 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  %44 = or i1 %42, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  tail call void @ipu_idmac_put(ptr noundef nonnull %41) #14
  br label %46

46:                                               ; preds = %45, %39
  %47 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  %51 = or i1 %49, %50
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  tail call void @ipu_idmac_put(ptr noundef nonnull %48) #14
  br label %53

53:                                               ; preds = %52, %46
  %54 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %0, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  %58 = or i1 %56, %57
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  tail call void @ipu_ic_put(ptr noundef nonnull %55) #14
  br label %60

60:                                               ; preds = %59, %53
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %2, i8 -1, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipu_image_convert(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #5 {
  %8 = tail call ptr @ipu_image_convert_prepare(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %26, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 24) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @ipu_image_convert_unprepare(ptr noundef %8)
  br label %26

15:                                               ; preds = %10
  store ptr %8, ptr %12, align 8
  %16 = getelementptr inbounds %struct.ipu_image, ptr %2, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ipu_image_convert_run, ptr %12, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ipu_image, ptr %3, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ipu_image_convert_run, ptr %12, i32 0, i32 2
  store i32 %20, ptr %21, align 8
  %22 = tail call i32 @ipu_image_convert_queue(ptr noundef nonnull %12)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  tail call void @ipu_image_convert_unprepare(ptr noundef %8)
  tail call void @kfree(ptr noundef nonnull %12) #14
  %25 = inttoptr i32 %22 to ptr
  br label %26

26:                                               ; preds = %24, %15, %14, %7
  %27 = phi ptr [ %25, %24 ], [ inttoptr (i32 -12 to ptr), %14 ], [ %12, %15 ], [ %8, %7 ]
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_image_convert_sync(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #5 {
  %6 = alloca %struct.completion, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct.completion, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @__init_swait_queue_head(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #14
  %8 = call ptr @ipu_image_convert(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull @image_convert_sync_complete, ptr noundef nonnull %6)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %8 to i32
  br label %17

12:                                               ; preds = %5
  %13 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %6, i32 noundef 1000) #14
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 -110, i32 0
  %16 = load ptr, ptr %8, align 4
  call void @ipu_image_convert_unprepare(ptr noundef %16)
  call void @kfree(ptr noundef %8) #14
  br label %17

17:                                               ; preds = %12, %10
  %18 = phi i32 [ %11, %10 ], [ %15, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @image_convert_sync_complete(ptr nocapture noundef readnone %0, ptr noundef %1) #5 {
  tail call void @complete(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_image_convert_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 244, i32 noundef 3520) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 22
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %3, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  %8 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 0, i32 1
  store i32 0, ptr %8, align 4
  store ptr %3, ptr %3, align 4
  %9 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 0, i32 2
  store ptr @image_convert_dma_chan, ptr %9, align 4
  %10 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 0, i32 8
  %11 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 0, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %10, i8 -1, i64 16, i1 false)
  store i32 0, ptr %11, align 4
  %12 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 0, i32 13
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 0, i32 13, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 0, i32 14
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 0, i32 14, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 0, i32 15
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 0, i32 15, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 1
  %19 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 1, i32 1
  store i32 1, ptr %19, align 4
  store ptr %3, ptr %18, align 4
  %20 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 1, i32 2
  store ptr getelementptr inbounds ([3 x %struct.ipu_image_convert_dma_chan], ptr @image_convert_dma_chan, i32 0, i32 1), ptr %20, align 4
  %21 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 1, i32 8
  %22 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 1, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %21, i8 -1, i64 16, i1 false)
  store i32 0, ptr %22, align 4
  %23 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 1, i32 13
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 1, i32 13, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 1, i32 14
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 1, i32 14, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 1, i32 15
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 1, i32 15, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 2
  %30 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 2, i32 1
  store i32 2, ptr %30, align 4
  store ptr %3, ptr %29, align 4
  %31 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 2, i32 2
  store ptr getelementptr inbounds ([3 x %struct.ipu_image_convert_dma_chan], ptr @image_convert_dma_chan, i32 0, i32 2), ptr %31, align 4
  %32 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 2, i32 8
  %33 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 2, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %32, i8 -1, i64 16, i1 false)
  store i32 0, ptr %33, align 4
  %34 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 2, i32 13
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 2, i32 13, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 2, i32 14
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 2, i32 14, i32 1
  store ptr %36, ptr %37, align 4
  %38 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 2, i32 15
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr [3 x %struct.ipu_image_convert_chan], ptr %3, i32 0, i32 2, i32 15, i32 1
  store ptr %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %5, %2
  %41 = phi i32 [ -12, %2 ], [ 0, %5 ]
  ret i32 %41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ipu_image_convert_exit(ptr nocapture noundef %0) local_unnamed_addr #11 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #10 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_ic_get(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_idmac_get(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_channel_irq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eof_irq(i32 noundef %0, ptr noundef %1) #5 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %1, i32 0, i32 12
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %1, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %254, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %1, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %10, i32 0, i32 21
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 1
  store i32 %17, ptr %15, align 4
  br label %52

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %1, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %10, i32 0, i32 21
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 4
  store i32 %25, ptr %23, align 4
  br label %52

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %1, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %1, i32 0, i32 11
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %34, label %48

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %10, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %3, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.17) #15
  br label %254

43:                                               ; preds = %34
  %44 = select i1 %29, i32 2, i32 8
  %45 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %10, i32 0, i32 21
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, ptr %45, align 4
  br label %52

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %3, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.18, i32 noundef %0) #15
  br label %254

52:                                               ; preds = %43, %22, %14
  %53 = phi i32 [ %25, %22 ], [ %47, %43 ], [ %17, %14 ]
  %54 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %10, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = icmp eq i32 %53, 15
  br i1 %59, label %62, label %254

60:                                               ; preds = %52
  %61 = icmp eq i32 %53, 5
  br i1 %61, label %62, label %254

62:                                               ; preds = %60, %58
  %63 = load ptr, ptr %7, align 4
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 4
  %68 = icmp eq i32 %67, 0
  %69 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %64, i32 0, i32 7
  %70 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %64, i32 0, i32 5
  %71 = select i1 %68, ptr %70, ptr %69
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 15
  %74 = load i8, ptr %73, align 4, !range !8
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %62
  %77 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 17
  %78 = load i8, ptr %77, align 4, !range !8
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %212, label %80

80:                                               ; preds = %76, %62
  %81 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 19
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 18
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %212, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 17
  %88 = load i8, ptr %87, align 4, !range !8
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %181

90:                                               ; preds = %86
  %91 = add i32 %82, -1
  %92 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 3, i32 5
  %93 = load i32, ptr %92, align 4
  %94 = freeze i32 %91
  %95 = freeze i32 %93
  %96 = udiv i32 %94, %95
  %97 = mul i32 %96, %95
  %98 = sub i32 %94, %97
  %99 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 11, i32 %98
  %100 = load i32, ptr %99, align 4
  %101 = freeze i32 %82
  %102 = freeze i32 %93
  %103 = udiv i32 %101, %102
  %104 = mul i32 %103, %102
  %105 = sub i32 %101, %104
  %106 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 11, i32 %105
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %100, %107
  br i1 %108, label %109, label %139

109:                                              ; preds = %90
  %110 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 12, i32 %96
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 12, i32 %103
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %139

115:                                              ; preds = %109
  %116 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 3, i32 6, i32 %91
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 3, i32 6, i32 %82
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %139

121:                                              ; preds = %115
  %122 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 3, i32 6, i32 %91, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 3, i32 6, i32 %82, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %121
  %128 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 4, i32 6, i32 %91
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 4, i32 6, i32 %82
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 4, i32 6, i32 %91, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 4, i32 6, i32 %82, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %142, label %139

139:                                              ; preds = %133, %127, %121, %115, %109, %90
  tail call fastcc void @convert_stop(ptr noundef nonnull %7) #14
  %140 = load i32, ptr %81, align 4
  %141 = tail call fastcc i32 @convert_start(ptr noundef nonnull %7, i32 noundef %140) #14
  br label %208

142:                                              ; preds = %133
  %143 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 20, i32 %82
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %64, i32 0, i32 4
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 3, i32 0, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 3, i32 6, i32 %82, i32 7
  %150 = load i32, ptr %149, align 4
  %151 = add i32 %150, %148
  tail call void @ipu_cpmem_set_buffer(ptr noundef %146, i32 noundef 0, i32 noundef %151) #14
  %152 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 4, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 4, i32 6, i32 %144, i32 7
  %155 = load i32, ptr %154, align 4
  %156 = add i32 %155, %153
  tail call void @ipu_cpmem_set_buffer(ptr noundef %72, i32 noundef 0, i32 noundef %156) #14
  %157 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 3, i32 2
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %158, i32 0, i32 4
  %160 = load i8, ptr %159, align 4, !range !8
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %142
  %163 = load ptr, ptr %145, align 4
  %164 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 3, i32 6, i32 %82, i32 8
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 3, i32 6, i32 %82, i32 9
  %167 = load i32, ptr %166, align 4
  tail call void @ipu_cpmem_set_uv_offset(ptr noundef %163, i32 noundef %165, i32 noundef %167) #14
  br label %168

168:                                              ; preds = %162, %142
  %169 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 4, i32 2
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %170, i32 0, i32 4
  %172 = load i8, ptr %171, align 4, !range !8
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %168
  %175 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 4, i32 6, i32 %144, i32 8
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 4, i32 6, i32 %144, i32 9
  %178 = load i32, ptr %177, align 4
  tail call void @ipu_cpmem_set_uv_offset(ptr noundef %72, i32 noundef %176, i32 noundef %178) #14
  br label %179

179:                                              ; preds = %174, %168
  %180 = load ptr, ptr %145, align 4
  tail call void @ipu_idmac_select_buffer(ptr noundef %180, i32 noundef 0) #14
  tail call void @ipu_idmac_select_buffer(ptr noundef %72, i32 noundef 0) #14
  br label %208

181:                                              ; preds = %86
  %182 = add i32 %84, -1
  %183 = icmp ult i32 %82, %182
  br i1 %183, label %184, label %208

184:                                              ; preds = %181
  %185 = add nuw i32 %82, 1
  %186 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 20, i32 %185
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %64, i32 0, i32 4
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 14
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 3, i32 0, i32 2
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 3, i32 6, i32 %185, i32 7
  %195 = load i32, ptr %194, align 4
  %196 = add i32 %195, %193
  tail call void @ipu_cpmem_set_buffer(ptr noundef %189, i32 noundef %191, i32 noundef %196) #14
  %197 = load i32, ptr %190, align 4
  %198 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 4, i32 0, i32 2
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 4, i32 6, i32 %187, i32 7
  %201 = load i32, ptr %200, align 4
  %202 = add i32 %201, %199
  tail call void @ipu_cpmem_set_buffer(ptr noundef %72, i32 noundef %197, i32 noundef %202) #14
  %203 = load ptr, ptr %188, align 4
  %204 = load i32, ptr %190, align 4
  tail call void @ipu_idmac_select_buffer(ptr noundef %203, i32 noundef %204) #14
  %205 = load i32, ptr %190, align 4
  tail call void @ipu_idmac_select_buffer(ptr noundef %72, i32 noundef %205) #14
  %206 = load i32, ptr %190, align 4
  %207 = xor i32 %206, 1
  store i32 %207, ptr %190, align 4
  br label %208

208:                                              ; preds = %184, %181, %179, %139
  %209 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %63, i32 0, i32 21
  store i32 0, ptr %209, align 4
  %210 = load i32, ptr %81, align 4
  %211 = add i32 %210, 1
  store i32 %211, ptr %81, align 4
  br label %254

212:                                              ; preds = %80, %76
  %213 = phi i32 [ -5, %76 ], [ 0, %80 ]
  tail call fastcc void @convert_stop(ptr noundef nonnull %7) #14
  %214 = getelementptr inbounds %struct.ipu_image_convert_run, ptr %7, i32 0, i32 3
  store i32 %213, ptr %214, align 4
  %215 = getelementptr inbounds %struct.ipu_image_convert_run, ptr %7, i32 0, i32 4
  %216 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %64, i32 0, i32 15
  %217 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %64, i32 0, i32 15, i32 1
  %218 = load ptr, ptr %217, align 4
  store ptr %215, ptr %217, align 4
  store ptr %216, ptr %215, align 4
  %219 = getelementptr inbounds %struct.ipu_image_convert_run, ptr %7, i32 0, i32 4, i32 1
  store ptr %218, ptr %219, align 4
  store volatile ptr %215, ptr %218, align 4
  %220 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %64, i32 0, i32 16
  store ptr null, ptr %220, align 4
  %221 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %64, i32 0, i32 14
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, %221
  br i1 %223, label %254, label %224

224:                                              ; preds = %252, %212
  %225 = phi ptr [ %227, %252 ], [ %222, %212 ]
  %226 = getelementptr i8, ptr %225, i32 -16
  %227 = load ptr, ptr %225, align 4
  %228 = load ptr, ptr %226, align 4
  %229 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %228, i32 0, i32 15
  %230 = load i8, ptr %229, align 4, !range !8
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %252

232:                                              ; preds = %224
  %233 = load ptr, ptr %228, align 4
  %234 = getelementptr i8, ptr %225, i32 -12
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %228, i32 0, i32 3, i32 0, i32 2
  store i32 %235, ptr %236, align 4
  %237 = getelementptr i8, ptr %225, i32 -8
  %238 = load i32, ptr %237, align 4
  %239 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %228, i32 0, i32 4, i32 0, i32 2
  store i32 %238, ptr %239, align 4
  %240 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %228, i32 0, i32 14
  store i32 0, ptr %240, align 4
  %241 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %228, i32 0, i32 19
  store i32 1, ptr %241, align 4
  %242 = getelementptr i8, ptr %225, i32 4
  %243 = load ptr, ptr %242, align 4
  %244 = load ptr, ptr %225, align 4
  %245 = getelementptr inbounds %struct.list_head, ptr %244, i32 0, i32 1
  store ptr %243, ptr %245, align 4
  store volatile ptr %244, ptr %243, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %225, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %242, align 4
  %246 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %233, i32 0, i32 16
  store ptr %226, ptr %246, align 4
  %247 = tail call fastcc i32 @convert_start(ptr noundef %226, i32 noundef 0) #14
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %232
  %250 = getelementptr i8, ptr %225, i32 -4
  store i32 %247, ptr %250, align 4
  %251 = load ptr, ptr %217, align 4
  store ptr %225, ptr %217, align 4
  store ptr %216, ptr %225, align 4
  store ptr %251, ptr %242, align 4
  store volatile ptr %225, ptr %251, align 4
  store ptr null, ptr %220, align 4
  br label %252

252:                                              ; preds = %249, %224
  %253 = icmp eq ptr %227, %221
  br i1 %253, label %254, label %224

254:                                              ; preds = %252, %232, %212, %208, %60, %58, %48, %39, %2
  %255 = phi i32 [ 1, %60 ], [ 1, %39 ], [ 0, %48 ], [ 0, %2 ], [ 1, %58 ], [ 1, %208 ], [ 2, %212 ], [ 2, %232 ], [ 2, %252 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  ret i32 %255
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_bh(i32 noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %1, i32 0, i32 12
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %1, i32 0, i32 15
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %24, label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %22, %8 ], [ %6, %2 ]
  %10 = phi i32 [ %21, %8 ], [ %4, %2 ]
  %11 = getelementptr i8, ptr %9, i32 -16
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %10) #14
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void %18(ptr noundef %11, ptr noundef %20) #14
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %22 = load volatile ptr, ptr %5, align 4
  %23 = icmp eq ptr %22, %5
  br i1 %23, label %24, label %8

24:                                               ; preds = %8, %2
  %25 = phi i32 [ %4, %2 ], [ %21, %8 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %25) #14
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %27 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %1, i32 0, i32 13
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %40, label %30

30:                                               ; preds = %37, %24
  %31 = phi ptr [ %38, %37 ], [ %28, %24 ]
  %32 = getelementptr i8, ptr %31, i32 -100
  %33 = load i8, ptr %32, align 4, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %31, i32 -96
  tail call void @complete_all(ptr noundef %36) #14
  br label %37

37:                                               ; preds = %35, %30
  %38 = load ptr, ptr %31, align 4
  %39 = icmp eq ptr %38, %27
  br i1 %39, label %40, label %30

40:                                               ; preds = %37, %24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %26) #14
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @convert_stop(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @ipu_ic_task_disable(ptr noundef %5) #14
  %6 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @ipu_idmac_disable_channel(ptr noundef %7) #14
  %9 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @ipu_idmac_disable_channel(ptr noundef %10) #14
  %12 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %2, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %3, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @ipu_idmac_disable_channel(ptr noundef %18) #14
  %20 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %3, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @ipu_idmac_disable_channel(ptr noundef %21) #14
  %23 = load ptr, ptr %9, align 4
  %24 = load ptr, ptr %17, align 4
  %25 = tail call i32 @ipu_idmac_unlink(ptr noundef %23, ptr noundef %24) #14
  br label %26

26:                                               ; preds = %16, %1
  %27 = load ptr, ptr %4, align 4
  %28 = tail call i32 @ipu_ic_disable(ptr noundef %27) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @convert_start(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 4
  %7 = getelementptr %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 20, i32 %1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 21
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 4, i32 6, i32 %8
  %15 = getelementptr %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 4, i32 6, i32 %8, i32 1
  %16 = select i1 %13, ptr %14, ptr %15
  %17 = select i1 %13, ptr %15, ptr %14
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %16, align 4
  %20 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 3, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = freeze i32 %21
  %23 = udiv i32 %1, %22
  %24 = mul i32 %23, %22
  %25 = sub i32 %1, %24
  %26 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = shl i32 %27, 30
  %29 = getelementptr %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 12, i32 %23
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %30, 16
  %32 = or i32 %31, %28
  %33 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 14
  %36 = or i32 %32, %35
  %37 = getelementptr %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 11, i32 %25
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %36, %38
  %40 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %4, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 5
  %43 = getelementptr %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 3, i32 6, i32 %1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 3, i32 6, i32 %1, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @ipu_ic_task_init_rsc(ptr noundef %41, ptr noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %19, i32 noundef %18, i32 noundef %39) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %5, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.19, i32 noundef %47) #15
  br label %127

53:                                               ; preds = %2
  %54 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 3
  %55 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %4, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  tail call fastcc void @init_idmac_channel(ptr noundef %3, ptr noundef %56, ptr noundef %54, i32 noundef 0, i1 noundef zeroext false, i32 noundef %1)
  %57 = load i32, ptr %10, align 4
  %58 = and i32 %57, 4
  %59 = icmp eq i32 %58, 0
  %60 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %4, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  br i1 %59, label %71, label %62

62:                                               ; preds = %53
  tail call fastcc void @init_idmac_channel(ptr noundef %3, ptr noundef %61, ptr noundef %6, i32 noundef 0, i1 noundef zeroext true, i32 noundef %1)
  %63 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %4, i32 0, i32 6
  %64 = load ptr, ptr %63, align 4
  %65 = load i32, ptr %10, align 4
  tail call fastcc void @init_idmac_channel(ptr noundef %3, ptr noundef %64, ptr noundef %6, i32 noundef %65, i1 noundef zeroext true, i32 noundef %1)
  %66 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %4, i32 0, i32 7
  %67 = load ptr, ptr %66, align 4
  tail call fastcc void @init_idmac_channel(ptr noundef %3, ptr noundef %67, ptr noundef %6, i32 noundef 0, i1 noundef zeroext false, i32 noundef %1)
  %68 = load ptr, ptr %60, align 4
  %69 = load ptr, ptr %63, align 4
  %70 = tail call i32 @ipu_idmac_link(ptr noundef %68, ptr noundef %69) #14
  br label %72

71:                                               ; preds = %53
  tail call fastcc void @init_idmac_channel(ptr noundef %3, ptr noundef %61, ptr noundef %6, i32 noundef %57, i1 noundef zeroext false, i32 noundef %1)
  br label %72

72:                                               ; preds = %71, %62
  %73 = load ptr, ptr %40, align 4
  %74 = tail call i32 @ipu_ic_enable(ptr noundef %73) #14
  %75 = load ptr, ptr %55, align 4
  tail call void @ipu_idmac_select_buffer(ptr noundef %75, i32 noundef 0) #14
  %76 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %4, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  tail call void @ipu_idmac_select_buffer(ptr noundef %77, i32 noundef 0) #14
  %78 = load i32, ptr %10, align 4
  %79 = and i32 %78, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %4, i32 0, i32 7
  %83 = load ptr, ptr %82, align 4
  tail call void @ipu_idmac_select_buffer(ptr noundef %83, i32 noundef 0) #14
  br label %84

84:                                               ; preds = %81, %72
  %85 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %3, i32 0, i32 17
  %86 = load i8, ptr %85, align 4, !range !8
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %55, align 4
  tail call void @ipu_idmac_select_buffer(ptr noundef %89, i32 noundef 1) #14
  %90 = load ptr, ptr %76, align 4
  tail call void @ipu_idmac_select_buffer(ptr noundef %90, i32 noundef 1) #14
  %91 = load i32, ptr %10, align 4
  %92 = and i32 %91, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %4, i32 0, i32 7
  %96 = load ptr, ptr %95, align 4
  tail call void @ipu_idmac_select_buffer(ptr noundef %96, i32 noundef 1) #14
  br label %97

97:                                               ; preds = %94, %88, %84
  %98 = load ptr, ptr %55, align 4
  %99 = tail call i32 @ipu_idmac_enable_channel(ptr noundef %98) #14
  %100 = load ptr, ptr %76, align 4
  %101 = tail call i32 @ipu_idmac_enable_channel(ptr noundef %100) #14
  %102 = load i32, ptr %10, align 4
  %103 = and i32 %102, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %4, i32 0, i32 6
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 @ipu_idmac_enable_channel(ptr noundef %107) #14
  %109 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %4, i32 0, i32 7
  %110 = load ptr, ptr %109, align 4
  %111 = tail call i32 @ipu_idmac_enable_channel(ptr noundef %110) #14
  br label %112

112:                                              ; preds = %105, %97
  %113 = load ptr, ptr %40, align 4
  tail call void @ipu_ic_task_enable(ptr noundef %113) #14
  %114 = load ptr, ptr %55, align 4
  tail call void @ipu_cpmem_dump(ptr noundef %114) #14
  %115 = load ptr, ptr %76, align 4
  tail call void @ipu_cpmem_dump(ptr noundef %115) #14
  %116 = load i32, ptr %10, align 4
  %117 = and i32 %116, 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %4, i32 0, i32 6
  %121 = load ptr, ptr %120, align 4
  tail call void @ipu_cpmem_dump(ptr noundef %121) #14
  %122 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %4, i32 0, i32 7
  %123 = load ptr, ptr %122, align 4
  tail call void @ipu_cpmem_dump(ptr noundef %123) #14
  br label %124

124:                                              ; preds = %119, %112
  %125 = getelementptr inbounds %struct.ipu_image_convert_priv, ptr %5, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  tail call void @ipu_dump(ptr noundef %126) #14
  br label %127

127:                                              ; preds = %124, %49
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_uv_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_select_buffer(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_ic_task_disable(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_disable_channel(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_unlink(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_ic_disable(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_ic_task_init_rsc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @init_idmac_channel(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5) unnamed_addr #5 {
  %7 = alloca %struct.ipu_image, align 4
  %8 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #14
  %9 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 20, i32 %5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 20, i32 1
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %12, %6
  %18 = phi i32 [ %14, %12 ], [ %5, %6 ]
  %19 = phi i32 [ %16, %12 ], [ 1, %6 ]
  %20 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %18
  br i1 %4, label %21, label %35

21:                                               ; preds = %17
  %22 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %18, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %20, align 4
  %25 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %18, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 13, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 17
  %30 = load i8, ptr %29, align 4, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %21
  %33 = getelementptr %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 13, i32 1, i32 1
  %34 = load i32, ptr %33, align 4
  br label %53

35:                                               ; preds = %17
  %36 = load i32, ptr %20, align 4
  %37 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %18, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %2, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ipu_image, ptr %2, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %18, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  %46 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 17
  %47 = load i8, ptr %46, align 4, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %35
  %50 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %19, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %42
  br label %53

53:                                               ; preds = %49, %35, %32, %21
  %54 = phi i32 [ %23, %32 ], [ %23, %21 ], [ %36, %49 ], [ %36, %35 ]
  %55 = phi i32 [ %24, %32 ], [ %24, %21 ], [ %38, %49 ], [ %38, %35 ]
  %56 = phi i32 [ %26, %32 ], [ %26, %21 ], [ %40, %49 ], [ %40, %35 ]
  %57 = phi i32 [ %28, %32 ], [ %28, %21 ], [ %45, %49 ], [ %45, %35 ]
  %58 = phi i32 [ %34, %32 ], [ 0, %21 ], [ %52, %49 ], [ 0, %35 ]
  tail call void @ipu_cpmem_zero(ptr noundef %1) #14
  %59 = getelementptr inbounds i8, ptr %7, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %59, i8 0, i32 68, i1 false)
  %60 = getelementptr inbounds %struct.ipu_image, ptr %7, i32 0, i32 1, i32 2
  store i32 %54, ptr %60, align 4
  store i32 %54, ptr %7, align 4
  %61 = getelementptr inbounds %struct.ipu_image, ptr %7, i32 0, i32 1, i32 3
  store i32 %55, ptr %61, align 4
  %62 = getelementptr inbounds %struct.v4l2_pix_format, ptr %7, i32 0, i32 1
  store i32 %55, ptr %62, align 4
  %63 = getelementptr inbounds %struct.v4l2_pix_format, ptr %7, i32 0, i32 4
  store i32 %56, ptr %63, align 4
  %64 = getelementptr inbounds %struct.ipu_image_convert_image, ptr %2, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.v4l2_pix_format, ptr %7, i32 0, i32 2
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.ipu_image, ptr %7, i32 0, i32 2
  store i32 %57, ptr %68, align 4
  %69 = getelementptr inbounds %struct.ipu_image, ptr %7, i32 0, i32 3
  store i32 %58, ptr %69, align 4
  %70 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %65, i32 0, i32 4
  %71 = load i8, ptr %70, align 4, !range !8
  %72 = icmp eq i8 %71, 0
  %73 = or i1 %72, %4
  br i1 %73, label %81, label %74

74:                                               ; preds = %53
  %75 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %18, i32 8
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.ipu_image, ptr %7, i32 0, i32 4
  store i32 %76, ptr %77, align 4
  %78 = getelementptr %struct.ipu_image_convert_image, ptr %2, i32 0, i32 6, i32 %18, i32 9
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.ipu_image, ptr %7, i32 0, i32 5
  store i32 %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %74, %53
  %82 = call i32 @ipu_cpmem_set_image(ptr noundef %1, ptr noundef nonnull %7) #14
  %83 = icmp eq i32 %3, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  call void @ipu_cpmem_set_rotation(ptr noundef %1, i32 noundef %3) #14
  br label %85

85:                                               ; preds = %84, %81
  %86 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %8, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %1
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %8, i32 0, i32 7
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %1
  br i1 %92, label %93, label %103

93:                                               ; preds = %89, %85
  %94 = load ptr, ptr %64, align 4
  %95 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %94, i32 0, i32 4
  %96 = load i8, ptr %95, align 4, !range !8
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.ipu_image_pixfmt, ptr %94, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  call void @ipu_cpmem_skip_odd_chroma_rows(ptr noundef %1) #14
  br label %103

103:                                              ; preds = %102, %98, %93, %89
  %104 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %8, i32 0, i32 6
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, %1
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %8, i32 0, i32 7
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, %1
  br i1 %110, label %111, label %112

111:                                              ; preds = %107, %103
  call void @ipu_cpmem_set_block_mode(ptr noundef %1) #14
  br label %116

112:                                              ; preds = %107
  %113 = and i32 %54, 15
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 16, i32 8
  br label %116

116:                                              ; preds = %112, %111
  %117 = phi i32 [ 8, %111 ], [ %115, %112 ]
  call void @ipu_cpmem_set_burstsize(ptr noundef %1, i32 noundef %117) #14
  %118 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %8, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = call i32 @ipu_ic_task_idma_init(ptr noundef %119, ptr noundef %1, i32 noundef %54, i32 noundef %55, i32 noundef %117, i32 noundef %3) #14
  %121 = getelementptr inbounds %struct.ipuv3_channel, ptr %1, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.ipu_soc, ptr %122, i32 0, i32 24
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  call void @ipu_cpmem_set_axi_id(ptr noundef %1, i32 noundef 1) #14
  br label %127

127:                                              ; preds = %126, %116
  %128 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %0, i32 0, i32 17
  %129 = load i8, ptr %128, align 4, !range !8
  %130 = icmp ne i8 %129, 0
  call void @ipu_idmac_set_double_buffer(ptr noundef %1, i1 noundef zeroext %130) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_link(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_ic_enable(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_enable_channel(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_ic_task_enable(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_dump(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dump(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_zero(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_cpmem_set_image(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_rotation(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_skip_odd_chroma_rows(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_block_mode(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_burstsize(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_ic_task_idma_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_axi_id(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_set_double_buffer(ptr noundef, i1 noundef zeroext) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @force_abort(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %2, i32 0, i32 12
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %2, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %51

11:                                               ; preds = %8
  tail call fastcc void @convert_stop(ptr noundef nonnull %6)
  %12 = getelementptr inbounds %struct.ipu_image_convert_run, ptr %6, i32 0, i32 3
  store i32 -5, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ipu_image_convert_run, ptr %6, i32 0, i32 4
  %14 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %2, i32 0, i32 15
  %15 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %2, i32 0, i32 15, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %13, ptr %15, align 4
  store ptr %14, ptr %13, align 4
  %17 = getelementptr inbounds %struct.ipu_image_convert_run, ptr %6, i32 0, i32 4, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %13, ptr %16, align 4
  store ptr null, ptr %5, align 4
  %18 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %2, i32 0, i32 14
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %51, label %21

21:                                               ; preds = %49, %11
  %22 = phi ptr [ %24, %49 ], [ %19, %11 ]
  %23 = getelementptr i8, ptr %22, i32 -16
  %24 = load ptr, ptr %22, align 4
  %25 = load ptr, ptr %23, align 4
  %26 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %25, i32 0, i32 15
  %27 = load i8, ptr %26, align 4, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %21
  %30 = load ptr, ptr %25, align 4
  %31 = getelementptr i8, ptr %22, i32 -12
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %25, i32 0, i32 3, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = getelementptr i8, ptr %22, i32 -8
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %25, i32 0, i32 4, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %25, i32 0, i32 14
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %25, i32 0, i32 19
  store i32 1, ptr %38, align 4
  %39 = getelementptr i8, ptr %22, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %22, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %39, align 4
  %43 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %30, i32 0, i32 16
  store ptr %23, ptr %43, align 4
  %44 = tail call fastcc i32 @convert_start(ptr noundef %23, i32 noundef 0) #14
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %29
  %47 = getelementptr i8, ptr %22, i32 -4
  store i32 %44, ptr %47, align 4
  %48 = load ptr, ptr %15, align 4
  store ptr %22, ptr %15, align 4
  store ptr %14, ptr %22, align 4
  store ptr %48, ptr %39, align 4
  store volatile ptr %22, ptr %48, align 4
  store ptr null, ptr %5, align 4
  br label %49

49:                                               ; preds = %46, %21
  %50 = icmp eq ptr %24, %18
  br i1 %50, label %51, label %21

51:                                               ; preds = %49, %29, %11, %8, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #14
  %52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %53 = getelementptr inbounds %struct.ipu_image_convert_chan, ptr %2, i32 0, i32 15
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %72, label %56

56:                                               ; preds = %56, %51
  %57 = phi ptr [ %70, %56 ], [ %54, %51 ]
  %58 = phi i32 [ %69, %56 ], [ %52, %51 ]
  %59 = getelementptr i8, ptr %57, i32 -16
  %60 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %57, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store volatile ptr %62, ptr %61, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %57, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %60, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %58) #14
  %64 = load ptr, ptr %59, align 4
  %65 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.ipu_image_convert_ctx, ptr %64, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  tail call void %66(ptr noundef %59, ptr noundef %68) #14
  %69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %70 = load volatile ptr, ptr %53, align 4
  %71 = icmp eq ptr %70, %53
  br i1 %71, label %72, label %56

72:                                               ; preds = %56, %51
  %73 = phi i32 [ %52, %51 ], [ %69, %56 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %73) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_put(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_ic_put(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

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
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 1, i32 2000}
