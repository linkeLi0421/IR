; ModuleID = '/llk/IR/drivers/crypto/caam/key_gen.c_pt.bc'
source_filename = "../drivers/crypto/caam/key_gen.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_split_key_done:\09\09\09\09\09"
module asm "\09.asciz \09\22split_key_done\22\09\09\09\09\09"
module asm "__kstrtabns_split_key_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_split_key:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_split_key\22\09\09\09\09\09"
module asm "__kstrtabns_gen_split_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.split_key_result = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.alginfo = type { i32, i32, i32, i32, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.page = type { i32, %union.anon.1, %union.anon.120, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.120 = type { %struct.atomic_t }

@__kstrtab_split_key_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_split_key_done = external dso_local constant [0 x i8], align 1
@__ksymtab_split_key_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @split_key_done to i32), ptr @__kstrtab_split_key_done, ptr @__kstrtabns_split_key_done }, section "___ksymtab+split_key_done", align 4
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to allocate key input memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to map key memory\0A\00", align 1
@__kstrtab_gen_split_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_split_key = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_split_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_split_key to i32), ptr @__kstrtab_gen_split_key, ptr @__kstrtabns_gen_split_key }, section "___ksymtab+gen_split_key", align 4
@split_key_len.mdpadlen = internal unnamed_addr constant [6 x i8] c"\10\14  @@", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_gen_split_key, ptr @__ksymtab_split_key_done], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @split_key_done(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @caam_strstatus(ptr noundef %0, i32 noundef %2, i1 noundef zeroext false) #8
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %7, %6 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.split_key_result, ptr %3, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  tail call void @complete(ptr noundef %3) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_strstatus(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gen_split_key(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.split_key_result, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false), !annotation !8
  %8 = load i32, ptr %2, align 4
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 15
  %11 = getelementptr [6 x i8], ptr @split_key_len.mdpadlen, i32 0, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.alginfo, ptr %2, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i32 %14, 15
  %17 = and i32 %16, 1008
  %18 = getelementptr inbounds %struct.alginfo, ptr %2, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %17, i32 %4)
  %20 = icmp ugt i32 %19, %5
  br i1 %20, label %176, label %21

21:                                               ; preds = %6
  %22 = load i32, ptr @caam_ptr_sz, align 4
  %23 = shl i32 %22, 1
  %24 = add i32 %23, 24
  %25 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef 3265) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #10
  br label %176

28:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %3, i32 %4, i1 false)
  %29 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #8
  %30 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %42, !prof !9

33:                                               ; preds = %28
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %34 = tail call ptr @dev_driver_string(ptr noundef %0) #8
  %35 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load ptr, ptr %0, align 4
  br label %40

40:                                               ; preds = %38, %33
  %41 = phi ptr [ %39, %38 ], [ %36, %33 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %34, ptr noundef %41) #8
  br label %42

42:                                               ; preds = %40, %28
  br i1 %29, label %52, label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr @mem_map, align 4
  %45 = ptrtoint ptr %1 to i32
  %46 = add i32 %45, 1073741824
  %47 = lshr i32 %46, 12
  %48 = getelementptr %struct.page, ptr %44, i32 %47
  %49 = and i32 %45, 4095
  %50 = tail call i32 @dma_map_page_attrs(ptr noundef %0, ptr noundef %48, i32 noundef %49, i32 noundef %19, i32 noundef 0, i32 noundef 0) #8
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %43, %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #10
  br label %174

53:                                               ; preds = %43
  %54 = load i8, ptr @caam_little_end, align 1, !range !10
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %55, i32 16810160, i32 -1333788671
  store i32 %56, ptr %25, align 64
  %57 = or i32 %4, 67108864
  %58 = icmp eq i8 %54, 0
  %59 = lshr i32 %56, 24
  %60 = select i1 %58, i32 %59, i32 %56
  %61 = and i32 %60, 49
  %62 = getelementptr i32, ptr %25, i32 %61
  %63 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  %64 = select i1 %58, i32 %63, i32 %57
  store i32 %64, ptr %62, align 4
  %65 = load i32, ptr %25, align 64
  %66 = load i8, ptr @caam_little_end, align 1, !range !10
  %67 = icmp eq i8 %66, 0
  %68 = tail call i32 @llvm.bswap.i32(i32 %65) #8
  %69 = select i1 %67, i32 %68, i32 %65
  %70 = add i32 %69, 1
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  %72 = select i1 %67, i32 %71, i32 %70
  store i32 %72, ptr %25, align 64
  %73 = load i8, ptr @caam_little_end, align 1, !range !10
  %74 = icmp eq i8 %73, 0
  %75 = lshr i32 %72, 24
  %76 = select i1 %74, i32 %75, i32 %72
  %77 = and i32 %76, 127
  %78 = getelementptr i32, ptr %25, i32 %77
  %79 = tail call i32 @llvm.bswap.i32(i32 %50) #8
  %80 = select i1 %74, i32 %79, i32 %50
  store i32 %80, ptr %78, align 4
  %81 = load i32, ptr %25, align 64
  %82 = load i8, ptr @caam_little_end, align 1, !range !10
  %83 = icmp eq i8 %82, 0
  %84 = tail call i32 @llvm.bswap.i32(i32 %81) #8
  %85 = select i1 %83, i32 %84, i32 %81
  %86 = load i32, ptr @caam_ptr_sz, align 4
  %87 = lshr i32 %86, 2
  %88 = add i32 %85, %87
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #8
  %90 = select i1 %83, i32 %89, i32 %88
  store i32 %90, ptr %25, align 64
  %91 = load i32, ptr %2, align 4
  %92 = and i32 %91, 16711680
  %93 = or i32 %92, -2080374764
  %94 = load i8, ptr @caam_little_end, align 1, !range !10
  %95 = icmp eq i8 %94, 0
  %96 = lshr i32 %90, 24
  %97 = select i1 %95, i32 %96, i32 %90
  %98 = and i32 %97, 127
  %99 = getelementptr i32, ptr %25, i32 %98
  %100 = tail call i32 @llvm.bswap.i32(i32 %93) #8
  %101 = select i1 %95, i32 %100, i32 %93
  store i32 %101, ptr %99, align 4
  %102 = load i32, ptr %25, align 64
  %103 = load i8, ptr @caam_little_end, align 1, !range !10
  %104 = icmp eq i8 %103, 0
  %105 = tail call i32 @llvm.bswap.i32(i32 %102) #8
  %106 = select i1 %104, i32 %105, i32 %102
  %107 = add i32 %106, 1
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #8
  %109 = select i1 %104, i32 %108, i32 %107
  store i32 %109, ptr %25, align 64
  %110 = load i8, ptr @caam_little_end, align 1, !range !10
  %111 = icmp eq i8 %110, 0
  %112 = lshr i32 %109, 24
  %113 = select i1 %111, i32 %112, i32 %109
  %114 = and i32 %113, 127
  %115 = getelementptr i32, ptr %25, i32 %114
  %116 = select i1 %111, i32 37924, i32 613679104
  store i32 %116, ptr %115, align 4
  %117 = load i32, ptr %25, align 64
  %118 = load i8, ptr @caam_little_end, align 1, !range !10
  %119 = icmp eq i8 %118, 0
  %120 = tail call i32 @llvm.bswap.i32(i32 %117) #8
  %121 = select i1 %119, i32 %120, i32 %117
  %122 = add i32 %121, 1
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #8
  %124 = select i1 %119, i32 %123, i32 %122
  store i32 %124, ptr %25, align 64
  %125 = load i8, ptr @caam_little_end, align 1, !range !10
  %126 = icmp eq i8 %125, 0
  %127 = tail call i32 @llvm.bswap.i32(i32 %124) #8
  %128 = select i1 %126, i32 %127, i32 %124
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #8
  %130 = select i1 %126, i32 %129, i32 %124
  store i32 %130, ptr %25, align 64
  %131 = load i32, ptr %15, align 4
  %132 = or i32 %131, 1680211968
  %133 = load i8, ptr @caam_little_end, align 1, !range !10
  %134 = icmp eq i8 %133, 0
  %135 = lshr i32 %130, 24
  %136 = select i1 %134, i32 %135, i32 %130
  %137 = and i32 %136, 127
  %138 = getelementptr i32, ptr %25, i32 %137
  %139 = tail call i32 @llvm.bswap.i32(i32 %132) #8
  %140 = select i1 %134, i32 %139, i32 %132
  store i32 %140, ptr %138, align 4
  %141 = load i32, ptr %25, align 64
  %142 = load i8, ptr @caam_little_end, align 1, !range !10
  %143 = icmp eq i8 %142, 0
  %144 = tail call i32 @llvm.bswap.i32(i32 %141) #8
  %145 = select i1 %143, i32 %144, i32 %141
  %146 = add i32 %145, 1
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #8
  %148 = select i1 %143, i32 %147, i32 %146
  store i32 %148, ptr %25, align 64
  %149 = load i8, ptr @caam_little_end, align 1, !range !10
  %150 = icmp eq i8 %149, 0
  %151 = lshr i32 %148, 24
  %152 = select i1 %150, i32 %151, i32 %148
  %153 = and i32 %152, 127
  %154 = getelementptr i32, ptr %25, i32 %153
  %155 = select i1 %150, i32 %79, i32 %50
  store i32 %155, ptr %154, align 4
  %156 = load i32, ptr %25, align 64
  %157 = load i8, ptr @caam_little_end, align 1, !range !10
  %158 = icmp eq i8 %157, 0
  %159 = tail call i32 @llvm.bswap.i32(i32 %156) #8
  %160 = select i1 %158, i32 %159, i32 %156
  %161 = load i32, ptr @caam_ptr_sz, align 4
  %162 = lshr i32 %161, 2
  %163 = add i32 %160, %162
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #8
  %165 = select i1 %158, i32 %164, i32 %163
  store i32 %165, ptr %25, align 64
  %166 = getelementptr inbounds %struct.split_key_result, ptr %7, i32 0, i32 1
  store i32 0, ptr %166, align 4
  store i32 0, ptr %7, align 4
  %167 = getelementptr inbounds %struct.completion, ptr %7, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %167, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #8
  %168 = call i32 @caam_jr_enqueue(ptr noundef %0, ptr noundef nonnull %25, ptr noundef nonnull @split_key_done, ptr noundef nonnull %7) #8
  %169 = icmp eq i32 %168, -115
  br i1 %169, label %170, label %172

170:                                              ; preds = %53
  call void @wait_for_completion(ptr noundef nonnull %7) #8
  %171 = load i32, ptr %166, align 4
  br label %172

172:                                              ; preds = %170, %53
  %173 = phi i32 [ %171, %170 ], [ %168, %53 ]
  call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %50, i32 noundef %19, i32 noundef 0, i32 noundef 0) #8
  br label %174

174:                                              ; preds = %172, %52
  %175 = phi i32 [ -12, %52 ], [ %173, %172 ]
  call void @kfree(ptr noundef nonnull %25) #8
  br label %176

176:                                              ; preds = %174, %27, %6
  %177 = phi i32 [ %175, %174 ], [ -12, %27 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #8
  ret i32 %177
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_jr_enqueue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
