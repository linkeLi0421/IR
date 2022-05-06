; ModuleID = '/llk/IR/net/dns_resolver/dns_key.c_pt.bc'
source_filename = "../net/dns_resolver/dns_key.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.58 }
%union.anon.58 = type { ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dns_payload_header = type { i8, i8, i8 }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.23, %struct.rw_semaphore, ptr, ptr, %union.anon.24, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.25, %union.anon.30, ptr }
%union.anon.23 = type { %struct.rb_node }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.24 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.25 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.26, ptr, ptr, ptr }
%union.anon.26 = type { i32 }
%union.anon.30 = type { %union.key_payload }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.32 = type { %struct.callback_head }

@__UNIQUE_ID_description200 = internal constant [38 x i8] c"dns_resolver.description=DNS Resolver\00", section ".modinfo", align 1
@__UNIQUE_ID_author201 = internal constant [29 x i8] c"dns_resolver.author=Wang Lei\00", section ".modinfo", align 1
@__UNIQUE_ID_file202 = internal constant [48 x i8] c"dns_resolver.file=net/dns_resolver/dns_resolver\00", section ".modinfo", align 1
@__UNIQUE_ID_license203 = internal constant [25 x i8] c"dns_resolver.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [19 x i8] c"dns_resolver.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@dns_resolver_debug = dso_local global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.58 { ptr @dns_resolver_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype204 = internal constant [33 x i8] c"dns_resolver.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug205 = internal constant [52 x i8] c"dns_resolver.parm=debug:DNS Resolver debugging mask\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"dns_resolver\00", align 1
@key_type_dns_resolver = dso_local global %struct.key_type { ptr @.str, i32 0, i32 1, ptr null, ptr @dns_resolver_preparse, ptr @dns_resolver_free_preparse, ptr @generic_key_instantiate, ptr null, ptr @dns_resolver_match_preparse, ptr null, ptr @user_revoke, ptr @user_destroy, ptr @dns_resolver_describe, ptr @dns_resolver_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@dns_resolver_cache = dso_local local_unnamed_addr global ptr null, align 4
@__initcall__kmod_dns_resolver__206_382_init_dns_resolver6 = internal global ptr @init_dns_resolver, section ".initcall6.init", align 4
@__exitcall_exit_dns_resolver = internal global ptr @exit_dns_resolver, section ".exitcall.exit", align 4
@__UNIQUE_ID_file207 = internal constant [48 x i8] c"dns_resolver.file=net/dns_resolver/dns_resolver\00", section ".modinfo", align 1
@__UNIQUE_ID_license208 = internal constant [25 x i8] c"dns_resolver.license=GPL\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\017[%-6.6s] ==> %s([%u,%u],%u)\0A\00", align 1
@__func__.dns_resolver_preparse = private unnamed_addr constant [22 x i8] c"dns_resolver_preparse\00", align 1
@dns_resolver_preparse._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"\014dns_resolver: Unsupported content type (%u)\0A\00", align 1
@dns_resolver_preparse._rs.3 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"\014dns_resolver: Unsupported server list version (%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"\017[%-6.6s] ==> %s('%*.*s',%u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"\017[%-6.6s] no options\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"\017[%-6.6s] options: '%s'\0A\00", align 1
@dns_resolver_preparse._rs.8 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"\014Invalid option length (%d) for dns_resolver key\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"\017[%-6.6s] option '%*.*s' val '%s'\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"dnserror\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"\017[%-6.6s] dns error number option\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"\017[%-6.6s] dns error no. = %lu\0A\00", align 1
@dns_resolver_preparse._rs.14 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.15 = private unnamed_addr constant [57 x i8] c"\014Option '%*.*s' to dns_resolver key: bad/missing value\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"\017[%-6.6s] <== %s() = 0 [h_error %ld]\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"\017[%-6.6s] store result\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"\017[%-6.6s] <== %s() = -ENOMEM\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"\017[%-6.6s] <== %s() = 0\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"\017[%-6.6s] ==> %s(%s,%s)\0A\00", align 1
@__func__.dns_resolver_cmp = private unnamed_addr constant [17 x i8] c"dns_resolver_cmp\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"\017[%-6.6s] <== %s() = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c": %d\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c": %u\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c".dns_resolver\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"\017[%-6.6s] DNS resolver keyring: %d\0A\0A\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author201, ptr @__UNIQUE_ID_debug205, ptr @__UNIQUE_ID_debugtype204, ptr @__UNIQUE_ID_description200, ptr @__UNIQUE_ID_file202, ptr @__UNIQUE_ID_file207, ptr @__UNIQUE_ID_license203, ptr @__UNIQUE_ID_license208, ptr @__exitcall_exit_dns_resolver, ptr @__initcall__kmod_dns_resolver__206_382_init_dns_resolver6, ptr @__param_debug, ptr @exit_dns_resolver], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dns_resolver_preparse(ptr nocapture noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = icmp sgt i32 %5, 1
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %205

11:                                               ; preds = %1
  %12 = load i8, ptr %7, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %11
  %15 = icmp ult i32 %5, 4
  br i1 %15, label %205, label %16

16:                                               ; preds = %14
  %17 = load i32, ptr @dns_resolver_debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19, !prof !9

19:                                               ; preds = %16
  %20 = tail call ptr @llvm.thread.pointer() #13
  %21 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 85
  %22 = getelementptr inbounds %struct.dns_payload_header, ptr %7, i32 0, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.dns_payload_header, ptr %7, i32 0, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %21, ptr noundef nonnull @__func__.dns_resolver_preparse, i32 noundef %24, i32 noundef %27, i32 noundef %5) #14
  br label %29

29:                                               ; preds = %19, %16
  %30 = getelementptr inbounds %struct.dns_payload_header, ptr %7, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @___ratelimit(ptr noundef nonnull @dns_resolver_preparse._rs, ptr noundef nonnull @__func__.dns_resolver_preparse) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %205, label %36

36:                                               ; preds = %33
  %37 = load i8, ptr %30, align 1
  %38 = zext i8 %37 to i32
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %38) #14
  br label %205

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.dns_payload_header, ptr %7, i32 0, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = icmp eq i8 %42, 1
  br i1 %43, label %173, label %44

44:                                               ; preds = %40
  %45 = tail call i32 @___ratelimit(ptr noundef nonnull @dns_resolver_preparse._rs.3, ptr noundef nonnull @__func__.dns_resolver_preparse) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %205, label %47

47:                                               ; preds = %44
  %48 = load i8, ptr %41, align 1
  %49 = zext i8 %48 to i32
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %49) #14
  br label %205

51:                                               ; preds = %11
  %52 = load i32, ptr @dns_resolver_debug, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54, !prof !9

54:                                               ; preds = %51
  %55 = tail call ptr @llvm.thread.pointer() #13
  %56 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 85
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %56, ptr noundef nonnull @__func__.dns_resolver_preparse, i32 noundef %5, i32 noundef %5, ptr noundef nonnull %7, i32 noundef %5) #14
  br label %58

58:                                               ; preds = %54, %51
  %59 = add nsw i32 %5, -1
  %60 = getelementptr i8, ptr %7, i32 %59
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %205

63:                                               ; preds = %58
  %64 = tail call ptr @memchr(ptr noundef nonnull %7, i32 noundef 35, i32 noundef %59)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, ptr @dns_resolver_debug, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %160, label %69, !prof !9

69:                                               ; preds = %66
  %70 = tail call ptr @llvm.thread.pointer() #13
  %71 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 85
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %71) #14
  br label %160

73:                                               ; preds = %63
  %74 = ptrtoint ptr %64 to i32
  %75 = ptrtoint ptr %7 to i32
  %76 = sub i32 %74, %75
  %77 = getelementptr i8, ptr %64, i32 1
  %78 = load i32, ptr @dns_resolver_debug, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80, !prof !9

80:                                               ; preds = %73
  %81 = tail call ptr @llvm.thread.pointer() #13
  %82 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 85
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %82, ptr noundef %77) #14
  br label %84

84:                                               ; preds = %80, %73
  %85 = ptrtoint ptr %60 to i32
  %86 = getelementptr %struct.key_preparsed_payload, ptr %0, i32 0, i32 2, i32 0, i32 1
  br label %87

87:                                               ; preds = %148, %84
  %88 = phi ptr [ %77, %84 ], [ %152, %148 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !8
  %89 = ptrtoint ptr %88 to i32
  %90 = sub i32 %85, %89
  %91 = call ptr @memchr(ptr noundef %88, i32 noundef 35, i32 noundef %90)
  %92 = icmp eq ptr %91, null
  %93 = select i1 %92, ptr %60, ptr %91
  %94 = ptrtoint ptr %93 to i32
  %95 = sub i32 %94, %89
  %96 = add i32 %95, -129
  %97 = icmp ult i32 %96, -128
  br i1 %97, label %98, label %103

98:                                               ; preds = %87
  %99 = call i32 @___ratelimit(ptr noundef nonnull @dns_resolver_preparse._rs.8, ptr noundef nonnull @__func__.dns_resolver_preparse) #13
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %159, label %101

101:                                              ; preds = %98
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %95) #14
  br label %159

103:                                              ; preds = %87
  %104 = call ptr @memchr(ptr noundef %88, i32 noundef 61, i32 noundef %95)
  %105 = icmp eq ptr %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = ptrtoint ptr %104 to i32
  %108 = sub i32 %107, %89
  %109 = getelementptr i8, ptr %104, i32 1
  %110 = ptrtoint ptr %109 to i32
  %111 = sub i32 %94, %110
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %3, ptr align 1 %109, i32 %111, i1 false)
  %112 = getelementptr [128 x i8], ptr %3, i32 0, i32 %111
  store i8 0, ptr %112, align 1
  br label %113

113:                                              ; preds = %106, %103
  %114 = phi i32 [ %108, %106 ], [ %95, %103 ]
  %115 = load i32, ptr @dns_resolver_debug, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %121, label %117, !prof !9

117:                                              ; preds = %113
  %118 = tail call ptr @llvm.thread.pointer() #13
  %119 = getelementptr inbounds %struct.task_struct, ptr %118, i32 0, i32 85
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %119, i32 noundef %114, i32 noundef %114, ptr noundef %88, ptr noundef nonnull %3) #14
  br label %121

121:                                              ; preds = %117, %113
  %122 = icmp eq i32 %114, 8
  br i1 %122, label %123, label %154

123:                                              ; preds = %121
  %124 = call i32 @bcmp(ptr noundef dereferenceable(8) %88, ptr noundef nonnull dereferenceable(8) @.str.11, i32 8)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %154

126:                                              ; preds = %123
  %127 = load i32, ptr @dns_resolver_debug, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %133, label %129, !prof !9

129:                                              ; preds = %126
  %130 = tail call ptr @llvm.thread.pointer() #13
  %131 = getelementptr inbounds %struct.task_struct, ptr %130, i32 0, i32 85
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %131) #14
  br label %133

133:                                              ; preds = %129, %126
  %134 = call i32 @_kstrtoul(ptr noundef nonnull %3, i32 noundef 10, ptr noundef nonnull %2) #13
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %154, label %136

136:                                              ; preds = %133
  %137 = load i32, ptr %2, align 4
  %138 = add i32 %137, -512
  %139 = icmp ult i32 %138, -511
  br i1 %139, label %154, label %140

140:                                              ; preds = %136
  %141 = load i32, ptr @dns_resolver_debug, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %148, label %143, !prof !9

143:                                              ; preds = %140
  %144 = tail call ptr @llvm.thread.pointer() #13
  %145 = getelementptr inbounds %struct.task_struct, ptr %144, i32 0, i32 85
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %145, i32 noundef %137) #14
  %147 = load i32, ptr %2, align 4
  br label %148

148:                                              ; preds = %143, %140
  %149 = phi i32 [ %147, %143 ], [ %137, %140 ]
  %150 = sub i32 0, %149
  %151 = inttoptr i32 %150 to ptr
  store ptr %151, ptr %86, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #13
  %152 = getelementptr i8, ptr %93, i32 1
  %153 = icmp ult ptr %152, %60
  br i1 %153, label %87, label %160

154:                                              ; preds = %136, %133, %123, %121
  %155 = call i32 @___ratelimit(ptr noundef nonnull @dns_resolver_preparse._rs.14, ptr noundef nonnull @__func__.dns_resolver_preparse) #13
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %154
  %158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %114, i32 noundef %114, ptr noundef %88) #14
  br label %159

159:                                              ; preds = %157, %154, %101, %98
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #13
  br label %205

160:                                              ; preds = %148, %69, %66
  %161 = phi i32 [ %59, %69 ], [ %59, %66 ], [ %76, %148 ]
  %162 = getelementptr %struct.key_preparsed_payload, ptr %0, i32 0, i32 2, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %173, label %165

165:                                              ; preds = %160
  %166 = load i32, ptr @dns_resolver_debug, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %205, label %168, !prof !9

168:                                              ; preds = %165
  %169 = tail call ptr @llvm.thread.pointer() #13
  %170 = getelementptr inbounds %struct.task_struct, ptr %169, i32 0, i32 85
  %171 = ptrtoint ptr %163 to i32
  %172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %170, ptr noundef nonnull @__func__.dns_resolver_preparse, i32 noundef %171) #14
  br label %205

173:                                              ; preds = %160, %40
  %174 = phi i32 [ %161, %160 ], [ %5, %40 ]
  %175 = load i32, ptr @dns_resolver_debug, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %181, label %177, !prof !9

177:                                              ; preds = %173
  %178 = tail call ptr @llvm.thread.pointer() #13
  %179 = getelementptr inbounds %struct.task_struct, ptr %178, i32 0, i32 85
  %180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %179) #14
  br label %181

181:                                              ; preds = %177, %173
  %182 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 5
  store i32 %174, ptr %182, align 8
  %183 = add i32 %174, 17
  %184 = call noalias align 64 ptr @__kmalloc(i32 noundef %183, i32 noundef 3264) #15
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = load i32, ptr @dns_resolver_debug, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %205, label %189, !prof !9

189:                                              ; preds = %186
  %190 = tail call ptr @llvm.thread.pointer() #13
  %191 = getelementptr inbounds %struct.task_struct, ptr %190, i32 0, i32 85
  %192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %191, ptr noundef nonnull @__func__.dns_resolver_preparse) #14
  br label %205

193:                                              ; preds = %181
  %194 = trunc i32 %174 to i16
  %195 = getelementptr inbounds %struct.user_key_payload, ptr %184, i32 0, i32 1
  store i16 %194, ptr %195, align 8
  %196 = getelementptr inbounds %struct.user_key_payload, ptr %184, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 16 %196, ptr nonnull align 1 %7, i32 %174, i1 false)
  %197 = getelementptr %struct.user_key_payload, ptr %184, i32 0, i32 3, i32 %174
  store i8 0, ptr %197, align 1
  %198 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 2
  store ptr %184, ptr %198, align 8
  %199 = load i32, ptr @dns_resolver_debug, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %205, label %201, !prof !9

201:                                              ; preds = %193
  %202 = tail call ptr @llvm.thread.pointer() #13
  %203 = getelementptr inbounds %struct.task_struct, ptr %202, i32 0, i32 85
  %204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %203, ptr noundef nonnull @__func__.dns_resolver_preparse) #14
  br label %205

205:                                              ; preds = %201, %193, %189, %186, %168, %165, %159, %58, %47, %44, %36, %33, %14, %1
  %206 = phi i32 [ -22, %1 ], [ -22, %14 ], [ -22, %36 ], [ -22, %33 ], [ -22, %47 ], [ -22, %44 ], [ -22, %58 ], [ 0, %168 ], [ 0, %165 ], [ -12, %189 ], [ -12, %186 ], [ 0, %201 ], [ 0, %193 ], [ -22, %159 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dns_resolver_free_preparse(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_key_instantiate(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dns_resolver_match_preparse(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.key_match_data, ptr %0, i32 0, i32 3
  store i32 1, ptr %2, align 4
  store ptr @dns_resolver_cmp, ptr %0, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_revoke(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_destroy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dns_resolver_describe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  tail call void @seq_puts(ptr noundef %1, ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 13
  %6 = load volatile i16, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = ptrtoint ptr %10 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %13) #13
  br label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 12
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %17) #13
  br label %18

18:                                               ; preds = %14, %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dns_resolver_read(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @user_read(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ %6, %3 ]
  ret i32 %11
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_dns_resolver() #3 section ".exit.text" {
  %1 = load ptr, ptr @dns_resolver_cache, align 4
  %2 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  tail call void @key_revoke(ptr noundef %3) #13
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_dns_resolver) #13
  %4 = load ptr, ptr @dns_resolver_cache, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #13, !srcloc !12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #13, !srcloc !13
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @__put_cred(ptr noundef nonnull %4) #13
  br label %11

11:                                               ; preds = %10, %6, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_revoke(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_key_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_dns_resolver() #3 section ".init.text" {
  %1 = tail call ptr @prepare_kernel_cred(ptr noundef null) #13
  %2 = icmp eq ptr %1, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.24, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, ptr noundef nonnull %1, i32 noundef 520290304, i32 noundef 2, ptr noundef null, ptr noundef null) #13
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  br label %28

8:                                                ; preds = %3
  %9 = tail call i32 @register_key_type(ptr noundef nonnull @key_type_dns_resolver) #13
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.key, ptr %4, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 4, ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 18
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 15
  store i8 1, ptr %14, align 4
  store ptr %1, ptr @dns_resolver_cache, align 4
  %15 = load i32, ptr @dns_resolver_debug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %34, label %17, !prof !9

17:                                               ; preds = %11
  %18 = tail call ptr @llvm.thread.pointer() #13
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 85
  %20 = icmp eq ptr %4, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.key, ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %23, %21 ], [ 0, %17 ]
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %19, i32 noundef %25) #14
  br label %34

27:                                               ; preds = %8
  tail call void @key_put(ptr noundef %4) #13
  br label %28

28:                                               ; preds = %27, %6
  %29 = phi i32 [ %7, %6 ], [ %9, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1) #13, !srcloc !12
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #13, !srcloc !13
  %31 = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  tail call void @__put_cred(ptr noundef nonnull %1) #13
  br label %34

34:                                               ; preds = %33, %28, %24, %11, %0
  %35 = phi i32 [ -12, %0 ], [ 0, %24 ], [ 0, %11 ], [ %29, %28 ], [ %29, %33 ]
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @dns_resolver_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.key_match_data, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @dns_resolver_debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !9

9:                                                ; preds = %2
  %10 = tail call ptr @llvm.thread.pointer() #13
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 85
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %11, ptr noundef nonnull @__func__.dns_resolver_cmp, ptr noundef %4, ptr noundef %6) #14
  br label %13

13:                                               ; preds = %9, %2
  %14 = icmp ne ptr %4, null
  %15 = icmp ne ptr %6, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = tail call i32 @strcasecmp(ptr noundef nonnull %4, ptr noundef nonnull %6)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @strlen(ptr noundef nonnull %4)
  %22 = tail call i32 @strlen(ptr noundef nonnull %6)
  %23 = icmp slt i32 %21, 1
  %24 = icmp slt i32 %22, 1
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %42, label %26

26:                                               ; preds = %20
  %27 = add nsw i32 %21, -1
  %28 = getelementptr i8, ptr %4, i32 %27
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 46
  %31 = select i1 %30, i32 %27, i32 %21
  %32 = add nsw i32 %22, -1
  %33 = getelementptr i8, ptr %6, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 46
  %36 = select i1 %35, i32 %32, i32 %22
  %37 = icmp eq i32 %31, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = tail call i32 @strncasecmp(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef %31)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %17
  br label %42

42:                                               ; preds = %41, %38, %26, %20, %13
  %43 = phi i1 [ true, %41 ], [ false, %13 ], [ false, %20 ], [ false, %38 ], [ false, %26 ]
  %44 = phi i32 [ 1, %41 ], [ 0, %13 ], [ 0, %20 ], [ 0, %38 ], [ 0, %26 ]
  %45 = load i32, ptr @dns_resolver_debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47, !prof !9

47:                                               ; preds = %42
  %48 = tail call ptr @llvm.thread.pointer() #13
  %49 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 85
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %49, ptr noundef nonnull @__func__.dns_resolver_cmp, i32 noundef %44) #14
  br label %51

51:                                               ; preds = %47, %42
  ret i1 %43
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_kernel_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_alloc(ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_key_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2151431448}
!11 = !{i64 2148151820}
!12 = !{i64 549755, i64 2148039726, i64 2148039752, i64 2148039799, i64 2148039821, i64 2148039849, i64 2148039869}
!13 = !{i64 2148054182, i64 2148054214, i64 2148054243, i64 2148054277, i64 2148054308, i64 2148054331}
!14 = !{i64 2148152023}
