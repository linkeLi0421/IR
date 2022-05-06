; ModuleID = '/llk/IR/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c_pt.bc'
source_filename = "../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.sun4i_ss_ctx = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [128 x i8], [132 x i8], %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.md5_state = type { [4 x i32], [16 x i32], i64 }
%struct.sha1_state = type { [5 x i32], i64, [64 x i8] }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.sun4i_req_ctx = type { i32, i64, [5 x i32], [64 x i8], i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Cannot process too large request\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ERROR: Bound error %u %u\0A\00", align 1
@sun4i_hash._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.sun4i_hash = private unnamed_addr constant [11 x i8] c"sun4i_hash\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"ERROR: hash end timeout %d>%d ctl=%x len=%u\0A\00", align 1
@sun4i_hash._rs.3 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_crainit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(48) %2, i8 0, i32 48, i1 false)
  %5 = getelementptr i8, ptr %4, i32 384
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 24
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %6, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #10
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #10, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 0, i32 -1, ptr elementtype(i32) %13) #10, !srcloc !10
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  br label %20

18:                                               ; preds = %1
  %19 = getelementptr i8, ptr %0, i32 -32
  store i32 112, ptr %19, align 32
  br label %20

20:                                               ; preds = %18, %17, %12
  %21 = phi i32 [ 0, %18 ], [ %10, %12 ], [ %10, %17 ]
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sun4i_hash_craexit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @sun4i_hash_init(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = load ptr, ptr %5, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(112) %2, i8 0, i32 112, i1 false)
  %7 = getelementptr i8, ptr %6, i32 -188
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %2, align 8
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_export_md5(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  %8 = add i64 %4, %7
  %9 = getelementptr inbounds %struct.md5_state, ptr %1, i32 0, i32 2
  store i64 %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.md5_state, ptr %1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 4
  %12 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %10, ptr align 4 %11, i32 %12, i1 false)
  %13 = load i64, ptr %3, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %1, align 4
  %18 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 2
  %25 = load i32, ptr %24, align 4
  br label %29

26:                                               ; preds = %2
  store i32 1732584193, ptr %1, align 8
  %27 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  store i32 -271733879, ptr %27, align 4
  %28 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  store i32 -1732584194, ptr %28, align 8
  br label %29

29:                                               ; preds = %26, %15
  %30 = phi i32 [ %25, %15 ], [ 271733878, %26 ]
  %31 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_import_md5(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = load ptr, ptr %6, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(112) %3, i8 0, i32 112, i1 false) #10
  %8 = getelementptr i8, ptr %7, i32 -188
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %3, align 8
  %10 = getelementptr inbounds %struct.md5_state, ptr %1, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, -64
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i64 %12, ptr %13, align 8
  %14 = load i64, ptr %10, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 63
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 4
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 4
  %19 = getelementptr inbounds %struct.md5_state, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %18, ptr align 8 %19, i32 %16, i1 false)
  %20 = load i32, ptr %1, align 4
  %21 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  %22 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 0, i32 4
  store i32 %23, ptr %24, align 4
  %25 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 2
  store i32 %29, ptr %30, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_export_sha1(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  %8 = add i64 %4, %7
  %9 = getelementptr inbounds %struct.sha1_state, ptr %1, i32 0, i32 1
  store i64 %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.sha1_state, ptr %1, i32 0, i32 2
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 4
  %12 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %10, ptr align 4 %11, i32 %12, i1 false)
  %13 = load i64, ptr %3, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %2
  %16 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %1, align 4
  %18 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr [5 x i32], ptr %1, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr [5 x i32], ptr %1, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr [5 x i32], ptr %1, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr [5 x i32], ptr %1, i32 0, i32 4
  store i32 %28, ptr %29, align 4
  br label %35

30:                                               ; preds = %2
  store i32 1732584193, ptr %1, align 8
  %31 = getelementptr [5 x i32], ptr %1, i32 0, i32 1
  store i32 -271733879, ptr %31, align 4
  %32 = getelementptr [5 x i32], ptr %1, i32 0, i32 2
  store i32 -1732584194, ptr %32, align 8
  %33 = getelementptr [5 x i32], ptr %1, i32 0, i32 3
  store i32 271733878, ptr %33, align 4
  %34 = getelementptr [5 x i32], ptr %1, i32 0, i32 4
  store i32 -1009589776, ptr %34, align 8
  br label %35

35:                                               ; preds = %30, %15
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_import_sha1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = load ptr, ptr %6, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(112) %3, i8 0, i32 112, i1 false) #10
  %8 = getelementptr i8, ptr %7, i32 -188
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %3, align 8
  %10 = getelementptr inbounds %struct.sha1_state, ptr %1, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, -64
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i64 %12, ptr %13, align 8
  %14 = load i64, ptr %10, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 63
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 4
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 4
  %19 = getelementptr inbounds %struct.sha1_state, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %18, ptr align 8 %19, i32 %16, i1 false)
  %20 = load i32, ptr %1, align 4
  %21 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  %22 = getelementptr [5 x i32], ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 0, i32 4
  store i32 %23, ptr %24, align 4
  %25 = getelementptr [5 x i32], ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr [5 x i32], ptr %1, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr [5 x i32], ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.ahash_request, ptr %0, i32 1, i32 3
  store i32 %32, ptr %33, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_final(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5
  store i32 2, ptr %2, align 8
  %3 = tail call fastcc i32 @sun4i_hash(ptr noundef %0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sun4i_hash(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [32 x i32], align 4
  %3 = alloca %struct.sg_mapping_iter, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %2, i8 0, i32 128, i1 false)
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 12
  %8 = getelementptr i8, ptr %6, i32 104
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false), !annotation !12
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20, !prof !13

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %466, label %20

20:                                               ; preds = %15, %1
  %21 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = xor i32 %22, -1
  %24 = icmp ugt i32 %13, %23
  br i1 %24, label %25, label %28, !prof !13

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str) #11
  br label %466

28:                                               ; preds = %20
  %29 = add i32 %22, %13
  %30 = icmp ult i32 %29, 64
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = tail call i32 @sg_nents(ptr noundef %11) #10
  %38 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 4
  %39 = load i32, ptr %21, align 4
  %40 = getelementptr i8, ptr %38, i32 %39
  %41 = load i32, ptr %12, align 8
  %42 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %11, i32 noundef %37, ptr noundef %40, i32 noundef %41, i32 noundef 0) #10
  %43 = load i32, ptr %21, align 4
  %44 = add i32 %43, %42
  store i32 %44, ptr %21, align 4
  br label %466

45:                                               ; preds = %31, %28
  %46 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %46) #10
  %47 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %48 = load i64, ptr %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %71, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %7, align 4
  %52 = getelementptr i8, ptr %51, i32 -64
  %53 = load i32, ptr %52, align 64
  %54 = icmp ult i32 %53, 4
  br i1 %54, label %71, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 1
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i32 [ 0, %55 ], [ %65, %57 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !14
  tail call void @arm_heavy_mb() #10
  %59 = getelementptr %struct.sun4i_req_ctx, ptr %4, i32 0, i32 2, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %56, align 4
  %62 = getelementptr i8, ptr %61, i32 36
  %63 = shl i32 %58, 2
  %64 = getelementptr i8, ptr %62, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %60) #10, !srcloc !15
  %65 = add nuw nsw i32 %58, 1
  %66 = load ptr, ptr %7, align 4
  %67 = getelementptr i8, ptr %66, i32 -64
  %68 = load i32, ptr %67, align 64
  %69 = lshr i32 %68, 2
  %70 = icmp ult i32 %65, %69
  br i1 %70, label %57, label %71

71:                                               ; preds = %57, %50, %45
  %72 = phi i32 [ 1, %45 ], [ 16385, %50 ], [ 16385, %57 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %73 = load i32, ptr %4, align 8
  %74 = or i32 %72, %73
  %75 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #10, !srcloc !15
  %77 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %309, label %81

81:                                               ; preds = %71
  %82 = and i32 %78, 2
  %83 = icmp eq i32 %82, 0
  %84 = load i32, ptr %12, align 8
  br i1 %83, label %85, label %97

85:                                               ; preds = %81
  %86 = load i32, ptr %21, align 4
  %87 = add i32 %86, %84
  %88 = and i32 %87, -64
  %89 = sub i32 %88, %86
  %90 = icmp ult i32 %84, %89
  %91 = sub i32 %84, %89
  %92 = icmp ugt i32 %91, 63
  %93 = or i1 %90, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 6
  %96 = load ptr, ptr %95, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.1, i32 noundef %89, i32 noundef %84) #11
  br label %463

97:                                               ; preds = %81
  %98 = icmp ult i32 %84, 4
  br i1 %98, label %104, label %99

99:                                               ; preds = %97
  %100 = load i32, ptr %21, align 4
  %101 = add i32 %100, %84
  %102 = and i32 %101, -4
  %103 = sub i32 %102, %100
  br label %104

104:                                              ; preds = %99, %97, %85
  %105 = phi i32 [ %103, %99 ], [ %89, %85 ], [ 0, %97 ]
  %106 = icmp eq ptr %11, null
  br i1 %106, label %116, label %107

107:                                              ; preds = %107, %104
  %108 = phi ptr [ %113, %107 ], [ %11, %104 ]
  %109 = getelementptr inbounds %struct.scatterlist, ptr %108, i32 0, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 3
  %112 = icmp eq i32 %111, 0
  %113 = tail call ptr @sg_next(ptr noundef nonnull %108) #10
  %114 = icmp ne ptr %113, null
  %115 = and i1 %114, %112
  br i1 %115, label %107, label %116

116:                                              ; preds = %107, %104
  %117 = load ptr, ptr %10, align 4
  %118 = tail call i32 @sg_nents(ptr noundef %117) #10
  call void @sg_miter_start(ptr noundef nonnull %3, ptr noundef %117, i32 noundef %118, i32 noundef 5) #10
  %119 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %3) #10
  %120 = getelementptr inbounds %struct.sg_mapping_iter, ptr %3, i32 0, i32 2
  %121 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 4
  %122 = getelementptr inbounds %struct.sg_mapping_iter, ptr %3, i32 0, i32 1
  br label %123

123:                                              ; preds = %223, %116
  %124 = phi i32 [ 32, %116 ], [ %224, %223 ]
  %125 = phi i32 [ 0, %116 ], [ %225, %223 ]
  %126 = phi i32 [ 0, %116 ], [ %226, %223 ]
  %127 = load i32, ptr %21, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i32, ptr %120, align 4
  %131 = sub i32 %130, %125
  %132 = icmp ult i32 %131, 4
  br i1 %132, label %133, label %180

133:                                              ; preds = %129, %123
  %134 = icmp ult i32 %127, 64
  %135 = icmp ugt i32 %105, %126
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %137, label %164

137:                                              ; preds = %158, %133
  %138 = phi i32 [ %159, %158 ], [ %127, %133 ]
  %139 = phi i32 [ %152, %158 ], [ %126, %133 ]
  %140 = phi i32 [ %160, %158 ], [ %125, %133 ]
  %141 = sub i32 %105, %139
  %142 = sub nuw nsw i32 64, %138
  %143 = call i32 @llvm.umin.i32(i32 %141, i32 %142)
  %144 = load i32, ptr %120, align 4
  %145 = sub i32 %144, %140
  %146 = call i32 @llvm.umin.i32(i32 %145, i32 %143)
  %147 = getelementptr i8, ptr %121, i32 %138
  %148 = load ptr, ptr %122, align 4
  %149 = getelementptr i8, ptr %148, i32 %140
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %147, ptr align 1 %149, i32 %146, i1 false)
  %150 = load i32, ptr %21, align 4
  %151 = add i32 %150, %146
  store i32 %151, ptr %21, align 4
  %152 = add i32 %146, %139
  %153 = add i32 %146, %140
  %154 = icmp eq i32 %153, %144
  br i1 %154, label %155, label %158

155:                                              ; preds = %137
  %156 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %3) #10
  %157 = load i32, ptr %21, align 4
  br label %158

158:                                              ; preds = %155, %137
  %159 = phi i32 [ %157, %155 ], [ %151, %137 ]
  %160 = phi i32 [ 0, %155 ], [ %153, %137 ]
  %161 = icmp ult i32 %159, 64
  %162 = icmp ugt i32 %105, %152
  %163 = select i1 %161, i1 %162, i1 false
  br i1 %163, label %137, label %164

164:                                              ; preds = %158, %133
  %165 = phi i32 [ %125, %133 ], [ %160, %158 ]
  %166 = phi i32 [ %126, %133 ], [ %152, %158 ]
  %167 = phi i32 [ %127, %133 ], [ %159, %158 ]
  %168 = icmp ugt i32 %167, 3
  %169 = and i32 %167, 3
  %170 = icmp eq i32 %169, 0
  %171 = and i1 %168, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %164
  %173 = load ptr, ptr %75, align 4
  %174 = getelementptr i8, ptr %173, i32 512
  %175 = lshr i32 %167, 2
  call void @__raw_writesl(ptr noundef %174, ptr noundef %121, i32 noundef %175) #10
  %176 = load i32, ptr %21, align 4
  %177 = zext i32 %176 to i64
  %178 = load i64, ptr %47, align 8
  %179 = add i64 %178, %177
  store i64 %179, ptr %47, align 8
  store i32 0, ptr %21, align 4
  br label %180

180:                                              ; preds = %172, %164, %129
  %181 = phi i32 [ %165, %172 ], [ %165, %164 ], [ %125, %129 ]
  %182 = phi i32 [ %166, %172 ], [ %166, %164 ], [ %126, %129 ]
  %183 = load i32, ptr %120, align 4
  %184 = sub i32 %183, %181
  %185 = icmp ugt i32 %184, 3
  %186 = icmp ugt i32 %105, %182
  %187 = select i1 %185, i1 %186, i1 false
  br i1 %187, label %188, label %223

188:                                              ; preds = %180
  %189 = load i32, ptr %12, align 8
  %190 = sub i32 %189, %182
  %191 = call i32 @llvm.umin.i32(i32 %184, i32 %190)
  %192 = and i32 %184, -4
  %193 = call i32 @llvm.umin.i32(i32 %192, i32 %191)
  %194 = sub i32 %105, %182
  %195 = lshr i32 %194, 2
  %196 = call i32 @llvm.umin.i32(i32 %195, i32 %124)
  %197 = lshr i32 %193, 2
  %198 = call i32 @llvm.umin.i32(i32 %196, i32 %197)
  %199 = load ptr, ptr %75, align 4
  %200 = getelementptr i8, ptr %199, i32 512
  %201 = load ptr, ptr %122, align 4
  %202 = getelementptr i8, ptr %201, i32 %181
  call void @__raw_writesl(ptr noundef %200, ptr noundef %202, i32 noundef %198) #10
  %203 = shl nuw i32 %198, 2
  %204 = zext i32 %203 to i64
  %205 = load i64, ptr %47, align 8
  %206 = add i64 %205, %204
  store i64 %206, ptr %47, align 8
  %207 = add i32 %203, %182
  %208 = add i32 %203, %181
  %209 = sub i32 %124, %198
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %188
  %212 = load ptr, ptr %75, align 4
  %213 = getelementptr i8, ptr %212, i32 68
  %214 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #10, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %215 = lshr i32 %214, 24
  %216 = and i32 %215, 63
  br label %217

217:                                              ; preds = %211, %188
  %218 = phi i32 [ %209, %188 ], [ %216, %211 ]
  %219 = load i32, ptr %120, align 4
  %220 = icmp eq i32 %208, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %3) #10
  br label %223

223:                                              ; preds = %221, %217, %180
  %224 = phi i32 [ %218, %221 ], [ %218, %217 ], [ %124, %180 ]
  %225 = phi i32 [ 0, %221 ], [ %208, %217 ], [ %181, %180 ]
  %226 = phi i32 [ %207, %221 ], [ %207, %217 ], [ %182, %180 ]
  %227 = icmp ult i32 %226, %105
  br i1 %227, label %123, label %228

228:                                              ; preds = %223
  %229 = load i32, ptr %12, align 8
  %230 = sub i32 %229, %226
  %231 = icmp ult i32 %230, 64
  %232 = icmp ugt i32 %229, %226
  %233 = and i1 %231, %232
  br i1 %233, label %234, label %263

234:                                              ; preds = %259, %228
  %235 = phi i32 [ %261, %259 ], [ %229, %228 ]
  %236 = phi i32 [ %254, %259 ], [ %226, %228 ]
  %237 = phi i32 [ %260, %259 ], [ %225, %228 ]
  %238 = load i32, ptr %120, align 4
  %239 = icmp ugt i32 %238, %237
  br i1 %239, label %240, label %263

240:                                              ; preds = %234
  %241 = load i32, ptr %21, align 4
  %242 = icmp ult i32 %241, 64
  br i1 %242, label %243, label %263

243:                                              ; preds = %240
  %244 = sub i32 %235, %236
  %245 = sub nuw nsw i32 64, %241
  %246 = call i32 @llvm.umin.i32(i32 %244, i32 %245)
  %247 = sub i32 %238, %237
  %248 = call i32 @llvm.umin.i32(i32 %247, i32 %246)
  %249 = getelementptr i8, ptr %121, i32 %241
  %250 = load ptr, ptr %122, align 4
  %251 = getelementptr i8, ptr %250, i32 %237
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %249, ptr align 1 %251, i32 %248, i1 false)
  %252 = load i32, ptr %21, align 4
  %253 = add i32 %252, %248
  store i32 %253, ptr %21, align 4
  %254 = add i32 %248, %236
  %255 = add i32 %248, %237
  %256 = icmp eq i32 %255, %238
  br i1 %256, label %257, label %259

257:                                              ; preds = %243
  %258 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %3) #10
  br label %259

259:                                              ; preds = %257, %243
  %260 = phi i32 [ 0, %257 ], [ %255, %243 ]
  %261 = load i32, ptr %12, align 8
  %262 = icmp ugt i32 %261, %254
  br i1 %262, label %234, label %263

263:                                              ; preds = %259, %240, %234, %228
  call void @sg_miter_stop(ptr noundef nonnull %3) #10
  %264 = load i32, ptr %77, align 8
  %265 = and i32 %264, 2
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %309

267:                                              ; preds = %263
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  call void @arm_heavy_mb() #10
  %268 = load i32, ptr %4, align 8
  %269 = or i32 %268, 5
  %270 = load ptr, ptr %75, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 %269) #10, !srcloc !15
  br label %271

271:                                              ; preds = %271, %267
  %272 = phi i32 [ 0, %267 ], [ %275, %271 ]
  %273 = load ptr, ptr %75, align 4
  %274 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %273) #10, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !20
  %275 = add nuw nsw i32 %272, 1
  %276 = icmp ult i32 %272, 99
  %277 = and i32 %274, 4
  %278 = icmp ne i32 %277, 0
  %279 = select i1 %276, i1 %278, i1 false
  br i1 %279, label %271, label %280

280:                                              ; preds = %271
  %281 = icmp ugt i32 %272, 98
  br i1 %281, label %282, label %289, !prof !13

282:                                              ; preds = %280
  %283 = call i32 @___ratelimit(ptr noundef nonnull @sun4i_hash._rs, ptr noundef nonnull @__func__.sun4i_hash) #10
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %463, label %285

285:                                              ; preds = %282
  %286 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 6
  %287 = load ptr, ptr %286, align 4
  %288 = load i32, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %287, ptr noundef nonnull @.str.2, i32 noundef %275, i32 noundef 100, i32 noundef %274, i32 noundef %288) #11
  br label %463

289:                                              ; preds = %280
  %290 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %290(i32 noundef 214748) #10
  %291 = load ptr, ptr %7, align 4
  %292 = getelementptr i8, ptr %291, i32 -64
  %293 = load i32, ptr %292, align 64
  %294 = icmp ult i32 %293, 4
  br i1 %294, label %463, label %295

295:                                              ; preds = %295, %289
  %296 = phi i32 [ %303, %295 ], [ 0, %289 ]
  %297 = load ptr, ptr %75, align 4
  %298 = getelementptr i8, ptr %297, i32 76
  %299 = shl i32 %296, 2
  %300 = getelementptr i8, ptr %298, i32 %299
  %301 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %300) #10, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %302 = getelementptr %struct.sun4i_req_ctx, ptr %4, i32 0, i32 2, i32 %296
  store i32 %301, ptr %302, align 4
  %303 = add nuw nsw i32 %296, 1
  %304 = load ptr, ptr %7, align 4
  %305 = getelementptr i8, ptr %304, i32 -64
  %306 = load i32, ptr %305, align 64
  %307 = lshr i32 %306, 2
  %308 = icmp ult i32 %303, %307
  br i1 %308, label %295, label %463

309:                                              ; preds = %263, %71
  %310 = load i32, ptr %21, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %342, label %312

312:                                              ; preds = %309
  %313 = icmp ult i32 %310, 4
  br i1 %313, label %314, label %316

314:                                              ; preds = %312
  %315 = and i32 %310, -4
  br label %326

316:                                              ; preds = %312
  %317 = lshr i32 %310, 2
  %318 = load ptr, ptr %75, align 4
  %319 = getelementptr i8, ptr %318, i32 512
  %320 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 4
  call void @__raw_writesl(ptr noundef %319, ptr noundef %320, i32 noundef %317) #10
  %321 = and i32 %310, -4
  %322 = zext i32 %321 to i64
  %323 = load i64, ptr %47, align 8
  %324 = add i64 %323, %322
  store i64 %324, ptr %47, align 8
  %325 = load i32, ptr %21, align 4
  br label %326

326:                                              ; preds = %316, %314
  %327 = phi i32 [ %315, %314 ], [ %321, %316 ]
  %328 = phi i32 [ %310, %314 ], [ %325, %316 ]
  %329 = sub i32 %328, %327
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %342, label %331

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 4
  %333 = getelementptr i8, ptr %332, i32 %327
  %334 = load i32, ptr %333, align 4
  %335 = mul i32 %329, -8
  %336 = add i32 %335, 32
  %337 = lshr i32 -1, %336
  %338 = and i32 %334, %337
  %339 = zext i32 %329 to i64
  %340 = load i64, ptr %47, align 8
  %341 = add i64 %340, %339
  store i64 %341, ptr %47, align 8
  br label %342

342:                                              ; preds = %331, %326, %309
  %343 = phi i32 [ %338, %331 ], [ 0, %326 ], [ 0, %309 ]
  %344 = phi i32 [ %329, %331 ], [ 0, %326 ], [ 0, %309 ]
  %345 = shl i32 %344, 3
  %346 = shl i32 128, %345
  %347 = or i32 %346, %343
  store i32 %347, ptr %2, align 4
  %348 = load i64, ptr %47, align 8
  %349 = trunc i64 %348 to i32
  %350 = and i32 %349, 63
  %351 = sub nuw nsw i32 64, %350
  %352 = icmp eq i32 %344, 0
  %353 = select i1 %352, i32 12, i32 8
  %354 = icmp ult i32 %351, %353
  %355 = sub nuw nsw i32 128, %350
  %356 = select i1 %354, i32 %355, i32 %351
  %357 = sub nsw i32 %356, %353
  %358 = lshr i32 %357, 2
  %359 = add nuw nsw i32 %358, 1
  %360 = load i32, ptr %4, align 8
  %361 = icmp eq i32 %360, 48
  %362 = shl i64 %348, 3
  %363 = call i64 @llvm.bswap.i64(i64 %362)
  %364 = select i1 %361, i64 %363, i64 %362
  %365 = getelementptr [32 x i32], ptr %2, i32 0, i32 %359
  store i64 %364, ptr %365, align 8
  %366 = add nuw nsw i32 %358, 3
  %367 = load ptr, ptr %75, align 4
  %368 = getelementptr i8, ptr %367, i32 512
  call void @__raw_writesl(ptr noundef %368, ptr noundef nonnull %2, i32 noundef %366) #10
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !22
  call void @arm_heavy_mb() #10
  %369 = load i32, ptr %4, align 8
  %370 = or i32 %369, 5
  %371 = load ptr, ptr %75, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %371, i32 %370) #10, !srcloc !15
  br label %372

372:                                              ; preds = %372, %342
  %373 = phi i32 [ 0, %342 ], [ %376, %372 ]
  %374 = load ptr, ptr %75, align 4
  %375 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %374) #10, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !23
  %376 = add nuw nsw i32 %373, 1
  %377 = icmp ult i32 %373, 99
  %378 = and i32 %375, 4
  %379 = icmp ne i32 %378, 0
  %380 = select i1 %377, i1 %379, i1 false
  br i1 %380, label %372, label %381

381:                                              ; preds = %372
  %382 = icmp ugt i32 %373, 98
  br i1 %382, label %383, label %390, !prof !13

383:                                              ; preds = %381
  %384 = call i32 @___ratelimit(ptr noundef nonnull @sun4i_hash._rs.3, ptr noundef nonnull @__func__.sun4i_hash) #10
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %463, label %386

386:                                              ; preds = %383
  %387 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 6
  %388 = load ptr, ptr %387, align 4
  %389 = load i32, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %388, ptr noundef nonnull @.str.2, i32 noundef %376, i32 noundef 100, i32 noundef %375, i32 noundef %389) #11
  br label %463

390:                                              ; preds = %381
  %391 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %391(i32 noundef 214748) #10
  %392 = load i32, ptr %4, align 8
  %393 = icmp eq i32 %392, 48
  %394 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %395 = load ptr, ptr %75, align 4
  %396 = getelementptr i8, ptr %395, i32 76
  %397 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %396) #10
  call void asm sideeffect "dsb ", "~{memory}"() #10
  br i1 %393, label %415, label %398

398:                                              ; preds = %390
  %399 = load ptr, ptr %394, align 32
  store i32 %397, ptr %399, align 1
  %400 = load ptr, ptr %75, align 4
  %401 = getelementptr i8, ptr %400, i32 80
  %402 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %401) #10, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !24
  %403 = load ptr, ptr %394, align 32
  %404 = getelementptr i8, ptr %403, i32 4
  store i32 %402, ptr %404, align 1
  %405 = load ptr, ptr %75, align 4
  %406 = getelementptr i8, ptr %405, i32 84
  %407 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %406) #10, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !24
  %408 = load ptr, ptr %394, align 32
  %409 = getelementptr i8, ptr %408, i32 8
  store i32 %407, ptr %409, align 1
  %410 = load ptr, ptr %75, align 4
  %411 = getelementptr i8, ptr %410, i32 88
  %412 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %411) #10, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !24
  %413 = load ptr, ptr %394, align 32
  %414 = getelementptr i8, ptr %413, i32 12
  store i32 %412, ptr %414, align 1
  br label %463

415:                                              ; preds = %390
  %416 = load ptr, ptr %9, align 4
  %417 = load i8, ptr %416, align 1, !range !25
  %418 = icmp eq i8 %417, 0
  %419 = load ptr, ptr %394, align 32
  %420 = call i32 @llvm.bswap.i32(i32 %397) #10
  %421 = select i1 %418, i32 %420, i32 %397
  store i32 %421, ptr %419, align 1
  %422 = load ptr, ptr %75, align 4
  %423 = getelementptr i8, ptr %422, i32 80
  %424 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %423) #10, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %425 = load ptr, ptr %9, align 4
  %426 = load i8, ptr %425, align 1, !range !25
  %427 = icmp eq i8 %426, 0
  %428 = load ptr, ptr %394, align 32
  %429 = getelementptr i8, ptr %428, i32 4
  %430 = call i32 @llvm.bswap.i32(i32 %424) #10
  %431 = select i1 %427, i32 %430, i32 %424
  store i32 %431, ptr %429, align 1
  %432 = load ptr, ptr %75, align 4
  %433 = getelementptr i8, ptr %432, i32 84
  %434 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %433) #10, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %435 = load ptr, ptr %9, align 4
  %436 = load i8, ptr %435, align 1, !range !25
  %437 = icmp eq i8 %436, 0
  %438 = load ptr, ptr %394, align 32
  %439 = getelementptr i8, ptr %438, i32 8
  %440 = call i32 @llvm.bswap.i32(i32 %434) #10
  %441 = select i1 %437, i32 %440, i32 %434
  store i32 %441, ptr %439, align 1
  %442 = load ptr, ptr %75, align 4
  %443 = getelementptr i8, ptr %442, i32 88
  %444 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %443) #10, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %445 = load ptr, ptr %9, align 4
  %446 = load i8, ptr %445, align 1, !range !25
  %447 = icmp eq i8 %446, 0
  %448 = load ptr, ptr %394, align 32
  %449 = getelementptr i8, ptr %448, i32 12
  %450 = call i32 @llvm.bswap.i32(i32 %444) #10
  %451 = select i1 %447, i32 %450, i32 %444
  store i32 %451, ptr %449, align 1
  %452 = load ptr, ptr %75, align 4
  %453 = getelementptr i8, ptr %452, i32 92
  %454 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %453) #10, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %455 = load ptr, ptr %9, align 4
  %456 = load i8, ptr %455, align 1, !range !25
  %457 = icmp eq i8 %456, 0
  %458 = load ptr, ptr %394, align 32
  %459 = getelementptr i8, ptr %458, i32 16
  br i1 %457, label %461, label %460

460:                                              ; preds = %415
  store i32 %454, ptr %459, align 1
  br label %463

461:                                              ; preds = %415
  %462 = call i32 @llvm.bswap.i32(i32 %454) #10
  store i32 %462, ptr %459, align 1
  br label %463

463:                                              ; preds = %461, %460, %398, %386, %383, %295, %289, %285, %282, %94
  %464 = phi i32 [ -22, %94 ], [ -5, %285 ], [ -5, %282 ], [ -5, %386 ], [ -5, %383 ], [ 0, %289 ], [ 0, %398 ], [ 0, %461 ], [ 0, %460 ], [ 0, %295 ]
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !27
  call void @arm_heavy_mb() #10
  %465 = load ptr, ptr %75, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %465, i32 0) #10, !srcloc !15
  call void @_raw_spin_unlock_bh(ptr noundef %46) #10
  br label %466

466:                                              ; preds = %463, %36, %25, %15
  %467 = phi i32 [ -22, %25 ], [ %464, %463 ], [ 0, %36 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #10
  ret i32 %467
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5
  store i32 1, ptr %2, align 8
  %3 = tail call fastcc i32 @sun4i_hash(ptr noundef %0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_finup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5
  store i32 3, ptr %2, align 8
  %3 = tail call fastcc i32 @sun4i_hash(ptr noundef %0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_hash_digest(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = load ptr, ptr %5, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(112) %2, i8 0, i32 112, i1 false) #10
  %7 = getelementptr i8, ptr %6, i32 -188
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %2, align 8
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5
  store i32 3, ptr %9, align 8
  %10 = tail call fastcc i32 @sun4i_hash(ptr noundef %0)
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{i64 2147961465}
!9 = !{i64 459775, i64 2147949746, i64 2147949772, i64 2147949819, i64 2147949841, i64 2147949869, i64 2147949889}
!10 = !{i64 446344, i64 446369, i64 446391, i64 446407, i64 446419, i64 446439, i64 446463, i64 446479, i64 446491}
!11 = !{i64 2147961591}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2153328620}
!15 = !{i64 2681485}
!16 = !{i64 2153328993}
!17 = !{i64 2681903}
!18 = !{i64 2153348988}
!19 = !{i64 2153352595}
!20 = !{i64 2153353109}
!21 = !{i64 2153355253}
!22 = !{i64 2153358855}
!23 = !{i64 2153359369}
!24 = !{i64 2153361879}
!25 = !{i8 0, i8 2}
!26 = !{i64 2153361522}
!27 = !{i64 2153362065}
