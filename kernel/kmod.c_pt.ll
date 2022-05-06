; ModuleID = '/llk/IR/kernel/kmod.c_pt.bc'
source_filename = "../kernel/kmod.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___request_module:\09\09\09\09\09"
module asm "\09.asciz \09\22__request_module\22\09\09\09\09\09"
module asm "__kstrtabns___request_module:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.__va_list = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.subprocess_info = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@modprobe_path = dso_local global [256 x i8] c"/sbin/modprobe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@__request_module.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [14 x i8] c"kernel/kmod.c\00", align 1
@kmod_concurrent_max = internal global %struct.atomic_t { i32 50 }, align 4
@__request_module._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.__request_module = private unnamed_addr constant [17 x i8] c"__request_module\00", align 1
@.str.1 = private unnamed_addr constant [104 x i8] c"\014request_module: kmod_concurrent_max (%u) close to 0 (max_modprobes: %u), for module %s, throttling...\00", align 1
@kmod_wq = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @kmod_wq, i64 4), ptr getelementptr (i8, ptr @kmod_wq, i64 4) } }, align 4
@__request_module._rs.2 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [106 x i8] c"\014request_module: modprobe %s cannot be processed, kmod busy with %d threads for more than %d seconds now\00", align 1
@__request_module._rs.4 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"\014request_module: sigkill sent for modprobe %s, giving up\00", align 1
@__kstrtab___request_module = external dso_local constant [0 x i8], align 1
@__kstrtabns___request_module = external dso_local constant [0 x i8], align 1
@__ksymtab___request_module = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__request_module to i32), ptr @__kstrtab___request_module, ptr @__kstrtabns___request_module }, section "___ksymtab+__request_module", align 4
@__tracepoint_module_request = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@call_modprobe.envp = internal global [4 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr null], align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"TERM=linux\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"PATH=/sbin:/usr/sbin:/bin:/usr/bin\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab___request_module], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__request_module(i1 noundef zeroext %0, ptr nocapture noundef readonly %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  %4 = alloca [60 x i8], align 1
  %5 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %4, i8 0, i32 60, i1 false), !annotation !8
  br i1 %0, label %6, label %12

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @current_is_async() #9
  %8 = load i1, ptr @__request_module.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %6
  store i1 true, ptr @__request_module.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef null) #9
  br label %12

12:                                               ; preds = %11, %6, %2
  %13 = load i8, ptr @modprobe_path, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %138, label %15

15:                                               ; preds = %12
  call void @llvm.va_start(ptr nonnull %3)
  %16 = load i32, ptr %3, align 4
  %17 = insertvalue [1 x i32] poison, i32 %16, 0
  %18 = call i32 @vsnprintf(ptr noundef nonnull %4, i32 noundef 60, ptr noundef %1, [1 x i32] %17)
  call void @llvm.va_end(ptr nonnull %3)
  %19 = icmp ugt i32 %18, 59
  br i1 %19, label %138, label %20

20:                                               ; preds = %15
  %21 = load volatile i32, ptr @kmod_concurrent_max, align 4
  br label %22

22:                                               ; preds = %31, %20
  %23 = phi i32 [ %21, %20 ], [ %32, %31 ]
  %24 = add i32 %23, -1
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %34, label %26, !prof !9

26:                                               ; preds = %22
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @kmod_concurrent_max) #9, !srcloc !11
  br label %27

27:                                               ; preds = %27, %26
  %28 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @kmod_concurrent_max, ptr nonnull @kmod_concurrent_max, i32 %23, i32 %24, ptr nonnull elementtype(i32) @kmod_concurrent_max) #9, !srcloc !12
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %27

31:                                               ; preds = %27
  %32 = extractvalue { i32, i32 } %28, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %33 = icmp eq i32 %32, %23
  br i1 %33, label %98, label %22, !prof !14

34:                                               ; preds = %22
  %35 = call i32 @___ratelimit(ptr noundef nonnull @__request_module._rs, ptr noundef nonnull @__func__.__request_module) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load volatile i32, ptr @kmod_concurrent_max, align 4
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %38, i32 noundef 50, ptr noundef nonnull %4) #10
  br label %40

40:                                               ; preds = %37, %34
  %41 = load volatile i32, ptr @kmod_concurrent_max, align 4
  br label %42

42:                                               ; preds = %51, %40
  %43 = phi i32 [ %41, %40 ], [ %52, %51 ]
  %44 = add i32 %43, -1
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %56, label %46, !prof !9

46:                                               ; preds = %42
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @kmod_concurrent_max) #9, !srcloc !11
  br label %47

47:                                               ; preds = %47, %46
  %48 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @kmod_concurrent_max, ptr nonnull @kmod_concurrent_max, i32 %43, i32 %44, ptr nonnull elementtype(i32) @kmod_concurrent_max) #9, !srcloc !12
  %49 = extractvalue { i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %47

51:                                               ; preds = %47
  %52 = extractvalue { i32, i32 } %48, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %53 = icmp eq i32 %52, %43
  br i1 %53, label %54, label %42, !prof !14

54:                                               ; preds = %51
  %55 = icmp sgt i32 %44, -1
  br i1 %55, label %98, label %56

56:                                               ; preds = %54, %42
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #9
  br label %57

57:                                               ; preds = %83, %56
  %58 = phi i32 [ 500, %56 ], [ %84, %83 ]
  %59 = call i32 @prepare_to_wait_event(ptr noundef nonnull @kmod_wq, ptr noundef nonnull %5, i32 noundef 258) #9
  %60 = load volatile i32, ptr @kmod_concurrent_max, align 4
  br label %61

61:                                               ; preds = %70, %57
  %62 = phi i32 [ %60, %57 ], [ %71, %70 ]
  %63 = add i32 %62, -1
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %73, label %65, !prof !9

65:                                               ; preds = %61
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @kmod_concurrent_max) #9, !srcloc !11
  br label %66

66:                                               ; preds = %66, %65
  %67 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @kmod_concurrent_max, ptr nonnull @kmod_concurrent_max, i32 %62, i32 %63, ptr nonnull elementtype(i32) @kmod_concurrent_max) #9, !srcloc !12
  %68 = extractvalue { i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %66

70:                                               ; preds = %66
  %71 = extractvalue { i32, i32 } %67, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %72 = icmp eq i32 %71, %62
  br i1 %72, label %73, label %61, !prof !14

73:                                               ; preds = %70, %61
  %74 = icmp sgt i32 %63, -1
  %75 = xor i1 %74, true
  %76 = icmp ne i32 %58, 0
  %77 = select i1 %75, i1 true, i1 %76
  %78 = select i1 %77, i32 %58, i32 1
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %74, i1 true, i1 %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %73
  %82 = icmp eq i32 %59, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = call i32 @schedule_timeout(i32 noundef %78) #9
  br label %57

85:                                               ; preds = %73
  call void @finish_wait(ptr noundef nonnull @kmod_wq, ptr noundef nonnull %5) #9
  br label %86

86:                                               ; preds = %85, %81
  %87 = phi i32 [ %78, %85 ], [ %59, %81 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  switch i32 %87, label %98 [
    i32 0, label %88
    i32 -512, label %93
  ]

88:                                               ; preds = %86
  %89 = call i32 @___ratelimit(ptr noundef nonnull @__request_module._rs.2, ptr noundef nonnull @__func__.__request_module) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %138, label %91

91:                                               ; preds = %88
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %4, i32 noundef 50, i32 noundef 5) #10
  br label %138

93:                                               ; preds = %86
  %94 = call i32 @___ratelimit(ptr noundef nonnull @__request_module._rs.4, ptr noundef nonnull @__func__.__request_module) #9
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %138, label %96

96:                                               ; preds = %93
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #10
  br label %138

98:                                               ; preds = %86, %54, %31
  %99 = call ptr @llvm.returnaddress(i32 0)
  %100 = ptrtoint ptr %99 to i32
  %101 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_request, i32 0, i32 1), align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %98
  %104 = tail call ptr @llvm.thread.pointer() #9
  %105 = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 2
  %106 = load i32, ptr %105, align 8
  %107 = lshr i32 %106, 5
  %108 = getelementptr i32, ptr @__cpu_online_mask, i32 %107
  %109 = load volatile i32, ptr %108, align 4
  %110 = and i32 %106, 31
  %111 = shl nuw i32 1, %110
  %112 = and i32 %111, %109
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %103
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %115 = call i32 @__traceiter_module_request(ptr noundef null, ptr noundef nonnull %4, i1 noundef zeroext %0, i32 noundef %100) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %116

116:                                              ; preds = %114, %103, %98
  %117 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %118 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %117, i32 noundef 3264, i32 noundef 20) #11
  %119 = icmp eq ptr %118, null
  br i1 %119, label %135, label %120

120:                                              ; preds = %116
  %121 = call noalias ptr @kstrdup(ptr noundef nonnull %4, i32 noundef 3264) #9
  %122 = icmp eq ptr %121, null
  br i1 %122, label %134, label %123

123:                                              ; preds = %120
  store ptr @modprobe_path, ptr %118, align 8
  %124 = getelementptr ptr, ptr %118, i32 1
  store ptr @.str.10, ptr %124, align 4
  %125 = getelementptr ptr, ptr %118, i32 2
  store ptr @.str.11, ptr %125, align 8
  %126 = getelementptr ptr, ptr %118, i32 3
  store ptr %121, ptr %126, align 4
  %127 = getelementptr ptr, ptr %118, i32 4
  store ptr null, ptr %127, align 8
  %128 = call ptr @call_usermodehelper_setup(ptr noundef nonnull @modprobe_path, ptr noundef nonnull %118, ptr noundef nonnull @call_modprobe.envp, i32 noundef 3264, ptr noundef null, ptr noundef nonnull @free_modprobe_argv, ptr noundef null) #9
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %123
  %131 = select i1 %0, i32 6, i32 5
  %132 = call i32 @call_usermodehelper_exec(ptr noundef nonnull %128, i32 noundef %131) #9
  br label %135

133:                                              ; preds = %123
  call void @kfree(ptr noundef nonnull %121) #9
  br label %134

134:                                              ; preds = %133, %120
  call void @kfree(ptr noundef nonnull %118) #9
  br label %135

135:                                              ; preds = %134, %130, %116
  %136 = phi i32 [ %132, %130 ], [ -12, %116 ], [ -12, %134 ]
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @kmod_concurrent_max) #9, !srcloc !11
  %137 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @kmod_concurrent_max, ptr nonnull @kmod_concurrent_max, i32 1, ptr nonnull elementtype(i32) @kmod_concurrent_max) #9, !srcloc !17
  call void @__wake_up(ptr noundef nonnull @kmod_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %138

138:                                              ; preds = %135, %96, %93, %91, %88, %15, %12
  %139 = phi i32 [ %136, %135 ], [ -2, %12 ], [ -36, %15 ], [ -62, %91 ], [ -62, %88 ], [ -512, %96 ], [ -512, %93 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %139
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @current_is_async() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_module_request(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @call_usermodehelper_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @free_modprobe_argv(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr ptr, ptr %3, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #9
  %6 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %6) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper_exec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!10 = !{i64 2148159693}
!11 = !{i64 544881, i64 2148034852, i64 2148034878, i64 2148034925, i64 2148034947, i64 2148034975, i64 2148034995}
!12 = !{i64 530944, i64 530968, i64 530989, i64 531006, i64 531023}
!13 = !{i64 2148159893}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2154063470}
!16 = !{i64 2154063638}
!17 = !{i64 2148046267, i64 2148046293, i64 2148046322, i64 2148046356, i64 2148046387, i64 2148046410}
