; ModuleID = '/llk/IR/drivers/crypto/caam/caampkc.c_pt.bc'
source_filename = "../drivers/crypto/caam/caampkc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.caam_akcipher_alg = type { %struct.akcipher_alg, i8, [63 x i8] }
%struct.akcipher_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [24 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.148, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.148 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.caam_drv_private = type { ptr, ptr, ptr, ptr, [4 x ptr], ptr, i8, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.caam_ctrl = type { i32, i32, i32, i32, [4 x %struct.masterid], [11 x i32], i32, [4 x %struct.masterid], [5 x i32], i32, i32, i32, [5 x %struct.partid], [22 x i32], i32, i32, [182 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], i64, [70 x i32], %union.anon.144, [416 x i32], %struct.version_regs, %struct.caam_perfmon }
%struct.masterid = type { i32, i32 }
%struct.partid = type { i32, i32 }
%union.anon.144 = type { [2 x %struct.rngtst] }
%struct.rngtst = type { i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], [15 x i32] }
%struct.version_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32 }
%struct.caam_perfmon = type { i64, i64, i64, i64, i64, i64, i64, [13 x i64], i32, i32, i32, i32, [2 x i64], i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.akcipher_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [24 x i8], [0 x ptr] }
%struct.rsa_edesc = type { i32, i32, i32, i32, i32, i8, i32, ptr, %union.anon.151, [0 x i32] }
%union.anon.151 = type { %struct.rsa_priv_f3_pdb }
%struct.rsa_priv_f3_pdb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.120, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.120 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.rsa_key = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.dpaa2_sg_entry = type { i64, i32, i16, i16 }
%struct.sec4_sg_entry = type { i64, i32, i32 }
%struct.caam_drv_private_jr = type { %struct.list_head, ptr, i32, ptr, %struct.tasklet_struct, i32, i8, [15 x i8], %struct.atomic_t, ptr, [56 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, ptr, [32 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.152, i32 }
%union.anon.152 = type { ptr }
%struct.caam_rsa_key = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.crypto_engine = type { [30 x i8], i8, i8, i8, i8, %struct.list_head, %struct.spinlock, %struct.crypto_queue, ptr, i8, ptr, ptr, ptr, ptr, %struct.kthread_work, ptr, ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }

@init_done = internal unnamed_addr global i1 false, align 1
@zero_buffer = internal unnamed_addr global ptr null, align 4
@caam_rsa = internal global %struct.caam_akcipher_alg { %struct.akcipher_alg { ptr null, ptr null, ptr @caam_rsa_enc, ptr @caam_rsa_dec, ptr @caam_rsa_set_pub_key, ptr @caam_rsa_set_priv_key, ptr @caam_rsa_max_size, ptr @caam_rsa_init_tfm, ptr @caam_rsa_exit_tfm, i32 56, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 84, i32 0, i32 3000, %struct.refcount_struct zeroinitializer, [128 x i8] c"rsa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rsa-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.148 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, i8 0, [63 x i8] undef }, align 64
@.str = private unnamed_addr constant [28 x i8] c"%s alg registration failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"caam pkc algorithms registered in /proc/crypto\0A\00", align 1
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.2 = private unnamed_addr constant [44 x i8] c"Output buffer length less than parameter n\0A\00", align 1
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"unable to map source\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"unable to map destination\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"unable to map S/G table\0A\00", align 1
@caam_dpaa2 = external dso_local local_unnamed_addr global i8, align 1
@caam_imx = external dso_local local_unnamed_addr global i8, align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Unable to map RSA modulus memory\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Unable to map RSA public exponent memory\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Unable to map RSA prime factor p memory\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Unable to map RSA prime factor q memory\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Unable to map RSA exponent dp memory\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Unable to map RSA exponent dq memory\0A\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Unable to map RSA CRT coefficient qinv memory\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Unable to map RSA tmp1 memory\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Unable to map RSA tmp2 memory\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Unable to map RSA private exponent memory\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"Unable to map modulus memory\0A\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"\013Job Ring Device allocation for transform failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"unable to map padding\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @caam_pkc_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  store i1 false, ptr @init_done, align 1
  %4 = getelementptr inbounds %struct.caam_drv_private, ptr %3, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 10
  %7 = load ptr, ptr %3, align 4
  br i1 %6, label %8, label %19

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.caam_ctrl, ptr %7, i32 0, i32 26, i32 24
  %10 = load i8, ptr @caam_little_end, align 1, !range !8
  %11 = icmp eq i8 %10, 0
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10
  br i1 %11, label %14, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  br label %16

14:                                               ; preds = %8
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i32 [ %12, %13 ], [ %15, %14 ]
  %18 = lshr i32 %17, 28
  br label %32

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.caam_ctrl, ptr %7, i32 0, i32 25, i32 3
  %21 = load i8, ptr @caam_little_end, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #10
  br i1 %22, label %25, label %24

24:                                               ; preds = %19
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  br label %27

25:                                               ; preds = %19
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ %23, %24 ], [ %26, %25 ]
  %29 = and i32 %28, 255
  %30 = and i32 %28, 32768
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27, %16
  %33 = phi i32 [ %18, %16 ], [ %29, %27 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 2, i32 9), align 4
  %37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3521, i32 noundef 511) #11
  store ptr %37, ptr @zero_buffer, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @crypto_register_akcipher(ptr noundef nonnull @caam_rsa) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr @zero_buffer, align 4
  tail call void @kfree(ptr noundef %43) #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef getelementptr inbounds (%struct.caam_akcipher_alg, ptr @caam_rsa, i32 0, i32 0, i32 11, i32 9)) #12
  br label %45

44:                                               ; preds = %39
  store i1 true, ptr @init_done, align 1
  store i8 1, ptr getelementptr inbounds (%struct.caam_akcipher_alg, ptr @caam_rsa, i32 0, i32 1), align 64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.1) #12
  br label %45

45:                                               ; preds = %44, %42, %35, %32, %27
  %46 = phi i32 [ 0, %32 ], [ -12, %35 ], [ 0, %44 ], [ %40, %42 ], [ 0, %27 ]
  ret i32 %46
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_akcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @caam_pkc_exit() local_unnamed_addr #0 {
  %1 = load i1, ptr @init_done, align 1
  br i1 %1, label %2, label %8

2:                                                ; preds = %0
  %3 = load i8, ptr getelementptr inbounds (%struct.caam_akcipher_alg, ptr @caam_rsa, i32 0, i32 1), align 64, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @crypto_unregister_akcipher(ptr noundef nonnull @caam_rsa) #10
  br label %6

6:                                                ; preds = %5, %2
  %7 = load ptr, ptr @zero_buffer, align 4
  tail call void @kfree(ptr noundef %7) #10
  br label %8

8:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_akcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_rsa_enc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 3
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 2, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %160, label %9, !prof !11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %160, label %13, !prof !11

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 4, i32 36
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 %17, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #12
  br label %160

20:                                               ; preds = %13
  %21 = load i32, ptr @caam_ptr_sz, align 4
  %22 = shl i32 %21, 2
  %23 = add i32 %22, 16
  %24 = tail call fastcc ptr @rsa_edesc_alloc(ptr noundef %0, i32 noundef %23)
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = ptrtoint ptr %24 to i32
  br label %160

28:                                               ; preds = %20
  %29 = load ptr, ptr %2, align 16
  %30 = getelementptr inbounds %struct.crypto_tfm, ptr %29, i32 1, i32 3
  %31 = getelementptr inbounds %struct.crypto_tfm, ptr %29, i32 2, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 8
  %34 = load ptr, ptr %30, align 4
  %35 = getelementptr inbounds %struct.crypto_tfm, ptr %29, i32 1, i32 4, i32 36
  %36 = load i32, ptr %35, align 4
  %37 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %34) #10
  %38 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %50, !prof !11

41:                                               ; preds = %28
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %42 = tail call ptr @dev_driver_string(ptr noundef %32) #10
  %43 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load ptr, ptr %32, align 4
  br label %48

48:                                               ; preds = %46, %41
  %49 = phi ptr [ %47, %46 ], [ %44, %41 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %42, ptr noundef %49) #10
  br label %50

50:                                               ; preds = %48, %28
  br i1 %37, label %51, label %53

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 8, i32 0, i32 3
  store i32 -1, ptr %52, align 4
  br label %63

53:                                               ; preds = %50
  %54 = load ptr, ptr @mem_map, align 4
  %55 = ptrtoint ptr %34 to i32
  %56 = add i32 %55, 1073741824
  %57 = lshr i32 %56, 12
  %58 = getelementptr %struct.page, ptr %54, i32 %57
  %59 = and i32 %55, 4095
  %60 = tail call i32 @dma_map_page_attrs(ptr noundef %32, ptr noundef %58, i32 noundef %59, i32 noundef %36, i32 noundef 1, i32 noundef 0) #10
  %61 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 8, i32 0, i32 3
  store i32 %60, ptr %61, align 4
  %62 = icmp eq i32 %60, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %53, %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.10) #12
  br label %145

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.crypto_tfm, ptr %29, i32 1, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.crypto_tfm, ptr %29, i32 1, i32 4, i32 40
  %68 = load i32, ptr %67, align 4
  %69 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %66) #10
  %70 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %71 = xor i1 %70, true
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %82, !prof !11

73:                                               ; preds = %64
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %74 = tail call ptr @dev_driver_string(ptr noundef %32) #10
  %75 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load ptr, ptr %32, align 4
  br label %80

80:                                               ; preds = %78, %73
  %81 = phi ptr [ %79, %78 ], [ %76, %73 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %74, ptr noundef %81) #10
  br label %82

82:                                               ; preds = %80, %64
  br i1 %69, label %83, label %85

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 8, i32 0, i32 4
  store i32 -1, ptr %84, align 4
  br label %95

85:                                               ; preds = %82
  %86 = load ptr, ptr @mem_map, align 4
  %87 = ptrtoint ptr %66 to i32
  %88 = add i32 %87, 1073741824
  %89 = lshr i32 %88, 12
  %90 = getelementptr %struct.page, ptr %86, i32 %89
  %91 = and i32 %87, 4095
  %92 = tail call i32 @dma_map_page_attrs(ptr noundef %32, ptr noundef %90, i32 noundef %91, i32 noundef %68, i32 noundef 1, i32 noundef 0) #10
  %93 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 8, i32 0, i32 4
  store i32 %92, ptr %93, align 4
  %94 = icmp eq i32 %92, -1
  br i1 %94, label %95, label %98

95:                                               ; preds = %85, %83
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.11) #12
  %96 = load i32, ptr %61, align 4
  %97 = load i32, ptr %35, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %96, i32 noundef %97, i32 noundef 1, i32 noundef 0) #10
  br label %145

98:                                               ; preds = %85
  %99 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, ptr %33, align 4
  %104 = or i32 %103, -2147483648
  store i32 %104, ptr %33, align 4
  %105 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 6
  %106 = shl i32 %100, 4
  br label %111

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.scatterlist, ptr %109, i32 0, i32 3
  br label %111

111:                                              ; preds = %107, %102
  %112 = phi ptr [ %105, %102 ], [ %110, %107 ]
  %113 = phi i32 [ %106, %102 ], [ 0, %107 ]
  %114 = load i32, ptr %112, align 4
  %115 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 8, i32 0, i32 1
  store i32 %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %125

119:                                              ; preds = %111
  %120 = load i32, ptr %33, align 4
  %121 = or i32 %120, 1073741824
  store i32 %121, ptr %33, align 4
  %122 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 6
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %123, %113
  br label %131

125:                                              ; preds = %111
  %126 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.scatterlist, ptr %127, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = load i32, ptr %33, align 4
  br label %131

131:                                              ; preds = %125, %119
  %132 = phi i32 [ %121, %119 ], [ %130, %125 ]
  %133 = phi i32 [ %124, %119 ], [ %129, %125 ]
  %134 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 8, i32 0, i32 2
  store i32 %133, ptr %134, align 4
  %135 = load i32, ptr %67, align 4
  %136 = shl i32 %135, 12
  %137 = load i32, ptr %35, align 4
  %138 = or i32 %137, %132
  %139 = or i32 %138, %136
  store i32 %139, ptr %33, align 4
  %140 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5, i32 4
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 8, i32 0, i32 5
  store i32 %141, ptr %142, align 4
  %143 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 9
  tail call void @init_rsa_pub_desc(ptr noundef %143, ptr noundef %33) #10
  %144 = tail call fastcc i32 @akcipher_enqueue_req(ptr noundef %6, ptr noundef nonnull @rsa_pub_done, ptr noundef %0)
  br label %160

145:                                              ; preds = %95, %63
  %146 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 1
  %149 = load i32, ptr %148, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %147, i32 noundef %149, i32 noundef 2, i32 noundef 0) #10
  %150 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5
  %151 = load ptr, ptr %150, align 4
  %152 = load i32, ptr %24, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %151, i32 noundef %152, i32 noundef 1, i32 noundef 0) #10
  %153 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 4
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.rsa_edesc, ptr %24, i32 0, i32 6
  %158 = load i32, ptr %157, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %158, i32 noundef %154, i32 noundef 1, i32 noundef 0) #10
  br label %159

159:                                              ; preds = %156, %145
  tail call void @kfree(ptr noundef %24) #10
  br label %160

160:                                              ; preds = %159, %131, %26, %19, %9, %1
  %161 = phi i32 [ -75, %19 ], [ %27, %26 ], [ -12, %159 ], [ %144, %131 ], [ -22, %9 ], [ -22, %1 ]
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_rsa_dec(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %702, label %7, !prof !11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 4, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %702, label %11, !prof !11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 4, i32 36
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  store i32 %15, ptr %12, align 4
  %18 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 2, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.2) #12
  br label %702

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 2, i32 2
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %563 [
    i32 2, label %23
    i32 1, label %322
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 2, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr @caam_ptr_sz, align 4
  %27 = mul i32 %26, 9
  %28 = add i32 %27, 16
  %29 = tail call fastcc ptr @rsa_edesc_alloc(ptr noundef %0, i32 noundef %28) #10
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = ptrtoint ptr %29 to i32
  br label %702

33:                                               ; preds = %23
  %34 = load ptr, ptr %2, align 16
  %35 = getelementptr inbounds %struct.crypto_tfm, ptr %34, i32 2, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8
  %38 = getelementptr inbounds %struct.crypto_tfm, ptr %34, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.crypto_tfm, ptr %34, i32 2, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.crypto_tfm, ptr %34, i32 1, i32 4, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %43) #10
  %45 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %57, !prof !11

48:                                               ; preds = %33
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %49 = tail call ptr @dev_driver_string(ptr noundef %36) #10
  %50 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load ptr, ptr %36, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = phi ptr [ %54, %53 ], [ %51, %48 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %49, ptr noundef %56) #10
  br label %57

57:                                               ; preds = %55, %33
  br i1 %44, label %58, label %60

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 4
  store i32 -1, ptr %59, align 4
  br label %70

60:                                               ; preds = %57
  %61 = load ptr, ptr @mem_map, align 4
  %62 = ptrtoint ptr %43 to i32
  %63 = add i32 %62, 1073741824
  %64 = lshr i32 %63, 12
  %65 = getelementptr %struct.page, ptr %61, i32 %64
  %66 = and i32 %62, 4095
  %67 = tail call i32 @dma_map_page_attrs(ptr noundef %36, ptr noundef %65, i32 noundef %66, i32 noundef %39, i32 noundef 1, i32 noundef 0) #10
  %68 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 4
  store i32 %67, ptr %68, align 4
  %69 = icmp eq i32 %67, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %60, %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.12) #12
  br label %307

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.crypto_tfm, ptr %34, i32 1, i32 4, i32 12
  %73 = load ptr, ptr %72, align 4
  %74 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %73) #10
  %75 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %76 = xor i1 %75, true
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %87, !prof !11

78:                                               ; preds = %71
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %79 = tail call ptr @dev_driver_string(ptr noundef %36) #10
  %80 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load ptr, ptr %36, align 4
  br label %85

85:                                               ; preds = %83, %78
  %86 = phi ptr [ %84, %83 ], [ %81, %78 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %79, ptr noundef %86) #10
  br label %87

87:                                               ; preds = %85, %71
  br i1 %74, label %88, label %90

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 5
  store i32 -1, ptr %89, align 4
  br label %100

90:                                               ; preds = %87
  %91 = load ptr, ptr @mem_map, align 4
  %92 = ptrtoint ptr %73 to i32
  %93 = add i32 %92, 1073741824
  %94 = lshr i32 %93, 12
  %95 = getelementptr %struct.page, ptr %91, i32 %94
  %96 = and i32 %92, 4095
  %97 = tail call i32 @dma_map_page_attrs(ptr noundef %36, ptr noundef %95, i32 noundef %96, i32 noundef %41, i32 noundef 1, i32 noundef 0) #10
  %98 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 5
  store i32 %97, ptr %98, align 4
  %99 = icmp eq i32 %97, -1
  br i1 %99, label %100, label %101

100:                                              ; preds = %90, %88
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.13) #12
  br label %293

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.crypto_tfm, ptr %34, i32 1, i32 4, i32 16
  %103 = load ptr, ptr %102, align 4
  %104 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %103) #10
  %105 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %106 = xor i1 %105, true
  %107 = select i1 %104, i1 %106, i1 false
  br i1 %107, label %108, label %117, !prof !11

108:                                              ; preds = %101
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %109 = tail call ptr @dev_driver_string(ptr noundef %36) #10
  %110 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load ptr, ptr %36, align 4
  br label %115

115:                                              ; preds = %113, %108
  %116 = phi ptr [ %114, %113 ], [ %111, %108 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %109, ptr noundef %116) #10
  br label %117

117:                                              ; preds = %115, %101
  br i1 %104, label %118, label %120

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 6
  store i32 -1, ptr %119, align 4
  br label %130

120:                                              ; preds = %117
  %121 = load ptr, ptr @mem_map, align 4
  %122 = ptrtoint ptr %103 to i32
  %123 = add i32 %122, 1073741824
  %124 = lshr i32 %123, 12
  %125 = getelementptr %struct.page, ptr %121, i32 %124
  %126 = and i32 %122, 4095
  %127 = tail call i32 @dma_map_page_attrs(ptr noundef %36, ptr noundef %125, i32 noundef %126, i32 noundef %39, i32 noundef 1, i32 noundef 0) #10
  %128 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 6
  store i32 %127, ptr %128, align 4
  %129 = icmp eq i32 %127, -1
  br i1 %129, label %130, label %131

130:                                              ; preds = %120, %118
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.14) #12
  br label %291

131:                                              ; preds = %120
  %132 = getelementptr inbounds %struct.crypto_tfm, ptr %34, i32 1, i32 4, i32 20
  %133 = load ptr, ptr %132, align 4
  %134 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %133) #10
  %135 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %136 = xor i1 %135, true
  %137 = select i1 %134, i1 %136, i1 false
  br i1 %137, label %138, label %147, !prof !11

138:                                              ; preds = %131
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %139 = tail call ptr @dev_driver_string(ptr noundef %36) #10
  %140 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load ptr, ptr %36, align 4
  br label %145

145:                                              ; preds = %143, %138
  %146 = phi ptr [ %144, %143 ], [ %141, %138 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %139, ptr noundef %146) #10
  br label %147

147:                                              ; preds = %145, %131
  br i1 %134, label %148, label %150

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 7
  store i32 -1, ptr %149, align 4
  br label %160

150:                                              ; preds = %147
  %151 = load ptr, ptr @mem_map, align 4
  %152 = ptrtoint ptr %133 to i32
  %153 = add i32 %152, 1073741824
  %154 = lshr i32 %153, 12
  %155 = getelementptr %struct.page, ptr %151, i32 %154
  %156 = and i32 %152, 4095
  %157 = tail call i32 @dma_map_page_attrs(ptr noundef %36, ptr noundef %155, i32 noundef %156, i32 noundef %41, i32 noundef 1, i32 noundef 0) #10
  %158 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 7
  store i32 %157, ptr %158, align 4
  %159 = icmp eq i32 %157, -1
  br i1 %159, label %160, label %161

160:                                              ; preds = %150, %148
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.15) #12
  br label %289

161:                                              ; preds = %150
  %162 = getelementptr inbounds %struct.crypto_tfm, ptr %34, i32 1, i32 4, i32 24
  %163 = load ptr, ptr %162, align 4
  %164 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %163) #10
  %165 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %166 = xor i1 %165, true
  %167 = select i1 %164, i1 %166, i1 false
  br i1 %167, label %168, label %177, !prof !11

168:                                              ; preds = %161
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %169 = tail call ptr @dev_driver_string(ptr noundef %36) #10
  %170 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load ptr, ptr %36, align 4
  br label %175

175:                                              ; preds = %173, %168
  %176 = phi ptr [ %174, %173 ], [ %171, %168 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %169, ptr noundef %176) #10
  br label %177

177:                                              ; preds = %175, %161
  br i1 %164, label %178, label %180

178:                                              ; preds = %177
  %179 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 3
  store i32 -1, ptr %179, align 4
  br label %190

180:                                              ; preds = %177
  %181 = load ptr, ptr @mem_map, align 4
  %182 = ptrtoint ptr %163 to i32
  %183 = add i32 %182, 1073741824
  %184 = lshr i32 %183, 12
  %185 = getelementptr %struct.page, ptr %181, i32 %184
  %186 = and i32 %182, 4095
  %187 = tail call i32 @dma_map_page_attrs(ptr noundef %36, ptr noundef %185, i32 noundef %186, i32 noundef %39, i32 noundef 1, i32 noundef 0) #10
  %188 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 3
  store i32 %187, ptr %188, align 4
  %189 = icmp eq i32 %187, -1
  br i1 %189, label %190, label %191

190:                                              ; preds = %180, %178
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.16) #12
  br label %287

191:                                              ; preds = %180
  %192 = getelementptr inbounds %struct.crypto_tfm, ptr %34, i32 1, i32 4, i32 28
  %193 = load ptr, ptr %192, align 4
  %194 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %193) #10
  %195 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %196 = xor i1 %195, true
  %197 = select i1 %194, i1 %196, i1 false
  br i1 %197, label %198, label %207, !prof !11

198:                                              ; preds = %191
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %199 = tail call ptr @dev_driver_string(ptr noundef %36) #10
  %200 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load ptr, ptr %36, align 4
  br label %205

205:                                              ; preds = %203, %198
  %206 = phi ptr [ %204, %203 ], [ %201, %198 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %199, ptr noundef %206) #10
  br label %207

207:                                              ; preds = %205, %191
  br i1 %194, label %208, label %210

208:                                              ; preds = %207
  %209 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 8
  store i32 -1, ptr %209, align 4
  br label %220

210:                                              ; preds = %207
  %211 = load ptr, ptr @mem_map, align 4
  %212 = ptrtoint ptr %193 to i32
  %213 = add i32 %212, 1073741824
  %214 = lshr i32 %213, 12
  %215 = getelementptr %struct.page, ptr %211, i32 %214
  %216 = and i32 %212, 4095
  %217 = tail call i32 @dma_map_page_attrs(ptr noundef %36, ptr noundef %215, i32 noundef %216, i32 noundef %39, i32 noundef 0, i32 noundef 0) #10
  %218 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 8
  store i32 %217, ptr %218, align 4
  %219 = icmp eq i32 %217, -1
  br i1 %219, label %220, label %221

220:                                              ; preds = %210, %208
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.17) #12
  br label %285

221:                                              ; preds = %210
  %222 = getelementptr inbounds %struct.crypto_tfm, ptr %34, i32 1, i32 4, i32 32
  %223 = load ptr, ptr %222, align 4
  %224 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %223) #10
  %225 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %226 = xor i1 %225, true
  %227 = select i1 %224, i1 %226, i1 false
  br i1 %227, label %228, label %237, !prof !11

228:                                              ; preds = %221
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %229 = tail call ptr @dev_driver_string(ptr noundef %36) #10
  %230 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load ptr, ptr %36, align 4
  br label %235

235:                                              ; preds = %233, %228
  %236 = phi ptr [ %234, %233 ], [ %231, %228 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %229, ptr noundef %236) #10
  br label %237

237:                                              ; preds = %235, %221
  br i1 %224, label %238, label %240

238:                                              ; preds = %237
  %239 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 9
  store i32 -1, ptr %239, align 4
  br label %250

240:                                              ; preds = %237
  %241 = load ptr, ptr @mem_map, align 4
  %242 = ptrtoint ptr %223 to i32
  %243 = add i32 %242, 1073741824
  %244 = lshr i32 %243, 12
  %245 = getelementptr %struct.page, ptr %241, i32 %244
  %246 = and i32 %242, 4095
  %247 = tail call i32 @dma_map_page_attrs(ptr noundef %36, ptr noundef %245, i32 noundef %246, i32 noundef %41, i32 noundef 0, i32 noundef 0) #10
  %248 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 9
  store i32 %247, ptr %248, align 4
  %249 = icmp eq i32 %247, -1
  br i1 %249, label %250, label %252

250:                                              ; preds = %240, %238
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.18) #12
  %251 = load i32, ptr %218, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %251, i32 noundef %39, i32 noundef 0, i32 noundef 0) #10
  br label %285

252:                                              ; preds = %240
  %253 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 2
  %254 = load i32, ptr %253, align 4
  %255 = icmp sgt i32 %254, 1
  br i1 %255, label %256, label %261

256:                                              ; preds = %252
  %257 = load i32, ptr %37, align 4
  %258 = or i32 %257, -2147483648
  store i32 %258, ptr %37, align 4
  %259 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 6
  %260 = shl i32 %254, 4
  br label %265

261:                                              ; preds = %252
  %262 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5
  %263 = load ptr, ptr %262, align 4
  %264 = getelementptr inbounds %struct.scatterlist, ptr %263, i32 0, i32 3
  br label %265

265:                                              ; preds = %261, %256
  %266 = phi ptr [ %259, %256 ], [ %264, %261 ]
  %267 = phi i32 [ %260, %256 ], [ 0, %261 ]
  %268 = load i32, ptr %266, align 4
  %269 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 1
  store i32 %268, ptr %269, align 4
  %270 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 3
  %271 = load i32, ptr %270, align 4
  %272 = icmp sgt i32 %271, 1
  br i1 %272, label %273, label %279

273:                                              ; preds = %265
  %274 = load i32, ptr %37, align 4
  %275 = or i32 %274, 1073741824
  store i32 %275, ptr %37, align 4
  %276 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 6
  %277 = load i32, ptr %276, align 4
  %278 = add i32 %277, %267
  br label %295

279:                                              ; preds = %265
  %280 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr inbounds %struct.scatterlist, ptr %281, i32 0, i32 3
  %283 = load i32, ptr %282, align 4
  %284 = load i32, ptr %37, align 4
  br label %295

285:                                              ; preds = %250, %220
  %286 = load i32, ptr %188, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %286, i32 noundef %39, i32 noundef 1, i32 noundef 0) #10
  br label %287

287:                                              ; preds = %285, %190
  %288 = load i32, ptr %158, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %288, i32 noundef %41, i32 noundef 1, i32 noundef 0) #10
  br label %289

289:                                              ; preds = %287, %160
  %290 = load i32, ptr %128, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %290, i32 noundef %39, i32 noundef 1, i32 noundef 0) #10
  br label %291

291:                                              ; preds = %289, %130
  %292 = load i32, ptr %98, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %292, i32 noundef %41, i32 noundef 1, i32 noundef 0) #10
  br label %293

293:                                              ; preds = %291, %100
  %294 = load i32, ptr %68, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %294, i32 noundef %39, i32 noundef 1, i32 noundef 0) #10
  br label %307

295:                                              ; preds = %279, %273
  %296 = phi i32 [ %275, %273 ], [ %284, %279 ]
  %297 = phi i32 [ %278, %273 ], [ %283, %279 ]
  %298 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 2
  store i32 %297, ptr %298, align 4
  %299 = getelementptr inbounds %struct.crypto_tfm, ptr %34, i32 1, i32 4, i32 36
  %300 = load i32, ptr %299, align 4
  %301 = or i32 %300, %296
  store i32 %301, ptr %37, align 4
  %302 = shl i32 %41, 12
  %303 = or i32 %302, %39
  %304 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 8, i32 0, i32 10
  store i32 %303, ptr %304, align 4
  %305 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 9
  tail call void @init_rsa_priv_f3_desc(ptr noundef %305, ptr noundef %37) #10
  %306 = tail call fastcc i32 @akcipher_enqueue_req(ptr noundef %25, ptr noundef nonnull @rsa_priv_f_done, ptr noundef %0) #10
  br label %702

307:                                              ; preds = %293, %70
  %308 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %309 = load ptr, ptr %308, align 4
  %310 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 1
  %311 = load i32, ptr %310, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %25, ptr noundef %309, i32 noundef %311, i32 noundef 2, i32 noundef 0) #10
  %312 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5
  %313 = load ptr, ptr %312, align 4
  %314 = load i32, ptr %29, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %25, ptr noundef %313, i32 noundef %314, i32 noundef 1, i32 noundef 0) #10
  %315 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 4
  %316 = load i32, ptr %315, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %307
  %319 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 6
  %320 = load i32, ptr %319, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %25, i32 noundef %320, i32 noundef %316, i32 noundef 1, i32 noundef 0) #10
  br label %321

321:                                              ; preds = %318, %307
  tail call void @kfree(ptr noundef %29) #10
  br label %702

322:                                              ; preds = %20
  %323 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 2, i32 3
  %324 = load ptr, ptr %323, align 4
  %325 = load i32, ptr @caam_ptr_sz, align 4
  %326 = mul i32 %325, 7
  %327 = add i32 %326, 16
  %328 = tail call fastcc ptr @rsa_edesc_alloc(ptr noundef %0, i32 noundef %327) #10
  %329 = icmp ugt ptr %328, inttoptr (i32 -4096 to ptr)
  br i1 %329, label %330, label %332

330:                                              ; preds = %322
  %331 = ptrtoint ptr %328 to i32
  br label %702

332:                                              ; preds = %322
  %333 = load ptr, ptr %2, align 16
  %334 = getelementptr inbounds %struct.crypto_tfm, ptr %333, i32 2, i32 3
  %335 = load ptr, ptr %334, align 4
  %336 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 8
  %337 = getelementptr inbounds %struct.crypto_tfm, ptr %333, i32 2
  %338 = load i32, ptr %337, align 4
  %339 = getelementptr inbounds %struct.crypto_tfm, ptr %333, i32 2, i32 1
  %340 = load i32, ptr %339, align 4
  %341 = getelementptr inbounds %struct.crypto_tfm, ptr %333, i32 1, i32 4, i32 4
  %342 = load ptr, ptr %341, align 4
  %343 = getelementptr inbounds %struct.crypto_tfm, ptr %333, i32 1, i32 4, i32 44
  %344 = load i32, ptr %343, align 4
  %345 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %342) #10
  %346 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %347 = xor i1 %346, true
  %348 = select i1 %345, i1 %347, i1 false
  br i1 %348, label %349, label %358, !prof !11

349:                                              ; preds = %332
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %350 = tail call ptr @dev_driver_string(ptr noundef %335) #10
  %351 = getelementptr inbounds %struct.device, ptr %335, i32 0, i32 3
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %356

354:                                              ; preds = %349
  %355 = load ptr, ptr %335, align 4
  br label %356

356:                                              ; preds = %354, %349
  %357 = phi ptr [ %355, %354 ], [ %352, %349 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %350, ptr noundef %357) #10
  br label %358

358:                                              ; preds = %356, %332
  br i1 %345, label %359, label %361

359:                                              ; preds = %358
  %360 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 8, i32 0, i32 3
  store i32 -1, ptr %360, align 4
  br label %371

361:                                              ; preds = %358
  %362 = load ptr, ptr @mem_map, align 4
  %363 = ptrtoint ptr %342 to i32
  %364 = add i32 %363, 1073741824
  %365 = lshr i32 %364, 12
  %366 = getelementptr %struct.page, ptr %362, i32 %365
  %367 = and i32 %363, 4095
  %368 = tail call i32 @dma_map_page_attrs(ptr noundef %335, ptr noundef %366, i32 noundef %367, i32 noundef %344, i32 noundef 1, i32 noundef 0) #10
  %369 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 8, i32 0, i32 3
  store i32 %368, ptr %369, align 4
  %370 = icmp eq i32 %368, -1
  br i1 %370, label %371, label %372

371:                                              ; preds = %361, %359
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %335, ptr noundef nonnull @.str.19) #12
  br label %548

372:                                              ; preds = %361
  %373 = getelementptr inbounds %struct.crypto_tfm, ptr %333, i32 1, i32 4, i32 8
  %374 = load ptr, ptr %373, align 4
  %375 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %374) #10
  %376 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %377 = xor i1 %376, true
  %378 = select i1 %375, i1 %377, i1 false
  br i1 %378, label %379, label %388, !prof !11

379:                                              ; preds = %372
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %380 = tail call ptr @dev_driver_string(ptr noundef %335) #10
  %381 = getelementptr inbounds %struct.device, ptr %335, i32 0, i32 3
  %382 = load ptr, ptr %381, align 4
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %386

384:                                              ; preds = %379
  %385 = load ptr, ptr %335, align 4
  br label %386

386:                                              ; preds = %384, %379
  %387 = phi ptr [ %385, %384 ], [ %382, %379 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %380, ptr noundef %387) #10
  br label %388

388:                                              ; preds = %386, %372
  br i1 %375, label %389, label %391

389:                                              ; preds = %388
  %390 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 8, i32 0, i32 4
  store i32 -1, ptr %390, align 4
  br label %401

391:                                              ; preds = %388
  %392 = load ptr, ptr @mem_map, align 4
  %393 = ptrtoint ptr %374 to i32
  %394 = add i32 %393, 1073741824
  %395 = lshr i32 %394, 12
  %396 = getelementptr %struct.page, ptr %392, i32 %395
  %397 = and i32 %393, 4095
  %398 = tail call i32 @dma_map_page_attrs(ptr noundef %335, ptr noundef %396, i32 noundef %397, i32 noundef %338, i32 noundef 1, i32 noundef 0) #10
  %399 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 8, i32 0, i32 4
  store i32 %398, ptr %399, align 4
  %400 = icmp eq i32 %398, -1
  br i1 %400, label %401, label %402

401:                                              ; preds = %391, %389
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %335, ptr noundef nonnull @.str.12) #12
  br label %530

402:                                              ; preds = %391
  %403 = getelementptr inbounds %struct.crypto_tfm, ptr %333, i32 1, i32 4, i32 12
  %404 = load ptr, ptr %403, align 4
  %405 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %404) #10
  %406 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %407 = xor i1 %406, true
  %408 = select i1 %405, i1 %407, i1 false
  br i1 %408, label %409, label %418, !prof !11

409:                                              ; preds = %402
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %410 = tail call ptr @dev_driver_string(ptr noundef %335) #10
  %411 = getelementptr inbounds %struct.device, ptr %335, i32 0, i32 3
  %412 = load ptr, ptr %411, align 4
  %413 = icmp eq ptr %412, null
  br i1 %413, label %414, label %416

414:                                              ; preds = %409
  %415 = load ptr, ptr %335, align 4
  br label %416

416:                                              ; preds = %414, %409
  %417 = phi ptr [ %415, %414 ], [ %412, %409 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %410, ptr noundef %417) #10
  br label %418

418:                                              ; preds = %416, %402
  br i1 %405, label %419, label %421

419:                                              ; preds = %418
  %420 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 8, i32 0, i32 5
  store i32 -1, ptr %420, align 4
  br label %431

421:                                              ; preds = %418
  %422 = load ptr, ptr @mem_map, align 4
  %423 = ptrtoint ptr %404 to i32
  %424 = add i32 %423, 1073741824
  %425 = lshr i32 %424, 12
  %426 = getelementptr %struct.page, ptr %422, i32 %425
  %427 = and i32 %423, 4095
  %428 = tail call i32 @dma_map_page_attrs(ptr noundef %335, ptr noundef %426, i32 noundef %427, i32 noundef %340, i32 noundef 1, i32 noundef 0) #10
  %429 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 8, i32 0, i32 5
  store i32 %428, ptr %429, align 4
  %430 = icmp eq i32 %428, -1
  br i1 %430, label %431, label %432

431:                                              ; preds = %421, %419
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %335, ptr noundef nonnull @.str.13) #12
  br label %528

432:                                              ; preds = %421
  %433 = getelementptr inbounds %struct.crypto_tfm, ptr %333, i32 1, i32 4, i32 28
  %434 = load ptr, ptr %433, align 4
  %435 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %434) #10
  %436 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %437 = xor i1 %436, true
  %438 = select i1 %435, i1 %437, i1 false
  br i1 %438, label %439, label %448, !prof !11

439:                                              ; preds = %432
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %440 = tail call ptr @dev_driver_string(ptr noundef %335) #10
  %441 = getelementptr inbounds %struct.device, ptr %335, i32 0, i32 3
  %442 = load ptr, ptr %441, align 4
  %443 = icmp eq ptr %442, null
  br i1 %443, label %444, label %446

444:                                              ; preds = %439
  %445 = load ptr, ptr %335, align 4
  br label %446

446:                                              ; preds = %444, %439
  %447 = phi ptr [ %445, %444 ], [ %442, %439 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %440, ptr noundef %447) #10
  br label %448

448:                                              ; preds = %446, %432
  br i1 %435, label %449, label %451

449:                                              ; preds = %448
  %450 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 8, i32 0, i32 6
  store i32 -1, ptr %450, align 4
  br label %461

451:                                              ; preds = %448
  %452 = load ptr, ptr @mem_map, align 4
  %453 = ptrtoint ptr %434 to i32
  %454 = add i32 %453, 1073741824
  %455 = lshr i32 %454, 12
  %456 = getelementptr %struct.page, ptr %452, i32 %455
  %457 = and i32 %453, 4095
  %458 = tail call i32 @dma_map_page_attrs(ptr noundef %335, ptr noundef %456, i32 noundef %457, i32 noundef %338, i32 noundef 0, i32 noundef 0) #10
  %459 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 8, i32 0, i32 6
  store i32 %458, ptr %459, align 4
  %460 = icmp eq i32 %458, -1
  br i1 %460, label %461, label %462

461:                                              ; preds = %451, %449
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %335, ptr noundef nonnull @.str.17) #12
  br label %526

462:                                              ; preds = %451
  %463 = getelementptr inbounds %struct.crypto_tfm, ptr %333, i32 1, i32 4, i32 32
  %464 = load ptr, ptr %463, align 4
  %465 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %464) #10
  %466 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %467 = xor i1 %466, true
  %468 = select i1 %465, i1 %467, i1 false
  br i1 %468, label %469, label %478, !prof !11

469:                                              ; preds = %462
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %470 = tail call ptr @dev_driver_string(ptr noundef %335) #10
  %471 = getelementptr inbounds %struct.device, ptr %335, i32 0, i32 3
  %472 = load ptr, ptr %471, align 4
  %473 = icmp eq ptr %472, null
  br i1 %473, label %474, label %476

474:                                              ; preds = %469
  %475 = load ptr, ptr %335, align 4
  br label %476

476:                                              ; preds = %474, %469
  %477 = phi ptr [ %475, %474 ], [ %472, %469 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %470, ptr noundef %477) #10
  br label %478

478:                                              ; preds = %476, %462
  br i1 %465, label %479, label %481

479:                                              ; preds = %478
  %480 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 8, i32 0, i32 7
  store i32 -1, ptr %480, align 4
  br label %491

481:                                              ; preds = %478
  %482 = load ptr, ptr @mem_map, align 4
  %483 = ptrtoint ptr %464 to i32
  %484 = add i32 %483, 1073741824
  %485 = lshr i32 %484, 12
  %486 = getelementptr %struct.page, ptr %482, i32 %485
  %487 = and i32 %483, 4095
  %488 = tail call i32 @dma_map_page_attrs(ptr noundef %335, ptr noundef %486, i32 noundef %487, i32 noundef %340, i32 noundef 0, i32 noundef 0) #10
  %489 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 8, i32 0, i32 7
  store i32 %488, ptr %489, align 4
  %490 = icmp eq i32 %488, -1
  br i1 %490, label %491, label %493

491:                                              ; preds = %481, %479
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %335, ptr noundef nonnull @.str.18) #12
  %492 = load i32, ptr %459, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %335, i32 noundef %492, i32 noundef %338, i32 noundef 0, i32 noundef 0) #10
  br label %526

493:                                              ; preds = %481
  %494 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 2
  %495 = load i32, ptr %494, align 4
  %496 = icmp sgt i32 %495, 1
  br i1 %496, label %497, label %502

497:                                              ; preds = %493
  %498 = load i32, ptr %336, align 4
  %499 = or i32 %498, -2147483648
  store i32 %499, ptr %336, align 4
  %500 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 6
  %501 = shl i32 %495, 4
  br label %506

502:                                              ; preds = %493
  %503 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5
  %504 = load ptr, ptr %503, align 4
  %505 = getelementptr inbounds %struct.scatterlist, ptr %504, i32 0, i32 3
  br label %506

506:                                              ; preds = %502, %497
  %507 = phi ptr [ %500, %497 ], [ %505, %502 ]
  %508 = phi i32 [ %501, %497 ], [ 0, %502 ]
  %509 = load i32, ptr %507, align 4
  %510 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 8, i32 0, i32 1
  store i32 %509, ptr %510, align 4
  %511 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 3
  %512 = load i32, ptr %511, align 4
  %513 = icmp sgt i32 %512, 1
  br i1 %513, label %514, label %520

514:                                              ; preds = %506
  %515 = load i32, ptr %336, align 4
  %516 = or i32 %515, 1073741824
  store i32 %516, ptr %336, align 4
  %517 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 6
  %518 = load i32, ptr %517, align 4
  %519 = add i32 %518, %508
  br label %533

520:                                              ; preds = %506
  %521 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %522 = load ptr, ptr %521, align 4
  %523 = getelementptr inbounds %struct.scatterlist, ptr %522, i32 0, i32 3
  %524 = load i32, ptr %523, align 4
  %525 = load i32, ptr %336, align 4
  br label %533

526:                                              ; preds = %491, %461
  %527 = load i32, ptr %429, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %335, i32 noundef %527, i32 noundef %340, i32 noundef 1, i32 noundef 0) #10
  br label %528

528:                                              ; preds = %526, %431
  %529 = load i32, ptr %399, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %335, i32 noundef %529, i32 noundef %338, i32 noundef 1, i32 noundef 0) #10
  br label %530

530:                                              ; preds = %528, %401
  %531 = load i32, ptr %369, align 4
  %532 = load i32, ptr %343, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %335, i32 noundef %531, i32 noundef %532, i32 noundef 1, i32 noundef 0) #10
  br label %548

533:                                              ; preds = %520, %514
  %534 = phi i32 [ %516, %514 ], [ %525, %520 ]
  %535 = phi i32 [ %519, %514 ], [ %524, %520 ]
  %536 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 8, i32 0, i32 2
  store i32 %535, ptr %536, align 4
  %537 = load i32, ptr %343, align 4
  %538 = shl i32 %537, 12
  %539 = getelementptr inbounds %struct.crypto_tfm, ptr %333, i32 1, i32 4, i32 36
  %540 = load i32, ptr %539, align 4
  %541 = or i32 %540, %534
  %542 = or i32 %541, %538
  store i32 %542, ptr %336, align 4
  %543 = shl i32 %340, 12
  %544 = or i32 %543, %338
  %545 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 8, i32 0, i32 8
  store i32 %544, ptr %545, align 4
  %546 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 9
  tail call void @init_rsa_priv_f2_desc(ptr noundef %546, ptr noundef %336) #10
  %547 = tail call fastcc i32 @akcipher_enqueue_req(ptr noundef %324, ptr noundef nonnull @rsa_priv_f_done, ptr noundef %0) #10
  br label %702

548:                                              ; preds = %530, %371
  %549 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %550 = load ptr, ptr %549, align 4
  %551 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 1
  %552 = load i32, ptr %551, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %324, ptr noundef %550, i32 noundef %552, i32 noundef 2, i32 noundef 0) #10
  %553 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5
  %554 = load ptr, ptr %553, align 4
  %555 = load i32, ptr %328, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %324, ptr noundef %554, i32 noundef %555, i32 noundef 1, i32 noundef 0) #10
  %556 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 4
  %557 = load i32, ptr %556, align 4
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %562, label %559

559:                                              ; preds = %548
  %560 = getelementptr inbounds %struct.rsa_edesc, ptr %328, i32 0, i32 6
  %561 = load i32, ptr %560, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %324, i32 noundef %561, i32 noundef %557, i32 noundef 1, i32 noundef 0) #10
  br label %562

562:                                              ; preds = %559, %548
  tail call void @kfree(ptr noundef %328) #10
  br label %702

563:                                              ; preds = %20
  %564 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 2, i32 3
  %565 = load ptr, ptr %564, align 4
  %566 = load i32, ptr @caam_ptr_sz, align 4
  %567 = shl i32 %566, 2
  %568 = add i32 %567, 12
  %569 = tail call fastcc ptr @rsa_edesc_alloc(ptr noundef %0, i32 noundef %568) #10
  %570 = icmp ugt ptr %569, inttoptr (i32 -4096 to ptr)
  br i1 %570, label %571, label %573

571:                                              ; preds = %563
  %572 = ptrtoint ptr %569 to i32
  br label %702

573:                                              ; preds = %563
  %574 = load ptr, ptr %2, align 16
  %575 = getelementptr inbounds %struct.crypto_tfm, ptr %574, i32 1, i32 3
  %576 = getelementptr inbounds %struct.crypto_tfm, ptr %574, i32 2, i32 3
  %577 = load ptr, ptr %576, align 4
  %578 = getelementptr inbounds %struct.rsa_edesc, ptr %569, i32 0, i32 8
  %579 = load ptr, ptr %575, align 4
  %580 = getelementptr inbounds %struct.crypto_tfm, ptr %574, i32 1, i32 4, i32 36
  %581 = load i32, ptr %580, align 4
  %582 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %579) #10
  %583 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %584 = xor i1 %583, true
  %585 = select i1 %582, i1 %584, i1 false
  br i1 %585, label %586, label %595, !prof !11

586:                                              ; preds = %573
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %587 = tail call ptr @dev_driver_string(ptr noundef %577) #10
  %588 = getelementptr inbounds %struct.device, ptr %577, i32 0, i32 3
  %589 = load ptr, ptr %588, align 4
  %590 = icmp eq ptr %589, null
  br i1 %590, label %591, label %593

591:                                              ; preds = %586
  %592 = load ptr, ptr %577, align 4
  br label %593

593:                                              ; preds = %591, %586
  %594 = phi ptr [ %592, %591 ], [ %589, %586 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %587, ptr noundef %594) #10
  br label %595

595:                                              ; preds = %593, %573
  br i1 %582, label %596, label %598

596:                                              ; preds = %595
  %597 = getelementptr inbounds %struct.rsa_edesc, ptr %569, i32 0, i32 8, i32 0, i32 3
  store i32 -1, ptr %597, align 4
  br label %608

598:                                              ; preds = %595
  %599 = load ptr, ptr @mem_map, align 4
  %600 = ptrtoint ptr %579 to i32
  %601 = add i32 %600, 1073741824
  %602 = lshr i32 %601, 12
  %603 = getelementptr %struct.page, ptr %599, i32 %602
  %604 = and i32 %600, 4095
  %605 = tail call i32 @dma_map_page_attrs(ptr noundef %577, ptr noundef %603, i32 noundef %604, i32 noundef %581, i32 noundef 1, i32 noundef 0) #10
  %606 = getelementptr inbounds %struct.rsa_edesc, ptr %569, i32 0, i32 8, i32 0, i32 3
  store i32 %605, ptr %606, align 4
  %607 = icmp eq i32 %605, -1
  br i1 %607, label %608, label %609

608:                                              ; preds = %598, %596
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %577, ptr noundef nonnull @.str.20) #12
  br label %687

609:                                              ; preds = %598
  %610 = getelementptr inbounds %struct.crypto_tfm, ptr %574, i32 1, i32 4, i32 4
  %611 = load ptr, ptr %610, align 4
  %612 = getelementptr inbounds %struct.crypto_tfm, ptr %574, i32 1, i32 4, i32 44
  %613 = load i32, ptr %612, align 4
  %614 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %611) #10
  %615 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %616 = xor i1 %615, true
  %617 = select i1 %614, i1 %616, i1 false
  br i1 %617, label %618, label %627, !prof !11

618:                                              ; preds = %609
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %619 = tail call ptr @dev_driver_string(ptr noundef %577) #10
  %620 = getelementptr inbounds %struct.device, ptr %577, i32 0, i32 3
  %621 = load ptr, ptr %620, align 4
  %622 = icmp eq ptr %621, null
  br i1 %622, label %623, label %625

623:                                              ; preds = %618
  %624 = load ptr, ptr %577, align 4
  br label %625

625:                                              ; preds = %623, %618
  %626 = phi ptr [ %624, %623 ], [ %621, %618 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %619, ptr noundef %626) #10
  br label %627

627:                                              ; preds = %625, %609
  br i1 %614, label %628, label %630

628:                                              ; preds = %627
  %629 = getelementptr inbounds %struct.rsa_edesc, ptr %569, i32 0, i32 8, i32 0, i32 4
  store i32 -1, ptr %629, align 4
  br label %640

630:                                              ; preds = %627
  %631 = load ptr, ptr @mem_map, align 4
  %632 = ptrtoint ptr %611 to i32
  %633 = add i32 %632, 1073741824
  %634 = lshr i32 %633, 12
  %635 = getelementptr %struct.page, ptr %631, i32 %634
  %636 = and i32 %632, 4095
  %637 = tail call i32 @dma_map_page_attrs(ptr noundef %577, ptr noundef %635, i32 noundef %636, i32 noundef %613, i32 noundef 1, i32 noundef 0) #10
  %638 = getelementptr inbounds %struct.rsa_edesc, ptr %569, i32 0, i32 8, i32 0, i32 4
  store i32 %637, ptr %638, align 4
  %639 = icmp eq i32 %637, -1
  br i1 %639, label %640, label %643

640:                                              ; preds = %630, %628
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %577, ptr noundef nonnull @.str.19) #12
  %641 = load i32, ptr %606, align 4
  %642 = load i32, ptr %580, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %577, i32 noundef %641, i32 noundef %642, i32 noundef 1, i32 noundef 0) #10
  br label %687

643:                                              ; preds = %630
  %644 = getelementptr inbounds %struct.rsa_edesc, ptr %569, i32 0, i32 2
  %645 = load i32, ptr %644, align 4
  %646 = icmp sgt i32 %645, 1
  br i1 %646, label %647, label %652

647:                                              ; preds = %643
  %648 = load i32, ptr %578, align 4
  %649 = or i32 %648, -2147483648
  store i32 %649, ptr %578, align 4
  %650 = getelementptr inbounds %struct.rsa_edesc, ptr %569, i32 0, i32 6
  %651 = shl i32 %645, 4
  br label %656

652:                                              ; preds = %643
  %653 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5
  %654 = load ptr, ptr %653, align 4
  %655 = getelementptr inbounds %struct.scatterlist, ptr %654, i32 0, i32 3
  br label %656

656:                                              ; preds = %652, %647
  %657 = phi ptr [ %650, %647 ], [ %655, %652 ]
  %658 = phi i32 [ %651, %647 ], [ 0, %652 ]
  %659 = load i32, ptr %657, align 4
  %660 = getelementptr inbounds %struct.rsa_edesc, ptr %569, i32 0, i32 8, i32 0, i32 1
  store i32 %659, ptr %660, align 4
  %661 = getelementptr inbounds %struct.rsa_edesc, ptr %569, i32 0, i32 3
  %662 = load i32, ptr %661, align 4
  %663 = icmp sgt i32 %662, 1
  br i1 %663, label %664, label %670

664:                                              ; preds = %656
  %665 = load i32, ptr %578, align 4
  %666 = or i32 %665, 1073741824
  store i32 %666, ptr %578, align 4
  %667 = getelementptr inbounds %struct.rsa_edesc, ptr %569, i32 0, i32 6
  %668 = load i32, ptr %667, align 4
  %669 = add i32 %668, %658
  br label %676

670:                                              ; preds = %656
  %671 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %672 = load ptr, ptr %671, align 4
  %673 = getelementptr inbounds %struct.scatterlist, ptr %672, i32 0, i32 3
  %674 = load i32, ptr %673, align 4
  %675 = load i32, ptr %578, align 4
  br label %676

676:                                              ; preds = %670, %664
  %677 = phi i32 [ %666, %664 ], [ %675, %670 ]
  %678 = phi i32 [ %669, %664 ], [ %674, %670 ]
  %679 = getelementptr inbounds %struct.rsa_edesc, ptr %569, i32 0, i32 8, i32 0, i32 2
  store i32 %678, ptr %679, align 4
  %680 = load i32, ptr %612, align 4
  %681 = shl i32 %680, 12
  %682 = load i32, ptr %580, align 4
  %683 = or i32 %682, %677
  %684 = or i32 %683, %681
  store i32 %684, ptr %578, align 4
  %685 = getelementptr inbounds %struct.rsa_edesc, ptr %569, i32 0, i32 9
  tail call void @init_rsa_priv_f1_desc(ptr noundef %685, ptr noundef %578) #10
  %686 = tail call fastcc i32 @akcipher_enqueue_req(ptr noundef %565, ptr noundef nonnull @rsa_priv_f_done, ptr noundef %0) #10
  br label %702

687:                                              ; preds = %640, %608
  %688 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %689 = load ptr, ptr %688, align 4
  %690 = getelementptr inbounds %struct.rsa_edesc, ptr %569, i32 0, i32 1
  %691 = load i32, ptr %690, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %565, ptr noundef %689, i32 noundef %691, i32 noundef 2, i32 noundef 0) #10
  %692 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5
  %693 = load ptr, ptr %692, align 4
  %694 = load i32, ptr %569, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %565, ptr noundef %693, i32 noundef %694, i32 noundef 1, i32 noundef 0) #10
  %695 = getelementptr inbounds %struct.rsa_edesc, ptr %569, i32 0, i32 4
  %696 = load i32, ptr %695, align 4
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %701, label %698

698:                                              ; preds = %687
  %699 = getelementptr inbounds %struct.rsa_edesc, ptr %569, i32 0, i32 6
  %700 = load i32, ptr %699, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %565, i32 noundef %700, i32 noundef %696, i32 noundef 1, i32 noundef 0) #10
  br label %701

701:                                              ; preds = %698, %687
  tail call void @kfree(ptr noundef %569) #10
  br label %702

702:                                              ; preds = %701, %676, %571, %562, %533, %330, %321, %295, %31, %17, %7, %1
  %703 = phi i32 [ -75, %17 ], [ -22, %7 ], [ -22, %1 ], [ %32, %31 ], [ -12, %321 ], [ %306, %295 ], [ %331, %330 ], [ -12, %562 ], [ %547, %533 ], [ %572, %571 ], [ -12, %701 ], [ %686, %676 ]
  ret i32 %703
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_rsa_set_pub_key(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.rsa_key, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false)
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 3
  tail call fastcc void @caam_rsa_free_key(ptr noundef %5)
  %6 = call i32 @rsa_parse_pub_key(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %49

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = call ptr @kmemdup(ptr noundef %10, i32 noundef %12, i32 noundef 3265) #10
  %14 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 8
  %19 = load i8, ptr %17, align 1
  %20 = icmp eq i8 %19, 0
  %21 = load i32, ptr %18, align 4
  br i1 %20, label %22, label %31

22:                                               ; preds = %26, %16
  %23 = phi ptr [ %27, %26 ], [ %17, %16 ]
  %24 = phi i32 [ %28, %26 ], [ %21, %16 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %23, i32 1
  %28 = add i32 %24, -1
  store i32 %28, ptr %18, align 4
  %29 = load i8, ptr %27, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %22, label %31

31:                                               ; preds = %26, %16
  %32 = phi i32 [ %21, %16 ], [ %28, %26 ]
  %33 = phi ptr [ %17, %16 ], [ %27, %26 ]
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %22
  store ptr null, ptr %5, align 4
  br label %48

36:                                               ; preds = %31
  %37 = call ptr @kmemdup(ptr noundef %33, i32 noundef %32, i32 noundef 3265) #10
  store ptr %37, ptr %5, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %18, align 4
  %41 = shl i32 %40, 3
  %42 = icmp ult i32 %41, 4097
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  call fastcc void @caam_rsa_free_key(ptr noundef %5)
  br label %49

44:                                               ; preds = %39
  %45 = load i32, ptr %11, align 4
  %46 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 40
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 36
  store i32 %40, ptr %47, align 4
  br label %49

48:                                               ; preds = %36, %35, %8
  call fastcc void @caam_rsa_free_key(ptr noundef %5)
  br label %49

49:                                               ; preds = %48, %44, %43, %3
  %50 = phi i32 [ -22, %43 ], [ 0, %44 ], [ -12, %48 ], [ %6, %3 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_rsa_set_priv_key(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.rsa_key, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false)
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 3
  tail call fastcc void @caam_rsa_free_key(ptr noundef %5)
  %6 = call i32 @rsa_parse_priv_key(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %221

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = call ptr @kmemdup(ptr noundef %10, i32 noundef %12, i32 noundef 3265) #10
  %14 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 4
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %220, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = call ptr @kmemdup(ptr noundef %18, i32 noundef %20, i32 noundef 3265) #10
  %22 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %220, label %24

24:                                               ; preds = %16
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 8
  %27 = load i8, ptr %25, align 1
  %28 = icmp eq i8 %27, 0
  %29 = load i32, ptr %26, align 4
  br i1 %28, label %30, label %39

30:                                               ; preds = %34, %24
  %31 = phi ptr [ %35, %34 ], [ %25, %24 ]
  %32 = phi i32 [ %36, %34 ], [ %29, %24 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %31, i32 1
  %36 = add i32 %32, -1
  store i32 %36, ptr %26, align 4
  %37 = load i8, ptr %35, align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %30, label %39

39:                                               ; preds = %34, %24
  %40 = phi i32 [ %29, %24 ], [ %36, %34 ]
  %41 = phi ptr [ %25, %24 ], [ %35, %34 ]
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %30
  store ptr null, ptr %5, align 4
  br label %220

44:                                               ; preds = %39
  %45 = call ptr @kmemdup(ptr noundef %41, i32 noundef %40, i32 noundef 3265) #10
  store ptr %45, ptr %5, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %220, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %26, align 4
  %49 = shl i32 %48, 3
  %50 = icmp ult i32 %49, 4097
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  call fastcc void @caam_rsa_free_key(ptr noundef %5)
  br label %221

52:                                               ; preds = %47
  %53 = load i32, ptr %11, align 4
  %54 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 44
  store i32 %53, ptr %54, align 4
  %55 = load i32, ptr %19, align 4
  %56 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 40
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 36
  store i32 %48, ptr %57, align 4
  %58 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 11
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 12
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %70, %52
  %67 = phi ptr [ %71, %70 ], [ %63, %52 ]
  %68 = phi i32 [ %72, %70 ], [ %59, %52 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = getelementptr i8, ptr %67, i32 1
  %72 = add i32 %68, -1
  %73 = load i8, ptr %71, align 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %66, label %75

75:                                               ; preds = %70, %52
  %76 = phi i32 [ %59, %52 ], [ %72, %70 ]
  %77 = phi ptr [ %63, %52 ], [ %71, %70 ]
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75, %66
  %80 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 8
  store ptr null, ptr %80, align 4
  br label %221

81:                                               ; preds = %75
  %82 = call ptr @kmemdup(ptr noundef %77, i32 noundef %76, i32 noundef 3265) #10
  %83 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 8
  store ptr %82, ptr %83, align 4
  %84 = icmp eq ptr %82, null
  br i1 %84, label %221, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 2
  store i32 %76, ptr %86, align 4
  %87 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = load i8, ptr %88, align 1
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %95, %85
  %92 = phi ptr [ %96, %95 ], [ %88, %85 ]
  %93 = phi i32 [ %97, %95 ], [ %61, %85 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %91
  %96 = getelementptr i8, ptr %92, i32 1
  %97 = add i32 %93, -1
  %98 = load i8, ptr %96, align 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %91, label %100

100:                                              ; preds = %95, %85
  %101 = phi i32 [ %61, %85 ], [ %97, %95 ]
  %102 = phi ptr [ %88, %85 ], [ %96, %95 ]
  %103 = icmp eq i32 %101, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100, %91
  %105 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 12
  store ptr null, ptr %105, align 4
  br label %218

106:                                              ; preds = %100
  %107 = call ptr @kmemdup(ptr noundef %102, i32 noundef %101, i32 noundef 3265) #10
  %108 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 12
  store ptr %107, ptr %108, align 4
  %109 = icmp eq ptr %107, null
  br i1 %109, label %218, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 2, i32 1
  store i32 %101, ptr %111, align 4
  %112 = load i32, ptr %58, align 4
  %113 = call noalias align 64 ptr @__kmalloc(i32 noundef %112, i32 noundef 3521) #13
  %114 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 28
  store ptr %113, ptr %114, align 4
  %115 = icmp eq ptr %113, null
  br i1 %115, label %216, label %116

116:                                              ; preds = %110
  %117 = load i32, ptr %60, align 4
  %118 = call noalias align 64 ptr @__kmalloc(i32 noundef %117, i32 noundef 3521) #13
  %119 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 32
  store ptr %118, ptr %119, align 4
  %120 = icmp eq ptr %118, null
  br i1 %120, label %214, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 2, i32 2
  store i32 1, ptr %122, align 4
  %123 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 5
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 13
  %126 = load i32, ptr %125, align 4
  %127 = load i8, ptr %124, align 1
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %133, %121
  %130 = phi ptr [ %134, %133 ], [ %124, %121 ]
  %131 = phi i32 [ %135, %133 ], [ %126, %121 ]
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %145, label %133

133:                                              ; preds = %129
  %134 = getelementptr i8, ptr %130, i32 1
  %135 = add i32 %131, -1
  %136 = load i8, ptr %134, align 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %129, label %138

138:                                              ; preds = %133, %121
  %139 = phi ptr [ %124, %121 ], [ %134, %133 ]
  %140 = phi i32 [ %126, %121 ], [ %135, %133 ]
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %138
  %143 = call noalias align 64 ptr @__kmalloc(i32 noundef %76, i32 noundef 3521) #13
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %142, %138, %129
  %146 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 16
  store ptr null, ptr %146, align 4
  br label %212

147:                                              ; preds = %142
  %148 = sub i32 %76, %140
  %149 = getelementptr i8, ptr %143, i32 %148
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %149, ptr align 1 %139, i32 %140, i1 false) #10
  %150 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 16
  store ptr %143, ptr %150, align 4
  %151 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 6
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 14
  %154 = load i32, ptr %153, align 4
  %155 = load i8, ptr %152, align 1
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %161, %147
  %158 = phi ptr [ %162, %161 ], [ %152, %147 ]
  %159 = phi i32 [ %163, %161 ], [ %154, %147 ]
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %173, label %161

161:                                              ; preds = %157
  %162 = getelementptr i8, ptr %158, i32 1
  %163 = add i32 %159, -1
  %164 = load i8, ptr %162, align 1
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %157, label %166

166:                                              ; preds = %161, %147
  %167 = phi ptr [ %152, %147 ], [ %162, %161 ]
  %168 = phi i32 [ %154, %147 ], [ %163, %161 ]
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = call noalias align 64 ptr @__kmalloc(i32 noundef %101, i32 noundef 3521) #13
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %170, %166, %157
  %174 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 20
  store ptr null, ptr %174, align 4
  br label %210

175:                                              ; preds = %170
  %176 = sub i32 %101, %168
  %177 = getelementptr i8, ptr %171, i32 %176
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %177, ptr align 1 %167, i32 %168, i1 false) #10
  %178 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 20
  store ptr %171, ptr %178, align 4
  %179 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 7
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 15
  %182 = load i32, ptr %181, align 4
  %183 = load i8, ptr %180, align 1
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %189, %175
  %186 = phi ptr [ %190, %189 ], [ %180, %175 ]
  %187 = phi i32 [ %191, %189 ], [ %182, %175 ]
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %207, label %189

189:                                              ; preds = %185
  %190 = getelementptr i8, ptr %186, i32 1
  %191 = add i32 %187, -1
  %192 = load i8, ptr %190, align 1
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %185, label %194

194:                                              ; preds = %189, %175
  %195 = phi ptr [ %180, %175 ], [ %190, %189 ]
  %196 = phi i32 [ %182, %175 ], [ %191, %189 ]
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %207, label %198

198:                                              ; preds = %194
  %199 = call noalias align 64 ptr @__kmalloc(i32 noundef %101, i32 noundef 3521) #13
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  %202 = load ptr, ptr %178, align 4
  br label %207

203:                                              ; preds = %198
  %204 = sub i32 %101, %196
  %205 = getelementptr i8, ptr %199, i32 %204
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %205, ptr align 1 %195, i32 %196, i1 false) #10
  %206 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 24
  store ptr %199, ptr %206, align 4
  store i32 2, ptr %122, align 4
  br label %221

207:                                              ; preds = %201, %194, %185
  %208 = phi ptr [ %202, %201 ], [ %171, %194 ], [ %171, %185 ]
  %209 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 24
  store ptr null, ptr %209, align 4
  call void @kfree_sensitive(ptr noundef %208) #10
  br label %210

210:                                              ; preds = %207, %173
  %211 = load ptr, ptr %150, align 4
  call void @kfree_sensitive(ptr noundef %211) #10
  br label %212

212:                                              ; preds = %210, %145
  %213 = load ptr, ptr %119, align 4
  call void @kfree_sensitive(ptr noundef %213) #10
  br label %214

214:                                              ; preds = %212, %116
  %215 = load ptr, ptr %114, align 4
  call void @kfree_sensitive(ptr noundef %215) #10
  br label %216

216:                                              ; preds = %214, %110
  %217 = load ptr, ptr %108, align 4
  call void @kfree_sensitive(ptr noundef %217) #10
  br label %218

218:                                              ; preds = %216, %106, %104
  %219 = load ptr, ptr %83, align 4
  call void @kfree_sensitive(ptr noundef %219) #10
  br label %221

220:                                              ; preds = %44, %43, %16, %8
  call fastcc void @caam_rsa_free_key(ptr noundef %5)
  br label %221

221:                                              ; preds = %220, %218, %203, %81, %79, %51, %3
  %222 = phi i32 [ -22, %51 ], [ -12, %220 ], [ %6, %3 ], [ 0, %79 ], [ 0, %81 ], [ 0, %203 ], [ 0, %218 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  ret i32 %222
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @caam_rsa_max_size(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 36
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_rsa_init_tfm(ptr nocapture noundef %0) #0 {
  %2 = tail call ptr @caam_jr_alloc() #10
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 2, i32 3
  store ptr %2, ptr %3, align 4
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %42

9:                                                ; preds = %1
  %10 = load ptr, ptr @zero_buffer, align 4
  %11 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %10) #10
  %12 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %24, !prof !11

15:                                               ; preds = %9
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %16 = tail call ptr @dev_driver_string(ptr noundef %2) #10
  %17 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load ptr, ptr %2, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %21, %20 ], [ %18, %15 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %16, ptr noundef %23) #10
  br label %24

24:                                               ; preds = %22, %9
  br i1 %11, label %25, label %27

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 2, i32 4
  store i32 -1, ptr %26, align 4
  br label %37

27:                                               ; preds = %24
  %28 = load ptr, ptr @mem_map, align 4
  %29 = ptrtoint ptr %10 to i32
  %30 = add i32 %29, 1073741824
  %31 = lshr i32 %30, 12
  %32 = getelementptr %struct.page, ptr %28, i32 %31
  %33 = and i32 %29, 4095
  %34 = tail call i32 @dma_map_page_attrs(ptr noundef %2, ptr noundef %32, i32 noundef %33, i32 noundef 511, i32 noundef 1, i32 noundef 0) #10
  %35 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 2, i32 4
  store i32 %34, ptr %35, align 4
  %36 = icmp eq i32 %34, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %27, %25
  %38 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.22) #12
  %39 = load ptr, ptr %3, align 4
  tail call void @caam_jr_free(ptr noundef %39) #10
  br label %42

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  store ptr @akcipher_do_one_req, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %37, %5
  %43 = phi i32 [ %8, %5 ], [ -12, %37 ], [ 0, %40 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @caam_rsa_exit_tfm(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 3
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 2, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 2, i32 4
  %6 = load i32, ptr %5, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %4, i32 noundef %6, i32 noundef 511, i32 noundef 1, i32 noundef 0) #10
  tail call fastcc void @caam_rsa_free_key(ptr noundef %2)
  %7 = load ptr, ptr %3, align 4
  tail call void @caam_jr_free(ptr noundef %7) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rsa_edesc_alloc(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.sg_mapping_iter, align 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 2, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 6
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 32
  %15 = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 1, i32 4, i32 36
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %18, label %75

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = sub i32 %14, %16
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false) #10, !annotation !12
  %22 = zext i32 %21 to i64
  %23 = tail call i32 @sg_nents_for_len(ptr noundef %20, i64 noundef %22) #10
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #10
  br label %66

26:                                               ; preds = %18
  %27 = lshr exact i32 %11, 9
  %28 = xor i32 %27, 5
  call void @sg_miter_start(ptr noundef nonnull %3, ptr noundef %20, i32 noundef %23, i32 noundef %28) #10
  %29 = icmp eq i32 %21, 0
  br i1 %29, label %59, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sg_mapping_iter, ptr %3, i32 0, i32 1
  %32 = getelementptr inbounds %struct.sg_mapping_iter, ptr %3, i32 0, i32 2
  br label %33

33:                                               ; preds = %52, %30
  %34 = phi ptr [ null, %30 ], [ %55, %52 ]
  %35 = phi i32 [ 0, %30 ], [ %56, %52 ]
  %36 = phi i32 [ %21, %30 ], [ %57, %52 ]
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %46, %33
  %39 = phi ptr [ %49, %46 ], [ %34, %33 ]
  %40 = phi i32 [ %48, %46 ], [ %35, %33 ]
  %41 = phi i32 [ %47, %46 ], [ 0, %33 ]
  %42 = load i8, ptr %39, align 1
  %43 = icmp eq i8 %42, 0
  %44 = icmp ugt i32 %36, %41
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = add nuw i32 %41, 1
  %48 = add i32 %40, -1
  %49 = getelementptr i8, ptr %39, i32 1
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %52, label %38

51:                                               ; preds = %38
  br i1 %43, label %52, label %59

52:                                               ; preds = %51, %46, %33
  %53 = phi i32 [ %41, %51 ], [ 0, %33 ], [ %35, %46 ]
  %54 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %3) #10
  %55 = load ptr, ptr %31, align 4
  %56 = load i32, ptr %32, align 4
  %57 = sub i32 %36, %53
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %33

59:                                               ; preds = %52, %51, %26
  %60 = phi i32 [ 0, %26 ], [ 0, %52 ], [ %36, %51 ]
  %61 = phi i32 [ 0, %26 ], [ 0, %52 ], [ %41, %51 ]
  %62 = getelementptr inbounds %struct.sg_mapping_iter, ptr %3, i32 0, i32 3
  store i32 %61, ptr %62, align 4
  call void @sg_miter_stop(ptr noundef nonnull %3) #10
  %63 = sub i32 %21, %60
  %64 = add i32 %63, %61
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #10
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59, %25
  %67 = phi i32 [ %23, %25 ], [ %64, %59 ]
  %68 = inttoptr i32 %67 to ptr
  br label %358

69:                                               ; preds = %59
  %70 = load ptr, ptr %19, align 8
  %71 = call ptr @scatterwalk_ffwd(ptr noundef %8, ptr noundef %70, i32 noundef %64) #10
  %72 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5
  store ptr %71, ptr %72, align 4
  %73 = load i32, ptr %13, align 32
  %74 = sub i32 %73, %64
  br label %80

75:                                               ; preds = %2
  %76 = sub i32 %16, %14
  %77 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5
  store ptr %78, ptr %79, align 4
  br label %80

80:                                               ; preds = %75, %69
  %81 = phi i32 [ %14, %75 ], [ %74, %69 ]
  %82 = phi ptr [ %78, %75 ], [ %71, %69 ]
  %83 = phi i32 [ %76, %75 ], [ 0, %69 ]
  %84 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5, i32 4
  store i32 %81, ptr %84, align 4
  %85 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5
  %86 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5, i32 4
  %87 = zext i32 %81 to i64
  %88 = call i32 @sg_nents_for_len(ptr noundef %82, i64 noundef %87) #10
  %89 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = zext i32 %92 to i64
  %94 = call i32 @sg_nents_for_len(ptr noundef %90, i64 noundef %93) #10
  %95 = load ptr, ptr %85, align 4
  %96 = call i32 @dma_map_sg_attrs(ptr noundef %7, ptr noundef %95, i32 noundef %88, i32 noundef 1, i32 noundef 0) #10
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99, !prof !11

98:                                               ; preds = %80
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3) #12
  br label %358

99:                                               ; preds = %80
  %100 = load ptr, ptr %89, align 4
  %101 = call i32 @dma_map_sg_attrs(ptr noundef %7, ptr noundef %100, i32 noundef %94, i32 noundef 2, i32 noundef 0) #10
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104, !prof !11

103:                                              ; preds = %99
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4) #12
  br label %356

104:                                              ; preds = %99
  %105 = icmp eq i32 %83, 0
  %106 = icmp eq i32 %96, 1
  %107 = select i1 %105, i1 %106, i1 false
  %108 = icmp ne i32 %83, 0
  %109 = zext i1 %108 to i32
  %110 = add i32 %96, %109
  %111 = select i1 %107, i32 0, i32 %110
  %112 = icmp sgt i32 %101, 1
  br i1 %112, label %113, label %117

113:                                              ; preds = %104
  %114 = add nuw i32 %101, 3
  %115 = and i32 %114, -4
  %116 = add i32 %115, %111
  br label %120

117:                                              ; preds = %104
  %118 = add i32 %111, 3
  %119 = and i32 %118, -4
  br label %120

120:                                              ; preds = %117, %113
  %121 = phi i32 [ %116, %113 ], [ %119, %117 ]
  %122 = shl i32 %121, 4
  %123 = select i1 %12, i32 2849, i32 3521
  %124 = add i32 %1, 76
  %125 = add i32 %124, %122
  %126 = call noalias align 64 ptr @__kmalloc(i32 noundef %125, i32 noundef %123) #13
  %127 = icmp eq ptr %126, null
  br i1 %127, label %354, label %128

128:                                              ; preds = %120
  %129 = getelementptr i8, ptr %126, i32 76
  %130 = getelementptr i8, ptr %129, i32 %1
  %131 = getelementptr inbounds %struct.rsa_edesc, ptr %126, i32 0, i32 7
  store ptr %130, ptr %131, align 4
  br i1 %108, label %132, label %170

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 2, i32 4
  %134 = load i32, ptr %133, align 4
  %135 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %132
  %138 = zext i32 %134 to i64
  store i64 %138, ptr %130, align 8
  %139 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %130, i32 0, i32 3
  %140 = load i16, ptr %139, align 2
  %141 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %130, i32 0, i32 1
  store i32 %83, ptr %141, align 8
  %142 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %130, i32 0, i32 2
  %143 = load i16, ptr %142, align 4
  %144 = and i16 %143, -16384
  store i16 %144, ptr %142, align 4
  %145 = and i16 %140, 16384
  store i16 %145, ptr %139, align 2
  br label %170

146:                                              ; preds = %132
  %147 = load i8, ptr @caam_imx, align 1, !range !8
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %146
  %150 = load i8, ptr @caam_little_end, align 1, !range !8
  %151 = icmp eq i8 %150, 0
  %152 = call i32 @llvm.bswap.i32(i32 %134) #10
  %153 = select i1 %151, i32 %152, i32 %134
  %154 = zext i32 %153 to i64
  %155 = shl nuw i64 %154, 32
  br label %162

156:                                              ; preds = %146
  %157 = zext i32 %134 to i64
  %158 = load i8, ptr @caam_little_end, align 1, !range !8
  %159 = icmp eq i8 %158, 0
  %160 = call i64 @llvm.bswap.i64(i64 %157) #10
  %161 = select i1 %159, i64 %160, i64 %157
  br label %162

162:                                              ; preds = %156, %149
  %163 = phi i64 [ %155, %149 ], [ %161, %156 ]
  store i64 %163, ptr %130, align 8
  %164 = load i8, ptr @caam_little_end, align 1, !range !8
  %165 = icmp eq i8 %164, 0
  %166 = call i32 @llvm.bswap.i32(i32 %83) #10
  %167 = select i1 %165, i32 %166, i32 %83
  %168 = getelementptr inbounds %struct.sec4_sg_entry, ptr %130, i32 0, i32 1
  store i32 %167, ptr %168, align 8
  %169 = getelementptr inbounds %struct.sec4_sg_entry, ptr %130, i32 0, i32 2
  store i32 0, ptr %169, align 4
  br label %170

170:                                              ; preds = %162, %137, %128
  %171 = icmp eq i32 %111, 0
  br i1 %171, label %244, label %172

172:                                              ; preds = %170
  %173 = load i32, ptr %86, align 4
  %174 = load ptr, ptr %131, align 4
  %175 = getelementptr %struct.sec4_sg_entry, ptr %174, i32 %109
  %176 = icmp eq i32 %173, 0
  br i1 %176, label %228, label %177

177:                                              ; preds = %172
  %178 = load ptr, ptr %85, align 4
  br label %179

179:                                              ; preds = %223, %177
  %180 = phi ptr [ %225, %223 ], [ %178, %177 ]
  %181 = phi i32 [ %226, %223 ], [ %173, %177 ]
  %182 = phi ptr [ %224, %223 ], [ %175, %177 ]
  %183 = getelementptr inbounds %struct.scatterlist, ptr %180, i32 0, i32 4
  %184 = load i32, ptr %183, align 4
  %185 = call i32 @llvm.smin.i32(i32 %184, i32 %181) #10
  %186 = getelementptr inbounds %struct.scatterlist, ptr %180, i32 0, i32 3
  %187 = load i32, ptr %186, align 4
  %188 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %199, label %190

190:                                              ; preds = %179
  %191 = zext i32 %187 to i64
  store i64 %191, ptr %182, align 8
  %192 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %182, i32 0, i32 3
  %193 = load i16, ptr %192, align 2
  %194 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %182, i32 0, i32 1
  store i32 %185, ptr %194, align 8
  %195 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %182, i32 0, i32 2
  %196 = load i16, ptr %195, align 4
  %197 = and i16 %196, -16384
  store i16 %197, ptr %195, align 4
  %198 = and i16 %193, 16384
  store i16 %198, ptr %192, align 2
  br label %223

199:                                              ; preds = %179
  %200 = load i8, ptr @caam_imx, align 1, !range !8
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %209, label %202

202:                                              ; preds = %199
  %203 = load i8, ptr @caam_little_end, align 1, !range !8
  %204 = icmp eq i8 %203, 0
  %205 = call i32 @llvm.bswap.i32(i32 %187) #10
  %206 = select i1 %204, i32 %205, i32 %187
  %207 = zext i32 %206 to i64
  %208 = shl nuw i64 %207, 32
  br label %215

209:                                              ; preds = %199
  %210 = zext i32 %187 to i64
  %211 = load i8, ptr @caam_little_end, align 1, !range !8
  %212 = icmp eq i8 %211, 0
  %213 = call i64 @llvm.bswap.i64(i64 %210) #10
  %214 = select i1 %212, i64 %213, i64 %210
  br label %215

215:                                              ; preds = %209, %202
  %216 = phi i64 [ %208, %202 ], [ %214, %209 ]
  store i64 %216, ptr %182, align 8
  %217 = load i8, ptr @caam_little_end, align 1, !range !8
  %218 = icmp eq i8 %217, 0
  %219 = call i32 @llvm.bswap.i32(i32 %185) #10
  %220 = select i1 %218, i32 %219, i32 %185
  %221 = getelementptr inbounds %struct.sec4_sg_entry, ptr %182, i32 0, i32 1
  store i32 %220, ptr %221, align 8
  %222 = getelementptr inbounds %struct.sec4_sg_entry, ptr %182, i32 0, i32 2
  store i32 0, ptr %222, align 4
  br label %223

223:                                              ; preds = %215, %190
  %224 = getelementptr %struct.sec4_sg_entry, ptr %182, i32 1
  %225 = call ptr @sg_next(ptr noundef %180) #10
  %226 = sub i32 %181, %185
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %179

228:                                              ; preds = %223, %172
  %229 = phi ptr [ %175, %172 ], [ %224, %223 ]
  %230 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %228
  %233 = getelementptr %struct.sec4_sg_entry, ptr %229, i32 -1
  %234 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %233, i32 0, i32 3
  %235 = load i16, ptr %234, align 2
  %236 = or i16 %235, -32768
  store i16 %236, ptr %234, align 2
  br label %244

237:                                              ; preds = %228
  %238 = load i8, ptr @caam_little_end, align 1, !range !8
  %239 = icmp eq i8 %238, 0
  %240 = select i1 %239, i32 64, i32 1073741824
  %241 = getelementptr %struct.sec4_sg_entry, ptr %229, i32 -1, i32 1
  %242 = load i32, ptr %241, align 8
  %243 = or i32 %240, %242
  store i32 %243, ptr %241, align 8
  br label %244

244:                                              ; preds = %237, %232, %170
  br i1 %112, label %245, label %317

245:                                              ; preds = %244
  %246 = load i32, ptr %91, align 4
  %247 = load ptr, ptr %131, align 4
  %248 = getelementptr %struct.sec4_sg_entry, ptr %247, i32 %111
  %249 = icmp eq i32 %246, 0
  br i1 %249, label %301, label %250

250:                                              ; preds = %245
  %251 = load ptr, ptr %89, align 4
  br label %252

252:                                              ; preds = %296, %250
  %253 = phi ptr [ %298, %296 ], [ %251, %250 ]
  %254 = phi i32 [ %299, %296 ], [ %246, %250 ]
  %255 = phi ptr [ %297, %296 ], [ %248, %250 ]
  %256 = getelementptr inbounds %struct.scatterlist, ptr %253, i32 0, i32 4
  %257 = load i32, ptr %256, align 4
  %258 = call i32 @llvm.smin.i32(i32 %257, i32 %254) #10
  %259 = getelementptr inbounds %struct.scatterlist, ptr %253, i32 0, i32 3
  %260 = load i32, ptr %259, align 4
  %261 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %272, label %263

263:                                              ; preds = %252
  %264 = zext i32 %260 to i64
  store i64 %264, ptr %255, align 8
  %265 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %255, i32 0, i32 3
  %266 = load i16, ptr %265, align 2
  %267 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %255, i32 0, i32 1
  store i32 %258, ptr %267, align 8
  %268 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %255, i32 0, i32 2
  %269 = load i16, ptr %268, align 4
  %270 = and i16 %269, -16384
  store i16 %270, ptr %268, align 4
  %271 = and i16 %266, 16384
  store i16 %271, ptr %265, align 2
  br label %296

272:                                              ; preds = %252
  %273 = load i8, ptr @caam_imx, align 1, !range !8
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %282, label %275

275:                                              ; preds = %272
  %276 = load i8, ptr @caam_little_end, align 1, !range !8
  %277 = icmp eq i8 %276, 0
  %278 = call i32 @llvm.bswap.i32(i32 %260) #10
  %279 = select i1 %277, i32 %278, i32 %260
  %280 = zext i32 %279 to i64
  %281 = shl nuw i64 %280, 32
  br label %288

282:                                              ; preds = %272
  %283 = zext i32 %260 to i64
  %284 = load i8, ptr @caam_little_end, align 1, !range !8
  %285 = icmp eq i8 %284, 0
  %286 = call i64 @llvm.bswap.i64(i64 %283) #10
  %287 = select i1 %285, i64 %286, i64 %283
  br label %288

288:                                              ; preds = %282, %275
  %289 = phi i64 [ %281, %275 ], [ %287, %282 ]
  store i64 %289, ptr %255, align 8
  %290 = load i8, ptr @caam_little_end, align 1, !range !8
  %291 = icmp eq i8 %290, 0
  %292 = call i32 @llvm.bswap.i32(i32 %258) #10
  %293 = select i1 %291, i32 %292, i32 %258
  %294 = getelementptr inbounds %struct.sec4_sg_entry, ptr %255, i32 0, i32 1
  store i32 %293, ptr %294, align 8
  %295 = getelementptr inbounds %struct.sec4_sg_entry, ptr %255, i32 0, i32 2
  store i32 0, ptr %295, align 4
  br label %296

296:                                              ; preds = %288, %263
  %297 = getelementptr %struct.sec4_sg_entry, ptr %255, i32 1
  %298 = call ptr @sg_next(ptr noundef %253) #10
  %299 = sub i32 %254, %258
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %252

301:                                              ; preds = %296, %245
  %302 = phi ptr [ %248, %245 ], [ %297, %296 ]
  %303 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %310, label %305

305:                                              ; preds = %301
  %306 = getelementptr %struct.sec4_sg_entry, ptr %302, i32 -1
  %307 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %306, i32 0, i32 3
  %308 = load i16, ptr %307, align 2
  %309 = or i16 %308, -32768
  store i16 %309, ptr %307, align 2
  br label %317

310:                                              ; preds = %301
  %311 = load i8, ptr @caam_little_end, align 1, !range !8
  %312 = icmp eq i8 %311, 0
  %313 = select i1 %312, i32 64, i32 1073741824
  %314 = getelementptr %struct.sec4_sg_entry, ptr %302, i32 -1, i32 1
  %315 = load i32, ptr %314, align 8
  %316 = or i32 %313, %315
  store i32 %316, ptr %314, align 8
  br label %317

317:                                              ; preds = %310, %305, %244
  store i32 %88, ptr %126, align 64
  %318 = getelementptr inbounds %struct.rsa_edesc, ptr %126, i32 0, i32 1
  store i32 %94, ptr %318, align 4
  %319 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5, i32 8
  store ptr %126, ptr %319, align 4
  %320 = icmp eq i32 %122, 0
  br i1 %320, label %358, label %321

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.rsa_edesc, ptr %126, i32 0, i32 2
  store i32 %96, ptr %322, align 8
  %323 = getelementptr inbounds %struct.rsa_edesc, ptr %126, i32 0, i32 3
  store i32 %101, ptr %323, align 4
  %324 = load ptr, ptr %131, align 4
  %325 = call zeroext i1 @is_vmalloc_addr(ptr noundef %324) #10
  %326 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %327 = xor i1 %326, true
  %328 = select i1 %325, i1 %327, i1 false
  br i1 %328, label %329, label %338, !prof !11

329:                                              ; preds = %321
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %330 = call ptr @dev_driver_string(ptr noundef %7) #10
  %331 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %332 = load ptr, ptr %331, align 4
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %336

334:                                              ; preds = %329
  %335 = load ptr, ptr %7, align 4
  br label %336

336:                                              ; preds = %334, %329
  %337 = phi ptr [ %335, %334 ], [ %332, %329 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %330, ptr noundef %337) #10
  br label %338

338:                                              ; preds = %336, %321
  br i1 %325, label %339, label %341

339:                                              ; preds = %338
  %340 = getelementptr inbounds %struct.rsa_edesc, ptr %126, i32 0, i32 6
  store i32 -1, ptr %340, align 8
  br label %351

341:                                              ; preds = %338
  %342 = load ptr, ptr @mem_map, align 4
  %343 = ptrtoint ptr %324 to i32
  %344 = add i32 %343, 1073741824
  %345 = lshr i32 %344, 12
  %346 = getelementptr %struct.page, ptr %342, i32 %345
  %347 = and i32 %343, 4095
  %348 = call i32 @dma_map_page_attrs(ptr noundef %7, ptr noundef %346, i32 noundef %347, i32 noundef %122, i32 noundef 1, i32 noundef 0) #10
  %349 = getelementptr inbounds %struct.rsa_edesc, ptr %126, i32 0, i32 6
  store i32 %348, ptr %349, align 8
  %350 = icmp eq i32 %348, -1
  br i1 %350, label %351, label %352

351:                                              ; preds = %341, %339
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5) #12
  call void @kfree(ptr noundef nonnull %126) #10
  br label %354

352:                                              ; preds = %341
  %353 = getelementptr inbounds %struct.rsa_edesc, ptr %126, i32 0, i32 4
  store i32 %122, ptr %353, align 16
  br label %358

354:                                              ; preds = %351, %120
  %355 = load ptr, ptr %89, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %355, i32 noundef %94, i32 noundef 2, i32 noundef 0) #10
  br label %356

356:                                              ; preds = %354, %103
  %357 = load ptr, ptr %85, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %357, i32 noundef %88, i32 noundef 1, i32 noundef 0) #10
  br label %358

358:                                              ; preds = %356, %352, %317, %98, %66
  %359 = phi ptr [ %68, %66 ], [ inttoptr (i32 -12 to ptr), %98 ], [ inttoptr (i32 -12 to ptr), %356 ], [ %126, %352 ], [ %126, %317 ]
  ret ptr %359
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rsa_pub_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @akcipher_enqueue_req(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.crypto_async_request, ptr %2, i32 0, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.akcipher_request, ptr %2, i32 1, i32 5, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.akcipher_request, ptr %2, i32 1, i32 5, i32 12
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.crypto_async_request, ptr %2, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %5, i32 0, i32 18
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @crypto_transfer_akcipher_request_to_engine(ptr noundef %17, ptr noundef %2) #10
  br label %22

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.rsa_edesc, ptr %9, i32 0, i32 9
  %21 = tail call i32 @caam_jr_enqueue(ptr noundef %0, ptr noundef %20, ptr noundef %1, ptr noundef %2) #10
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i32 [ %18, %15 ], [ %21, %19 ]
  switch i32 %23, label %24 [
    i32 -16, label %81
    i32 -115, label %81
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.crypto_tfm, ptr %7, i32 2, i32 2
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %56 [
    i32 0, label %27
    i32 1, label %37
    i32 2, label %55
  ]

27:                                               ; preds = %24
  %28 = load ptr, ptr %6, align 16
  %29 = getelementptr inbounds %struct.rsa_edesc, ptr %9, i32 0, i32 8, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.crypto_tfm, ptr %28, i32 1, i32 4, i32 36
  %32 = load i32, ptr %31, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %30, i32 noundef %32, i32 noundef 1, i32 noundef 0) #10
  %33 = getelementptr inbounds %struct.rsa_edesc, ptr %9, i32 0, i32 8, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.crypto_tfm, ptr %28, i32 1, i32 4, i32 44
  %36 = load i32, ptr %35, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %34, i32 noundef %36, i32 noundef 1, i32 noundef 0) #10
  br label %66

37:                                               ; preds = %24
  %38 = load ptr, ptr %6, align 16
  %39 = getelementptr inbounds %struct.crypto_tfm, ptr %38, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.crypto_tfm, ptr %38, i32 2, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.rsa_edesc, ptr %9, i32 0, i32 8, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.crypto_tfm, ptr %38, i32 1, i32 4, i32 44
  %46 = load i32, ptr %45, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %44, i32 noundef %46, i32 noundef 1, i32 noundef 0) #10
  %47 = getelementptr inbounds %struct.rsa_edesc, ptr %9, i32 0, i32 8, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %48, i32 noundef %40, i32 noundef 1, i32 noundef 0) #10
  %49 = getelementptr inbounds %struct.rsa_edesc, ptr %9, i32 0, i32 8, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %50, i32 noundef %42, i32 noundef 1, i32 noundef 0) #10
  %51 = getelementptr inbounds %struct.rsa_edesc, ptr %9, i32 0, i32 8, i32 0, i32 6
  %52 = load i32, ptr %51, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %52, i32 noundef %40, i32 noundef 0, i32 noundef 0) #10
  %53 = getelementptr inbounds %struct.rsa_edesc, ptr %9, i32 0, i32 8, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %54, i32 noundef %42, i32 noundef 0, i32 noundef 0) #10
  br label %66

55:                                               ; preds = %24
  tail call fastcc void @rsa_priv_f3_unmap(ptr noundef %0, ptr noundef %9, ptr noundef %2)
  br label %66

56:                                               ; preds = %24
  %57 = load ptr, ptr %6, align 16
  %58 = getelementptr inbounds %struct.rsa_edesc, ptr %9, i32 0, i32 8, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.crypto_tfm, ptr %57, i32 1, i32 4, i32 36
  %61 = load i32, ptr %60, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %59, i32 noundef %61, i32 noundef 1, i32 noundef 0) #10
  %62 = getelementptr inbounds %struct.rsa_edesc, ptr %9, i32 0, i32 8, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.crypto_tfm, ptr %57, i32 1, i32 4, i32 40
  %65 = load i32, ptr %64, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %63, i32 noundef %65, i32 noundef 1, i32 noundef 0) #10
  br label %66

66:                                               ; preds = %56, %55, %37, %27
  %67 = getelementptr inbounds %struct.akcipher_request, ptr %2, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.rsa_edesc, ptr %9, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %68, i32 noundef %70, i32 noundef 2, i32 noundef 0) #10
  %71 = getelementptr inbounds %struct.akcipher_request, ptr %2, i32 1, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = load i32, ptr %9, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %72, i32 noundef %73, i32 noundef 1, i32 noundef 0) #10
  %74 = getelementptr inbounds %struct.rsa_edesc, ptr %9, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.rsa_edesc, ptr %9, i32 0, i32 6
  %79 = load i32, ptr %78, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %79, i32 noundef %75, i32 noundef 1, i32 noundef 0) #10
  br label %80

80:                                               ; preds = %77, %66
  tail call void @kfree(ptr noundef %9) #10
  br label %81

81:                                               ; preds = %80, %22, %22
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsa_pub_done(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @caam_strstatus(ptr noundef %0, i32 noundef %2, i1 noundef zeroext false) #10
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ 0, %4 ]
  %12 = getelementptr inbounds %struct.akcipher_request, ptr %3, i32 1, i32 5, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rsa_edesc, ptr %13, i32 0, i32 5
  %15 = load i8, ptr %14, align 4, !range !8
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  %18 = load ptr, ptr %17, align 16
  %19 = getelementptr inbounds %struct.rsa_edesc, ptr %13, i32 0, i32 8, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.crypto_tfm, ptr %18, i32 1, i32 4, i32 36
  %22 = load i32, ptr %21, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %20, i32 noundef %22, i32 noundef 1, i32 noundef 0) #10
  %23 = getelementptr inbounds %struct.rsa_edesc, ptr %13, i32 0, i32 8, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.crypto_tfm, ptr %18, i32 1, i32 4, i32 40
  %26 = load i32, ptr %25, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %24, i32 noundef %26, i32 noundef 1, i32 noundef 0) #10
  %27 = getelementptr inbounds %struct.akcipher_request, ptr %3, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.rsa_edesc, ptr %13, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %28, i32 noundef %30, i32 noundef 2, i32 noundef 0) #10
  %31 = getelementptr inbounds %struct.akcipher_request, ptr %3, i32 1, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %13, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %32, i32 noundef %33, i32 noundef 1, i32 noundef 0) #10
  %34 = getelementptr inbounds %struct.rsa_edesc, ptr %13, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %10
  %38 = getelementptr inbounds %struct.rsa_edesc, ptr %13, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %39, i32 noundef %35, i32 noundef 1, i32 noundef 0) #10
  br label %40

40:                                               ; preds = %37, %10
  tail call void @kfree(ptr noundef %13) #10
  br i1 %16, label %41, label %44

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef %3, i32 noundef %11) #10
  br label %47

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %6, i32 0, i32 18
  %46 = load ptr, ptr %45, align 4
  tail call void @crypto_finalize_akcipher_request(ptr noundef %46, ptr noundef %3, i32 noundef %11) #10
  br label %47

47:                                               ; preds = %44, %41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_akcipher_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_jr_enqueue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rsa_priv_f3_unmap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %2, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rsa_edesc, ptr %1, i32 0, i32 8, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %11, i32 noundef %7, i32 noundef 1, i32 noundef 0) #10
  %12 = getelementptr inbounds %struct.rsa_edesc, ptr %1, i32 0, i32 8, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %13, i32 noundef %9, i32 noundef 1, i32 noundef 0) #10
  %14 = getelementptr inbounds %struct.rsa_edesc, ptr %1, i32 0, i32 8, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %15, i32 noundef %7, i32 noundef 1, i32 noundef 0) #10
  %16 = getelementptr inbounds %struct.rsa_edesc, ptr %1, i32 0, i32 8, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %17, i32 noundef %9, i32 noundef 1, i32 noundef 0) #10
  %18 = getelementptr inbounds %struct.rsa_edesc, ptr %1, i32 0, i32 8, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %19, i32 noundef %7, i32 noundef 1, i32 noundef 0) #10
  %20 = getelementptr inbounds %struct.rsa_edesc, ptr %1, i32 0, i32 8, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %21, i32 noundef %7, i32 noundef 0, i32 noundef 0) #10
  %22 = getelementptr inbounds %struct.rsa_edesc, ptr %1, i32 0, i32 8, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %23, i32 noundef %9, i32 noundef 0, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_strstatus(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_akcipher_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rsa_priv_f3_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsa_priv_f_done(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @caam_strstatus(ptr noundef %0, i32 noundef %2, i1 noundef zeroext false) #10
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %struct.akcipher_request, ptr %3, i32 1, i32 5, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rsa_edesc, ptr %15, i32 0, i32 5
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.crypto_tfm, ptr %6, i32 2, i32 2
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %50 [
    i32 0, label %21
    i32 1, label %31
    i32 2, label %49
  ]

21:                                               ; preds = %12
  %22 = load ptr, ptr %5, align 16
  %23 = getelementptr inbounds %struct.rsa_edesc, ptr %15, i32 0, i32 8, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.crypto_tfm, ptr %22, i32 1, i32 4, i32 36
  %26 = load i32, ptr %25, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %24, i32 noundef %26, i32 noundef 1, i32 noundef 0) #10
  %27 = getelementptr inbounds %struct.rsa_edesc, ptr %15, i32 0, i32 8, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.crypto_tfm, ptr %22, i32 1, i32 4, i32 44
  %30 = load i32, ptr %29, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %28, i32 noundef %30, i32 noundef 1, i32 noundef 0) #10
  br label %50

31:                                               ; preds = %12
  %32 = load ptr, ptr %5, align 16
  %33 = getelementptr inbounds %struct.crypto_tfm, ptr %32, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.crypto_tfm, ptr %32, i32 2, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.rsa_edesc, ptr %15, i32 0, i32 8, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.crypto_tfm, ptr %32, i32 1, i32 4, i32 44
  %40 = load i32, ptr %39, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %38, i32 noundef %40, i32 noundef 1, i32 noundef 0) #10
  %41 = getelementptr inbounds %struct.rsa_edesc, ptr %15, i32 0, i32 8, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %42, i32 noundef %34, i32 noundef 1, i32 noundef 0) #10
  %43 = getelementptr inbounds %struct.rsa_edesc, ptr %15, i32 0, i32 8, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %44, i32 noundef %36, i32 noundef 1, i32 noundef 0) #10
  %45 = getelementptr inbounds %struct.rsa_edesc, ptr %15, i32 0, i32 8, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %46, i32 noundef %34, i32 noundef 0, i32 noundef 0) #10
  %47 = getelementptr inbounds %struct.rsa_edesc, ptr %15, i32 0, i32 8, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %48, i32 noundef %36, i32 noundef 0, i32 noundef 0) #10
  br label %50

49:                                               ; preds = %12
  tail call fastcc void @rsa_priv_f3_unmap(ptr noundef %0, ptr noundef %15, ptr noundef %3)
  br label %50

50:                                               ; preds = %49, %31, %21, %12
  %51 = getelementptr inbounds %struct.akcipher_request, ptr %3, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.rsa_edesc, ptr %15, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %52, i32 noundef %54, i32 noundef 2, i32 noundef 0) #10
  %55 = getelementptr inbounds %struct.akcipher_request, ptr %3, i32 1, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %15, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %56, i32 noundef %57, i32 noundef 1, i32 noundef 0) #10
  %58 = getelementptr inbounds %struct.rsa_edesc, ptr %15, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.rsa_edesc, ptr %15, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %63, i32 noundef %59, i32 noundef 1, i32 noundef 0) #10
  br label %64

64:                                               ; preds = %61, %50
  tail call void @kfree(ptr noundef %15) #10
  br i1 %18, label %65, label %68

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef %3, i32 noundef %13) #10
  br label %71

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %8, i32 0, i32 18
  %70 = load ptr, ptr %69, align 4
  tail call void @crypto_finalize_akcipher_request(ptr noundef %70, ptr noundef %3, i32 noundef %13) #10
  br label %71

71:                                               ; preds = %68, %65
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rsa_priv_f2_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rsa_priv_f1_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @caam_rsa_free_key(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.caam_rsa_key, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree_sensitive(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.caam_rsa_key, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree_sensitive(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.caam_rsa_key, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree_sensitive(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.caam_rsa_key, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree_sensitive(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.caam_rsa_key, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree_sensitive(ptr noundef %11) #10
  %12 = getelementptr inbounds %struct.caam_rsa_key, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree_sensitive(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.caam_rsa_key, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree_sensitive(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.caam_rsa_key, ptr %0, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree_sensitive(ptr noundef %17) #10
  %18 = getelementptr inbounds %struct.caam_rsa_key, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #10
  %20 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %20) #10
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %0, i8 0, i32 64, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsa_parse_pub_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsa_parse_priv_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @caam_jr_alloc() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_jr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @akcipher_do_one_req(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 2, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.akcipher_request, ptr %1, i32 1, i32 5, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rsa_edesc, ptr %8, i32 0, i32 9
  %10 = getelementptr inbounds %struct.rsa_edesc, ptr %8, i32 0, i32 5
  store i8 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.akcipher_request, ptr %1, i32 1, i32 5, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @caam_jr_enqueue(ptr noundef %6, ptr noundef %9, ptr noundef %12, ptr noundef %1) #10
  switch i32 %13, label %18 [
    i32 -28, label %14
    i32 -115, label %45
  ]

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 4
  %16 = load i8, ptr %15, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %14, %2
  %19 = load ptr, ptr %7, align 4
  %20 = load ptr, ptr %3, align 16
  %21 = getelementptr inbounds %struct.rsa_edesc, ptr %19, i32 0, i32 8, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.crypto_tfm, ptr %20, i32 1, i32 4, i32 36
  %24 = load i32, ptr %23, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %22, i32 noundef %24, i32 noundef 1, i32 noundef 0) #10
  %25 = getelementptr inbounds %struct.rsa_edesc, ptr %19, i32 0, i32 8, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.crypto_tfm, ptr %20, i32 1, i32 4, i32 40
  %28 = load i32, ptr %27, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %26, i32 noundef %28, i32 noundef 1, i32 noundef 0) #10
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.akcipher_request, ptr %1, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %31, i32 noundef %33, i32 noundef 2, i32 noundef 0) #10
  %34 = getelementptr inbounds %struct.akcipher_request, ptr %1, i32 1, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %29, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %35, i32 noundef %36, i32 noundef 1, i32 noundef 0) #10
  %37 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %18
  %41 = getelementptr inbounds %struct.rsa_edesc, ptr %29, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %42, i32 noundef %38, i32 noundef 1, i32 noundef 0) #10
  br label %43

43:                                               ; preds = %40, %18
  %44 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %44) #10
  br label %45

45:                                               ; preds = %43, %14, %2
  %46 = phi i32 [ -28, %14 ], [ %13, %43 ], [ 0, %2 ]
  ret i32 %46
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!9 = !{i64 2151295537}
!10 = !{i64 2156916663}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"auto-init"}
