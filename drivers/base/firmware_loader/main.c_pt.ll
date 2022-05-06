; ModuleID = '/llk/IR/drivers/base/firmware_loader/main.c_pt.bc'
source_filename = "../drivers/base/firmware_loader/main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22request_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_request_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_firmware_request_nowarn:\09\09\09\09\09"
module asm "\09.asciz \09\22firmware_request_nowarn\22\09\09\09\09\09"
module asm "__kstrtabns_firmware_request_nowarn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_firmware_direct:\09\09\09\09\09"
module asm "\09.asciz \09\22request_firmware_direct\22\09\09\09\09\09"
module asm "__kstrtabns_request_firmware_direct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_firmware_request_platform:\09\09\09\09\09"
module asm "\09.asciz \09\22firmware_request_platform\22\09\09\09\09\09"
module asm "__kstrtabns_firmware_request_platform:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_firmware_request_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22firmware_request_cache\22\09\09\09\09\09"
module asm "__kstrtabns_firmware_request_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_firmware_into_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22request_firmware_into_buf\22\09\09\09\09\09"
module asm "__kstrtabns_request_firmware_into_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_partial_firmware_into_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22request_partial_firmware_into_buf\22\09\09\09\09\09"
module asm "__kstrtabns_request_partial_firmware_into_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_release_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22release_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_release_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_firmware_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22request_firmware_nowait\22\09\09\09\09\09"
module asm "__kstrtabns_request_firmware_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.firmware_cache = type { %struct.spinlock, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.notifier_block }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.async_domain = type { %struct.list_head, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.fw_priv = type { %struct.kref, %struct.list_head, ptr, %struct.fw_state, ptr, i32, i32, i32, i32, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fw_state = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fw_name_devm = type { i32, ptr }
%struct.fw_cache_entry = type { %struct.list_head, ptr }
%struct.firmware_work = type { %struct.work_struct, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__UNIQUE_ID_author248 = internal constant [43 x i8] c"firmware_class.author=Manuel Estrada Sainz\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [66 x i8] c"firmware_class.description=Multi purpose firmware loading support\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [64 x i8] c"firmware_class.file=drivers/base/firmware_loader/firmware_class\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [27 x i8] c"firmware_class.license=GPL\00", section ".modinfo", align 1
@fw_lock = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @fw_lock, i64 12), ptr getelementptr (i8, ptr @fw_lock, i64 12) } }, align 4
@__param_str_path = internal constant [20 x i8] c"firmware_class.path\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_path = internal constant %struct.kparam_string { i32 256, ptr @fw_path_para }, align 4
@__param_path = internal constant %struct.kernel_param { ptr @__param_str_path, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @__param_string_path } }, section "__param", align 4
@__UNIQUE_ID_pathtype252 = internal constant [36 x i8] c"firmware_class.parmtype=path:string\00", section ".modinfo", align 1
@__UNIQUE_ID_path253 = internal constant [104 x i8] c"firmware_class.parm=path:customized firmware image search path with a higher priority than default path\00", section ".modinfo", align 1
@__kstrtab_request_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_request_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_firmware to i32), ptr @__kstrtab_request_firmware, ptr @__kstrtabns_request_firmware }, section "___ksymtab+request_firmware", align 4
@__kstrtab_firmware_request_nowarn = external dso_local constant [0 x i8], align 1
@__kstrtabns_firmware_request_nowarn = external dso_local constant [0 x i8], align 1
@__ksymtab_firmware_request_nowarn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @firmware_request_nowarn to i32), ptr @__kstrtab_firmware_request_nowarn, ptr @__kstrtabns_firmware_request_nowarn }, section "___ksymtab_gpl+firmware_request_nowarn", align 4
@__kstrtab_request_firmware_direct = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_firmware_direct = external dso_local constant [0 x i8], align 1
@__ksymtab_request_firmware_direct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_firmware_direct to i32), ptr @__kstrtab_request_firmware_direct, ptr @__kstrtabns_request_firmware_direct }, section "___ksymtab_gpl+request_firmware_direct", align 4
@__kstrtab_firmware_request_platform = external dso_local constant [0 x i8], align 1
@__kstrtabns_firmware_request_platform = external dso_local constant [0 x i8], align 1
@__ksymtab_firmware_request_platform = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @firmware_request_platform to i32), ptr @__kstrtab_firmware_request_platform, ptr @__kstrtabns_firmware_request_platform }, section "___ksymtab_gpl+firmware_request_platform", align 4
@__kstrtab_firmware_request_cache = external dso_local constant [0 x i8], align 1
@__kstrtabns_firmware_request_cache = external dso_local constant [0 x i8], align 1
@__ksymtab_firmware_request_cache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @firmware_request_cache to i32), ptr @__kstrtab_firmware_request_cache, ptr @__kstrtabns_firmware_request_cache }, section "___ksymtab_gpl+firmware_request_cache", align 4
@__kstrtab_request_firmware_into_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_firmware_into_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_request_firmware_into_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_firmware_into_buf to i32), ptr @__kstrtab_request_firmware_into_buf, ptr @__kstrtabns_request_firmware_into_buf }, section "___ksymtab+request_firmware_into_buf", align 4
@__kstrtab_request_partial_firmware_into_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_partial_firmware_into_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_request_partial_firmware_into_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_partial_firmware_into_buf to i32), ptr @__kstrtab_request_partial_firmware_into_buf, ptr @__kstrtabns_request_partial_firmware_into_buf }, section "___ksymtab+request_partial_firmware_into_buf", align 4
@__kstrtab_release_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_release_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_release_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @release_firmware to i32), ptr @__kstrtab_release_firmware, ptr @__kstrtabns_release_firmware }, section "___ksymtab+release_firmware", align 4
@__kstrtab_request_firmware_nowait = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_firmware_nowait = external dso_local constant [0 x i8], align 1
@__ksymtab_request_firmware_nowait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_firmware_nowait to i32), ptr @__kstrtab_request_firmware_nowait, ptr @__kstrtabns_request_firmware_nowait }, section "___ksymtab+request_firmware_nowait", align 4
@fw_shutdown_nb = internal global %struct.notifier_block { ptr @fw_shutdown_notify, ptr null, i32 0 }, align 4
@__initcall__kmod_firmware_class__254_1513_firmware_class_init5 = internal global ptr @firmware_class_init, section ".initcall5.init", align 4
@__exitcall_firmware_class_exit = internal global ptr @firmware_class_exit, section ".exitcall.exit", align 4
@fw_path_para = internal global [256 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [21 x i8] c"fw_name_devm_release\00", align 1
@fw_cache = internal global %struct.firmware_cache zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Direct firmware load for %s failed with error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%s: kmalloc(struct firmware) failed\0A\00", align 1
@__func__._request_firmware_prepare = private unnamed_addr constant [26 x i8] c"_request_firmware_prepare\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@fw_path = internal unnamed_addr constant [5 x ptr] [ptr @fw_path_para, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"%s/%s%s\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"loading %s failed with error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"/lib/firmware/updates/5.17.0\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"/lib/firmware/updates\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"/lib/firmware/5.17.0\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"/lib/firmware\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@fw_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @fw_suspend, ptr null, ptr null }, align 4
@fw_cache_domain = internal global %struct.async_domain { %struct.list_head { ptr @fw_cache_domain, ptr @fw_cache_domain }, i8 0 }, align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__UNIQUE_ID_path253, ptr @__UNIQUE_ID_pathtype252, ptr @__exitcall_firmware_class_exit, ptr @__initcall__kmod_firmware_class__254_1513_firmware_class_init5, ptr @__ksymtab_firmware_request_cache, ptr @__ksymtab_firmware_request_nowarn, ptr @__ksymtab_firmware_request_platform, ptr @__ksymtab_release_firmware, ptr @__ksymtab_request_firmware, ptr @__ksymtab_request_firmware_direct, ptr @__ksymtab_request_firmware_into_buf, ptr @__ksymtab_request_firmware_nowait, ptr @__ksymtab_request_partial_firmware_into_buf, ptr @__param_path, ptr @firmware_class_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @assign_fw(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void @mutex_lock(ptr noundef nonnull @fw_lock) #15
  %5 = getelementptr inbounds %struct.fw_priv, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %88, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.fw_priv, ptr %4, i32 0, i32 3, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %88, label %12

12:                                               ; preds = %8
  %13 = icmp eq ptr %1, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.fw_priv, ptr %4, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 17
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.fw_priv, ptr %4, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @devres_find(ptr noundef nonnull %1, ptr noundef nonnull @fw_name_devm_release, ptr noundef nonnull @fw_devm_match, ptr noundef %21) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @fw_name_devm_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %88, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @kstrdup_const(ptr noundef %21, i32 noundef 3264) #15
  %29 = getelementptr inbounds %struct.fw_name_devm, ptr %25, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void @devres_free(ptr noundef nonnull %25) #15
  br label %88

32:                                               ; preds = %27
  store i32 ptrtoint (ptr @fw_cache to i32), ptr %25, align 4
  tail call void @devres_add(ptr noundef nonnull %1, ptr noundef nonnull %25) #15
  br label %33

33:                                               ; preds = %32, %19, %14, %12
  %34 = getelementptr inbounds %struct.fw_priv, ptr %4, i32 0, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.fw_priv, ptr %4, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.firmware_cache, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %83

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.fw_priv, ptr %4, i32 0, i32 9
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.firmware_cache, ptr %40, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %47) #15
  br label %48

48:                                               ; preds = %52, %44
  %49 = phi ptr [ getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 4), %44 ], [ %50, %52 ]
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 4)
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.fw_cache_entry, ptr %50, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @strcmp(ptr noundef %54, ptr noundef %46) #15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %80, label %48

57:                                               ; preds = %48
  %58 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %59 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 2848, i32 noundef 12) #16
  %60 = icmp eq ptr %59, null
  br i1 %60, label %80, label %61

61:                                               ; preds = %57
  %62 = tail call ptr @kstrdup_const(ptr noundef %46, i32 noundef 2592) #15
  %63 = getelementptr inbounds %struct.fw_cache_entry, ptr %59, i32 0, i32 1
  store ptr %62, ptr %63, align 8
  %64 = icmp eq ptr %62, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void @kfree(ptr noundef nonnull %59) #15
  br label %80

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.firmware_cache, ptr %40, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %59, ptr %69, align 4
  store ptr %68, ptr %59, align 8
  %70 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %67, ptr %70, align 4
  store volatile ptr %59, ptr %67, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #15, !srcloc !8
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #15, !srcloc !9
  %72 = extractvalue { i32, i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74, !prof !10

74:                                               ; preds = %66
  %75 = add i32 %72, 1
  %76 = or i32 %75, %72
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %80, label %78, !prof !11

78:                                               ; preds = %74, %66
  %79 = phi i32 [ 2, %66 ], [ 1, %74 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %79) #15
  br label %80

80:                                               ; preds = %78, %74, %65, %57, %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %81 = load i16, ptr %47, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  br label %83

83:                                               ; preds = %80, %38, %33
  store ptr %4, ptr %3, align 4
  %84 = load i32, ptr %5, align 4
  store i32 %84, ptr %0, align 4
  %85 = getelementptr inbounds %struct.fw_priv, ptr %4, i32 0, i32 4
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  store ptr %86, ptr %87, align 4
  br label %88

88:                                               ; preds = %83, %31, %24, %8, %2
  %89 = phi i32 [ 0, %83 ], [ -2, %8 ], [ -2, %2 ], [ -12, %31 ], [ -12, %24 ]
  tail call void @mutex_unlock(ptr noundef nonnull @fw_lock) #15
  ret i32 %89
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @request_firmware(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @__module_get(ptr noundef null) #15
  %4 = tail call fastcc i32 @_request_firmware(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  tail call void @module_put(ptr noundef null) #15
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_request_firmware(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = icmp eq ptr %0, null
  br i1 %10, label %210, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %1, null
  br i1 %12, label %207, label %13

13:                                               ; preds = %11
  %14 = load i8, ptr %1, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %207, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 12) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._request_firmware_prepare) #17
  br label %207

21:                                               ; preds = %16
  %22 = tail call zeroext i1 @firmware_request_builtin_buf(ptr noundef nonnull %18, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %4) #15
  br i1 %22, label %207, label %23

23:                                               ; preds = %21
  tail call void @_raw_spin_lock(ptr noundef nonnull @fw_cache) #15
  %24 = and i32 %6, 144
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %30, %23
  %27 = phi ptr [ %28, %30 ], [ getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 1), %23 ]
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 1)
  br i1 %29, label %48, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %28, i32 52
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @strcmp(ptr noundef %32, ptr noundef nonnull %1) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %26

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %28, i32 -4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %36) #15, !srcloc !8
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %36, ptr nonnull %36, i32 1, ptr nonnull elementtype(i32) %36) #15, !srcloc !9
  %40 = extractvalue { i32, i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42, !prof !10

42:                                               ; preds = %38
  %43 = add i32 %40, 1
  %44 = or i32 %43, %40
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %82, label %46, !prof !11

46:                                               ; preds = %42, %38
  %47 = phi i32 [ 2, %38 ], [ 1, %42 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %36, i32 noundef %47) #15
  br label %82

48:                                               ; preds = %35, %26, %23
  %49 = and i32 %6, 128
  %50 = icmp eq i32 %49, 0
  %51 = icmp ne ptr %3, null
  %52 = or i1 %51, %50
  %53 = xor i1 %52, true
  %54 = icmp ne i32 %5, 0
  %55 = and i1 %54, %50
  %56 = or i1 %55, %53
  br i1 %56, label %102, label %57

57:                                               ; preds = %48
  %58 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %59 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 2848, i32 noundef 60) #16
  %60 = icmp eq ptr %59, null
  br i1 %60, label %102, label %61

61:                                               ; preds = %57
  %62 = tail call ptr @kstrdup_const(ptr noundef nonnull %1, i32 noundef 2592) #15
  %63 = getelementptr inbounds %struct.fw_priv, ptr %59, i32 0, i32 9
  store ptr %62, ptr %63, align 8
  %64 = icmp eq ptr %62, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void @kfree(ptr noundef nonnull %59) #15
  br label %102

66:                                               ; preds = %61
  store volatile i32 1, ptr %59, align 8
  %67 = getelementptr inbounds %struct.fw_priv, ptr %59, i32 0, i32 2
  store ptr @fw_cache, ptr %67, align 4
  %68 = getelementptr inbounds %struct.fw_priv, ptr %59, i32 0, i32 4
  store ptr %3, ptr %68, align 4
  %69 = getelementptr inbounds %struct.fw_priv, ptr %59, i32 0, i32 6
  store i32 %4, ptr %69, align 4
  %70 = getelementptr inbounds %struct.fw_priv, ptr %59, i32 0, i32 7
  store i32 %5, ptr %70, align 8
  %71 = getelementptr inbounds %struct.fw_priv, ptr %59, i32 0, i32 8
  store i32 %6, ptr %71, align 4
  %72 = getelementptr inbounds %struct.fw_priv, ptr %59, i32 0, i32 3
  store i32 0, ptr %72, align 8
  %73 = getelementptr inbounds %struct.fw_priv, ptr %59, i32 0, i32 3, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %73, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #15
  %74 = getelementptr inbounds %struct.fw_priv, ptr %59, i32 0, i32 3, i32 1
  store i32 0, ptr %74, align 8
  %75 = getelementptr inbounds %struct.fw_priv, ptr %59, i32 0, i32 1
  store volatile ptr %75, ptr %75, align 4
  %76 = getelementptr inbounds %struct.fw_priv, ptr %59, i32 0, i32 1, i32 1
  store ptr %75, ptr %76, align 8
  %77 = and i32 %6, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %66
  %80 = load ptr, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 1), align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  store ptr %75, ptr %81, align 4
  store ptr %80, ptr %75, align 4
  store ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 1), ptr %76, align 8
  store volatile ptr %75, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 1), align 4
  br label %102

82:                                               ; preds = %46, %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %83 = load i16, ptr @fw_cache, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr @fw_cache, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %85 = getelementptr inbounds %struct.firmware, ptr %18, i32 0, i32 2
  store ptr %36, ptr %85, align 8
  %86 = getelementptr i8, ptr %28, i32 12
  %87 = tail call i32 @wait_for_completion_killable_timeout(ptr noundef %86, i32 noundef 2147483647) #15
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %185, label %89

89:                                               ; preds = %82
  %90 = getelementptr i8, ptr %28, i32 28
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %185, label %93

93:                                               ; preds = %89
  %94 = tail call i32 @llvm.smin.i32(i32 %87, i32 0) #15
  %95 = icmp sgt i32 %87, -1
  br i1 %95, label %96, label %182

96:                                               ; preds = %93
  store ptr %36, ptr %85, align 8
  %97 = getelementptr i8, ptr %28, i32 36
  %98 = load i32, ptr %97, align 4
  store i32 %98, ptr %18, align 8
  %99 = getelementptr i8, ptr %28, i32 32
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.firmware, ptr %18, i32 0, i32 1
  store ptr %100, ptr %101, align 4
  br label %207

102:                                              ; preds = %79, %66, %65, %57, %48
  %103 = phi ptr [ %59, %66 ], [ %59, %79 ], [ null, %65 ], [ null, %48 ], [ null, %57 ]
  %104 = phi i1 [ false, %66 ], [ false, %79 ], [ true, %65 ], [ true, %48 ], [ true, %57 ]
  %105 = phi i32 [ 0, %66 ], [ 0, %79 ], [ -12, %65 ], [ -12, %48 ], [ -12, %57 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %106 = load i16, ptr @fw_cache, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr @fw_cache, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %108 = getelementptr inbounds %struct.firmware, ptr %18, i32 0, i32 2
  store ptr %103, ptr %108, align 8
  br i1 %104, label %182, label %109

109:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store ptr null, ptr %8, align 4
  %110 = getelementptr inbounds %struct.fw_priv, ptr %103, i32 0, i32 4
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  store ptr %111, ptr %8, align 4
  %114 = getelementptr inbounds %struct.fw_priv, ptr %103, i32 0, i32 6
  %115 = load i32, ptr %114, align 4
  br label %116

116:                                              ; preds = %113, %109
  %117 = phi i32 [ %115, %113 ], [ 2147483647, %109 ]
  %118 = load ptr, ptr @names_cachep, align 4
  %119 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %118, i32 noundef 3264) #15
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  br label %175

122:                                              ; preds = %116
  tail call void @wait_for_initramfs() #15
  %123 = getelementptr inbounds %struct.fw_priv, ptr %103, i32 0, i32 9
  %124 = getelementptr inbounds %struct.fw_priv, ptr %103, i32 0, i32 5
  %125 = getelementptr inbounds %struct.fw_priv, ptr %103, i32 0, i32 8
  %126 = getelementptr inbounds %struct.fw_priv, ptr %103, i32 0, i32 7
  br label %127

127:                                              ; preds = %163, %122
  %128 = phi i32 [ -2, %122 ], [ %164, %163 ]
  %129 = phi i32 [ 0, %122 ], [ %165, %163 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4
  %130 = getelementptr [5 x ptr], ptr @fw_path, i32 0, i32 %129
  %131 = load ptr, ptr %130, align 4
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %163, label %134

134:                                              ; preds = %127
  %135 = load ptr, ptr %123, align 8
  %136 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %119, i32 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef %131, ptr noundef %135, ptr noundef nonnull @.str.1) #15
  %137 = icmp sgt i32 %136, 4095
  br i1 %137, label %161, label %138

138:                                              ; preds = %134
  store i32 0, ptr %124, align 8
  %139 = load i32, ptr %125, align 4
  %140 = and i32 %139, 128
  %141 = icmp ne i32 %140, 0
  %142 = load ptr, ptr %8, align 4
  %143 = icmp ne ptr %142, null
  %144 = select i1 %141, i1 %143, i1 false
  %145 = select i1 %144, ptr %9, ptr null
  %146 = load i32, ptr %126, align 8
  %147 = zext i32 %146 to i64
  %148 = call i32 @kernel_read_file_from_path_initns(ptr noundef nonnull %119, i64 noundef %147, ptr noundef nonnull %8, i32 noundef %117, ptr noundef %145, i32 noundef 1) #15
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %138
  %151 = icmp eq i32 %148, -2
  br i1 %151, label %163, label %152

152:                                              ; preds = %150
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull %119, i32 noundef %148) #17
  br label %163

153:                                              ; preds = %138
  %154 = load ptr, ptr %110, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load ptr, ptr %8, align 4
  store ptr %157, ptr %110, align 4
  br label %158

158:                                              ; preds = %156, %153
  store i32 %148, ptr %124, align 8
  %159 = getelementptr inbounds %struct.fw_priv, ptr %103, i32 0, i32 3, i32 1
  store volatile i32 2, ptr %159, align 8
  %160 = getelementptr inbounds %struct.fw_priv, ptr %103, i32 0, i32 3
  call void @complete_all(ptr noundef %160) #15
  br label %161

161:                                              ; preds = %158, %134
  %162 = phi i32 [ 0, %158 ], [ -36, %134 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br label %167

163:                                              ; preds = %152, %150, %127
  %164 = phi i32 [ %148, %152 ], [ -2, %150 ], [ %128, %127 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  %165 = add nuw nsw i32 %129, 1
  %166 = icmp eq i32 %165, 5
  br i1 %166, label %167, label %127

167:                                              ; preds = %163, %161
  %168 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %169 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %169, ptr noundef nonnull %119) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  %170 = icmp ne i32 %49, 0
  %171 = icmp ne i32 %168, -2
  %172 = or i1 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = icmp eq i32 %168, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %173, %167, %121
  %176 = phi i32 [ %168, %173 ], [ -2, %167 ], [ -12, %121 ]
  %177 = and i32 %6, 8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull %1, i32 noundef %176) #17
  br label %182

180:                                              ; preds = %173
  %181 = call i32 @assign_fw(ptr noundef nonnull %18, ptr noundef %2)
  br label %182

182:                                              ; preds = %180, %179, %175, %102, %93
  %183 = phi i32 [ %181, %180 ], [ %105, %102 ], [ %94, %93 ], [ %176, %179 ], [ %176, %175 ]
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %207

185:                                              ; preds = %182, %89, %82
  %186 = phi i32 [ %183, %182 ], [ -110, %82 ], [ -2, %89 ]
  %187 = getelementptr inbounds %struct.firmware, ptr %18, i32 0, i32 2
  %188 = load ptr, ptr %187, align 8
  %189 = icmp eq ptr %188, null
  br i1 %189, label %197, label %190

190:                                              ; preds = %185
  call void @mutex_lock(ptr noundef nonnull @fw_lock) #15
  %191 = getelementptr inbounds %struct.fw_priv, ptr %188, i32 0, i32 3, i32 1
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 3
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  store volatile i32 3, ptr %191, align 4
  %195 = getelementptr inbounds %struct.fw_priv, ptr %188, i32 0, i32 3
  call void @complete_all(ptr noundef %195) #15
  br label %196

196:                                              ; preds = %194, %190
  call void @mutex_unlock(ptr noundef nonnull @fw_lock) #15
  br label %197

197:                                              ; preds = %196, %185
  %198 = call zeroext i1 @firmware_is_builtin(ptr noundef nonnull %18) #15
  br i1 %198, label %206, label %199

199:                                              ; preds = %197
  %200 = load ptr, ptr %187, align 8
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.firmware, ptr %18, i32 0, i32 1
  %204 = load ptr, ptr %203, align 4
  call void @vfree(ptr noundef %204) #15
  br label %206

205:                                              ; preds = %199
  call fastcc void @free_fw_priv(ptr noundef nonnull %200) #15
  br label %206

206:                                              ; preds = %205, %202, %197
  call void @kfree(ptr noundef nonnull %18) #15
  br label %207

207:                                              ; preds = %206, %182, %96, %21, %20, %13, %11
  %208 = phi i32 [ %183, %182 ], [ %186, %206 ], [ -22, %11 ], [ -22, %13 ], [ 0, %21 ], [ 0, %96 ], [ -12, %20 ]
  %209 = phi ptr [ %18, %182 ], [ null, %206 ], [ null, %11 ], [ null, %13 ], [ %18, %21 ], [ %18, %96 ], [ null, %20 ]
  store ptr %209, ptr %0, align 4
  br label %210

210:                                              ; preds = %207, %7
  %211 = phi i32 [ %208, %207 ], [ -22, %7 ]
  ret i32 %211
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @firmware_request_nowarn(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @__module_get(ptr noundef null) #15
  %4 = tail call fastcc i32 @_request_firmware(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 9)
  tail call void @module_put(ptr noundef null) #15
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @request_firmware_direct(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @__module_get(ptr noundef null) #15
  %4 = tail call fastcc i32 @_request_firmware(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 41)
  tail call void @module_put(ptr noundef null) #15
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @firmware_request_platform(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @__module_get(ptr noundef null) #15
  %4 = tail call fastcc i32 @_request_firmware(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 65)
  tail call void @module_put(ptr noundef null) #15
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @firmware_request_cache(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @fw_lock) #15
  %3 = tail call ptr @devres_find(ptr noundef %0, ptr noundef nonnull @fw_name_devm_release, ptr noundef nonnull @fw_devm_match, ptr noundef %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @fw_name_devm_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @kstrdup_const(ptr noundef %1, i32 noundef 3264) #15
  %10 = getelementptr inbounds %struct.fw_name_devm, ptr %6, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @devres_free(ptr noundef nonnull %6) #15
  br label %14

13:                                               ; preds = %8
  store i32 ptrtoint (ptr @fw_cache to i32), ptr %6, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %6) #15
  br label %14

14:                                               ; preds = %13, %12, %5, %2
  %15 = phi i32 [ 0, %13 ], [ -12, %12 ], [ 0, %2 ], [ -12, %5 ]
  tail call void @mutex_unlock(ptr noundef nonnull @fw_lock) #15
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @request_firmware_into_buf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = tail call ptr @devres_find(ptr noundef %2, ptr noundef nonnull @fw_name_devm_release, ptr noundef nonnull @fw_devm_match, ptr noundef %1) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  tail call void @__module_get(ptr noundef null) #15
  %9 = tail call fastcc i32 @_request_firmware(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 17)
  tail call void @module_put(ptr noundef null) #15
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %9, %8 ], [ -95, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @request_partial_firmware_into_buf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = tail call ptr @devres_find(ptr noundef %2, ptr noundef nonnull @fw_name_devm_release, ptr noundef nonnull @fw_devm_match, ptr noundef %1) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  tail call void @__module_get(ptr noundef null) #15
  %10 = tail call fastcc i32 @_request_firmware(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 145)
  tail call void @module_put(ptr noundef null) #15
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %10, %9 ], [ -95, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @release_firmware(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = tail call zeroext i1 @firmware_is_builtin(ptr noundef nonnull %0) #15
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @vfree(ptr noundef %11) #15
  br label %13

12:                                               ; preds = %5
  tail call fastcc void @free_fw_priv(ptr noundef nonnull %7) #15
  br label %13

13:                                               ; preds = %12, %9, %3
  tail call void @kfree(ptr noundef nonnull %0) #15
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @firmware_is_builtin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @request_firmware_nowait(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = or i32 %4, 256
  %9 = and i32 %4, 17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !11

11:                                               ; preds = %7
  %12 = and i32 %4, 1
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 1, i32 2
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i32 [ 0, %7 ], [ %14, %11 ]
  %17 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %16, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef %8, i32 noundef 40) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %47, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.firmware_work, ptr %19, i32 0, i32 1
  store ptr %0, ptr %22, align 8
  %23 = tail call ptr @kstrdup_const(ptr noundef %2, i32 noundef %4) #15
  %24 = getelementptr inbounds %struct.firmware_work, ptr %19, i32 0, i32 2
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call void @kfree(ptr noundef nonnull %19) #15
  br label %47

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.firmware_work, ptr %19, i32 0, i32 3
  store ptr %3, ptr %28, align 8
  %29 = getelementptr inbounds %struct.firmware_work, ptr %19, i32 0, i32 4
  store ptr %5, ptr %29, align 4
  %30 = getelementptr inbounds %struct.firmware_work, ptr %19, i32 0, i32 5
  store ptr %6, ptr %30, align 8
  %31 = select i1 %1, i32 3, i32 6
  %32 = getelementptr inbounds %struct.firmware_work, ptr %19, i32 0, i32 6
  store i32 %31, ptr %32, align 4
  br i1 %1, label %37, label %33

33:                                               ; preds = %27
  %34 = tail call ptr @devres_find(ptr noundef %3, ptr noundef nonnull @fw_name_devm_release, ptr noundef nonnull @fw_devm_match, ptr noundef %2) #15
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @kfree_const(ptr noundef nonnull %23) #15
  tail call void @kfree(ptr noundef nonnull %19) #15
  br label %47

37:                                               ; preds = %33, %27
  %38 = tail call zeroext i1 @try_module_get(ptr noundef %0) #15
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void @kfree_const(ptr noundef nonnull %23) #15
  tail call void @kfree(ptr noundef nonnull %19) #15
  br label %47

40:                                               ; preds = %37
  %41 = tail call ptr @get_device(ptr noundef %3) #15
  store i32 -32, ptr %19, align 8
  %42 = getelementptr inbounds %struct.work_struct, ptr %19, i32 0, i32 1
  store volatile ptr %42, ptr %42, align 4
  %43 = getelementptr inbounds %struct.work_struct, ptr %19, i32 0, i32 1, i32 1
  store ptr %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.work_struct, ptr %19, i32 0, i32 2
  store ptr @request_firmware_work_func, ptr %44, align 4
  %45 = load ptr, ptr @system_wq, align 4
  %46 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %45, ptr noundef nonnull %19) #15
  br label %47

47:                                               ; preds = %40, %39, %36, %26, %15
  %48 = phi i32 [ 0, %40 ], [ -14, %39 ], [ -95, %36 ], [ -12, %26 ], [ -12, %15 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @request_firmware_work_func(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store ptr null, ptr %2, align 4, !annotation !16
  %3 = getelementptr inbounds %struct.firmware_work, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.firmware_work, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.firmware_work, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = call fastcc i32 @_request_firmware(ptr noundef nonnull %2, ptr noundef %4, ptr noundef %6, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef %8)
  %10 = getelementptr inbounds %struct.firmware_work, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.firmware_work, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  call void %11(ptr noundef %12, ptr noundef %14) #15
  %15 = load ptr, ptr %5, align 4
  call void @put_device(ptr noundef %15) #15
  %16 = getelementptr inbounds %struct.firmware_work, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  call void @module_put(ptr noundef %17) #15
  %18 = load ptr, ptr %3, align 4
  call void @kfree_const(ptr noundef %18) #15
  call void @kfree(ptr noundef %0) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @firmware_class_exit() #3 section ".exit.text" {
  tail call void @unregister_syscore_ops(ptr noundef nonnull @fw_syscore_ops) #15
  %1 = tail call i32 @unregister_pm_notifier(ptr noundef getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 6)) #15
  %2 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @fw_shutdown_nb) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @firmware_class_init() #3 section ".init.text" {
  store i32 0, ptr @fw_cache, align 4
  store volatile ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 1), ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 1), ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 1, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 2), align 4
  %1 = tail call fastcc i32 @register_fw_pm_ops() #18
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @fw_shutdown_nb) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  tail call void @unregister_syscore_ops(ptr noundef nonnull @fw_syscore_ops) #15
  %7 = tail call i32 @unregister_pm_notifier(ptr noundef getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 6)) #15
  br label %8

8:                                                ; preds = %6, %3, %0
  %9 = phi i32 [ %4, %6 ], [ %1, %0 ], [ 0, %3 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fw_name_devm_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.fw_name_devm, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree_const(ptr noundef %4) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @firmware_request_builtin_buf(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_initramfs() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read_file_from_path_initns(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @fw_devm_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #7 {
  %4 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %4, ptrtoint (ptr @fw_cache to i32)
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.fw_name_devm, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %2)
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %3
  %13 = phi i32 [ 0, %3 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_fw_priv(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fw_priv, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #15, !srcloc !8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #15, !srcloc !18
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %28, label %9, !prof !11

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #15
  br label %28

10:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.fw_priv, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.fw_priv, ptr %0, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %17 = load i16, ptr %11, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %19 = getelementptr inbounds %struct.fw_priv, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.fw_priv, ptr %0, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  tail call void @vfree(ptr noundef %24) #15
  br label %25

25:                                               ; preds = %22, %10
  %26 = getelementptr inbounds %struct.fw_priv, ptr %0, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  tail call void @kfree_const(ptr noundef %27) #15
  tail call void @kfree(ptr noundef %0) #15
  br label %31

28:                                               ; preds = %9, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %29 = load i16, ptr %3, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  br label %31

31:                                               ; preds = %28, %25
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_syscore_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fw_suspend() #9 {
  store i32 0, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 2), align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @fw_shutdown_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #10 {
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @register_fw_pm_ops() unnamed_addr #3 section ".init.text" {
  store i32 0, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 3), align 4
  store volatile ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 4), ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 4), align 4
  store ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 4), ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 4, i32 1), align 4
  store i32 -32, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 5), align 4
  store volatile ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 5, i32 0, i32 1), ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 5, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 5, i32 0, i32 1), ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 5, i32 0, i32 1, i32 1), align 4
  store ptr @device_uncache_fw_images_work, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 5, i32 0, i32 2), align 4
  tail call void @init_timer_key(ptr noundef getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 5, i32 1), ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #15
  store ptr @fw_pm_notify, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 6), align 4
  %1 = tail call i32 @register_pm_notifier(ptr noundef getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 6)) #15
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @register_syscore_ops(ptr noundef nonnull @fw_syscore_ops) #15
  br label %4

4:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @device_uncache_fw_images_work(ptr nocapture noundef readnone %0) #0 {
  %2 = alloca %struct.firmware, align 4
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 3)) #15
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 4), align 4
  %4 = icmp eq ptr %3, getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 4)
  br i1 %4, label %38, label %5

5:                                                ; preds = %34, %1
  %6 = phi ptr [ %36, %34 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %11 = load i16, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 3), align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 3), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %13 = getelementptr inbounds %struct.fw_cache_entry, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #15, !annotation !16
  %15 = call zeroext i1 @firmware_request_builtin(ptr noundef nonnull %2, ptr noundef %14) #15
  br i1 %15, label %34, label %16

16:                                               ; preds = %5
  call void @_raw_spin_lock(ptr noundef nonnull @fw_cache) #15
  br label %17

17:                                               ; preds = %21, %16
  %18 = phi ptr [ getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 1), %16 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 1)
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %19, i32 52
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @strcmp(ptr noundef %23, ptr noundef %14) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %17

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %19, i32 -4
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi ptr [ %27, %26 ], [ null, %17 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %30 = load i16, ptr @fw_cache, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr @fw_cache, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %32 = icmp eq ptr %29, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  call fastcc void @free_fw_priv(ptr noundef nonnull %29) #15
  br label %34

34:                                               ; preds = %33, %28, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #15
  %35 = load ptr, ptr %13, align 4
  call void @kfree_const(ptr noundef %35) #15
  call void @kfree(ptr noundef %6) #15
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 3)) #15
  %36 = load volatile ptr, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 4), align 4
  %37 = icmp eq ptr %36, getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 4)
  br i1 %37, label %38, label %5

38:                                               ; preds = %34, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %39 = load i16, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 3), align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 3), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fw_pm_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  switch i32 %1, label %15 [
    i32 1, label %5
    i32 3, label %5
    i32 5, label %5
    i32 4, label %12
    i32 2, label %12
    i32 6, label %12
  ]

5:                                                ; preds = %3, %3, %3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #15
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  %7 = tail call ptr @llvm.thread.pointer() #15
  store i32 0, ptr %4, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  store ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  store ptr %9, ptr %10, align 4
  %11 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 5)) #15
  call void @mutex_lock(ptr noundef nonnull @fw_lock) #15
  store i32 1, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 2), align 4
  call void @dpm_for_each_dev(ptr noundef null, ptr noundef nonnull @dev_cache_fw_image) #15
  call void @mutex_unlock(ptr noundef nonnull @fw_lock) #15
  call void @async_synchronize_full_domain(ptr noundef nonnull @fw_cache_domain) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #15
  br label %15

12:                                               ; preds = %3, %3, %3
  tail call void @mutex_lock(ptr noundef nonnull @fw_lock) #15
  store i32 0, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 2), align 4
  tail call void @mutex_unlock(ptr noundef nonnull @fw_lock) #15
  %13 = load ptr, ptr @system_power_efficient_wq, align 4
  %14 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %13, ptr noundef getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 5), i32 noundef 1000) #15
  br label %15

15:                                               ; preds = %12, %5, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @firmware_request_builtin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpm_for_each_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dev_cache_fw_image(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  call void @devres_for_each_res(ptr noundef %0, ptr noundef nonnull @fw_name_devm_release, ptr noundef nonnull @devm_name_match, ptr noundef nonnull @fw_cache, ptr noundef nonnull @dev_create_fw_entry, ptr noundef nonnull %3) #15
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, %3
  br i1 %6, label %37, label %7

7:                                                ; preds = %35, %2
  %8 = phi ptr [ %9, %35 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %9, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 3)) #15
  %13 = getelementptr inbounds %struct.fw_cache_entry, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %19, %7
  %16 = phi ptr [ getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 4), %7 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 4)
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.fw_cache_entry, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @strcmp(ptr noundef %21, ptr noundef %14) #15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %15

24:                                               ; preds = %15
  %25 = load ptr, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 4), align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %8, ptr %26, align 4
  store ptr %25, ptr %8, align 4
  store ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 4), ptr %10, align 4
  store volatile ptr %8, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 4), align 4
  br label %28

27:                                               ; preds = %19
  call void @kfree_const(ptr noundef %14) #15
  call void @kfree(ptr noundef %8) #15
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi ptr [ null, %27 ], [ %8, %24 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %30 = load i16, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 3), align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 3), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %32 = icmp eq ptr %29, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i64 @async_schedule_node_domain(ptr noundef nonnull @__async_dev_cache_fw_image, ptr noundef nonnull %29, i32 noundef -1, ptr noundef nonnull @fw_cache_domain) #15
  br label %35

35:                                               ; preds = %33, %28
  %36 = icmp eq ptr %9, %3
  br i1 %36, label %37, label %7

37:                                               ; preds = %35, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_for_each_res(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_name_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #13 {
  %4 = load i32, ptr %1, align 4
  %5 = ptrtoint ptr %2 to i32
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dev_create_fw_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.fw_name_devm, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2848, i32 noundef 12) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @kstrdup_const(ptr noundef %5, i32 noundef 2592) #15
  %11 = getelementptr inbounds %struct.fw_cache_entry, ptr %7, i32 0, i32 1
  store ptr %10, ptr %11, align 8
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @kfree(ptr noundef nonnull %7) #15
  br label %18

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %7, ptr %16, align 4
  store ptr %15, ptr %7, align 8
  %17 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %2, ptr %17, align 4
  store volatile ptr %7, ptr %2, align 4
  br label %18

18:                                               ; preds = %14, %13, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__async_dev_cache_fw_image(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.fw_cache_entry, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store ptr null, ptr %3, align 4, !annotation !16
  tail call void @__module_get(ptr noundef null) #15
  %6 = call fastcc i32 @_request_firmware(ptr noundef nonnull %3, ptr noundef %5, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 1) #15
  call void @module_put(ptr noundef null) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %18

10:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 3)) #15
  %11 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %15 = load i16, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 3), align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr getelementptr inbounds (%struct.firmware_cache, ptr @fw_cache, i32 0, i32 3), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %17 = load ptr, ptr %4, align 4
  call void @kfree_const(ptr noundef %17) #15
  call void @kfree(ptr noundef %0) #15
  br label %18

18:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @async_schedule_node_domain(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { cold }

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
!8 = !{i64 648251, i64 2148149817, i64 2148149843, i64 2148149890, i64 2148149912, i64 2148149940, i64 2148149960}
!9 = !{i64 2148214537, i64 2148214569, i64 2148214598, i64 2148214632, i64 2148214663, i64 2148214686}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149285192}
!13 = !{i64 2149281016}
!14 = !{i64 2149281091, i64 2149281118, i64 2149281165, i64 2149281187, i64 2149281215, i64 2149281235}
!15 = !{i64 2149308195}
!16 = !{!"auto-init"}
!17 = !{i64 2148314759}
!18 = !{i64 2148216894, i64 2148216926, i64 2148216955, i64 2148216989, i64 2148217020, i64 2148217043}
!19 = !{i64 2149359107}
