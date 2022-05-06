; ModuleID = '/llk/IR/net/xfrm/xfrm_ipcomp.c_pt.bc'
source_filename = "../net/xfrm/xfrm_ipcomp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipcomp_input:\09\09\09\09\09"
module asm "\09.asciz \09\22ipcomp_input\22\09\09\09\09\09"
module asm "__kstrtabns_ipcomp_input:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipcomp_output:\09\09\09\09\09"
module asm "\09.asciz \09\22ipcomp_output\22\09\09\09\09\09"
module asm "__kstrtabns_ipcomp_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipcomp_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22ipcomp_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_ipcomp_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipcomp_init_state:\09\09\09\09\09"
module asm "\09.asciz \09\22ipcomp_init_state\22\09\09\09\09\09"
module asm "__kstrtabns_ipcomp_init_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type {}
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfrm_state_offload = type { ptr, %struct.netdevice_tracker, ptr, i32, i32, i8 }
%struct.netdevice_tracker = type {}
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.ipcomp_data = type { i16, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ip_comp_hdr = type { i8, i8, i16 }
%struct.ipcomp_tfms = type { %struct.list_head, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.141, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.141 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.xfrm_algo_desc = type { ptr, ptr, i8, %union.anon.142, %struct.sadb_alg }
%union.anon.142 = type { %struct.xfrm_algo_aead_info }
%struct.xfrm_algo_aead_info = type { ptr, i16 }
%struct.sadb_alg = type { i8, i8, i16, i16, i16 }

@__kstrtab_ipcomp_input = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipcomp_input = external dso_local constant [0 x i8], align 1
@__ksymtab_ipcomp_input = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipcomp_input to i32), ptr @__kstrtab_ipcomp_input, ptr @__kstrtabns_ipcomp_input }, section "___ksymtab_gpl+ipcomp_input", align 4
@__kstrtab_ipcomp_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipcomp_output = external dso_local constant [0 x i8], align 1
@__ksymtab_ipcomp_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipcomp_output to i32), ptr @__kstrtab_ipcomp_output, ptr @__kstrtabns_ipcomp_output }, section "___ksymtab_gpl+ipcomp_output", align 4
@ipcomp_resource_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ipcomp_resource_mutex, i64 12), ptr getelementptr (i8, ptr @ipcomp_resource_mutex, i64 12) } }, align 4
@__kstrtab_ipcomp_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipcomp_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_ipcomp_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipcomp_destroy to i32), ptr @__kstrtab_ipcomp_destroy, ptr @__kstrtabns_ipcomp_destroy }, section "___ksymtab_gpl+ipcomp_destroy", align 4
@__kstrtab_ipcomp_init_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipcomp_init_state = external dso_local constant [0 x i8], align 1
@__ksymtab_ipcomp_init_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipcomp_init_state to i32), ptr @__kstrtab_ipcomp_init_state, ptr @__kstrtabns_ipcomp_init_state }, section "___ksymtab_gpl+ipcomp_init_state", align 4
@__UNIQUE_ID_license468 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description469 = internal constant [63 x i8] c"description=IP Payload Compression Protocol (IPComp) - RFC3173\00", section ".modinfo", align 1
@__UNIQUE_ID_author470 = internal constant [47 x i8] c"author=James Morris <jmorris@intercode.com.au>\00", section ".modinfo", align 1
@ipcomp_scratches = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [23 x i8] c"net/xfrm/xfrm_ipcomp.c\00", align 1
@ipcomp_tfms_list = internal global %struct.list_head { ptr @ipcomp_tfms_list, ptr @ipcomp_tfms_list }, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@ipcomp_scratch_users = internal unnamed_addr global i32 0, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author470, ptr @__UNIQUE_ID_description469, ptr @__UNIQUE_ID_license468, ptr @__ksymtab_ipcomp_destroy, ptr @__ksymtab_ipcomp_init_state, ptr @__ksymtab_ipcomp_input, ptr @__ksymtab_ipcomp_output], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipcomp_input(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 10
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %24, label %19

19:                                               ; preds = %12, %2
  %20 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %5) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %128, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %4, align 4
  br label %24

24:                                               ; preds = %22, %12, %7
  %25 = phi i32 [ %23, %22 ], [ 0, %12 ], [ 0, %7 ]
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, -97
  store i16 %28, ptr %26, align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = load i8, ptr %30, align 2
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %33 = load i16, ptr %32, align 4
  %34 = add i16 %33, 4
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  store i16 %34, ptr %35, align 2
  %36 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, -4
  store i32 %38, ptr %36, align 8
  %39 = icmp ult i32 %38, %25
  br i1 %39, label %40, label %41, !prof !9

40:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

41:                                               ; preds = %24
  %42 = getelementptr i8, ptr %30, i32 4
  store ptr %42, ptr %29, align 4
  %43 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 51
  %44 = load ptr, ptr %43, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 65400, ptr %3, align 4
  %45 = load ptr, ptr @ipcomp_scratches, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %48 = inttoptr i32 %47 to ptr
  %49 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #4, !srcloc !11
  %50 = add i32 %49, %46
  %51 = inttoptr i32 %50 to ptr
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ipcomp_data, ptr %44, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = add i32 %49, %55
  %57 = inttoptr i32 %56 to ptr
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 @crypto_comp_decompress(ptr noundef %58, ptr noundef %42, i32 noundef %38, ptr noundef %52, ptr noundef nonnull %3) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %124

61:                                               ; preds = %41
  %62 = load i32, ptr %3, align 4
  %63 = icmp ult i32 %62, %37
  br i1 %63, label %124, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %4, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = sub i32 %62, %38
  %69 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %72 = load ptr, ptr %71, align 8
  %73 = ptrtoint ptr %70 to i32
  %74 = ptrtoint ptr %72 to i32
  %75 = sub i32 %73, %74
  %76 = call i32 @llvm.smin.i32(i32 %68, i32 %75) #12
  %77 = getelementptr i8, ptr %72, i32 %76
  store ptr %77, ptr %71, align 8
  %78 = load i32, ptr %36, align 8
  %79 = add i32 %76, %78
  store i32 %79, ptr %36, align 8
  %80 = add i32 %76, %38
  %81 = load ptr, ptr %29, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %81, ptr align 1 %52, i32 %80, i1 false) #12
  %82 = load i32, ptr %3, align 4
  %83 = sub i32 %82, %80
  store i32 %83, ptr %3, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %86, label %126

85:                                               ; preds = %64
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !12
  unreachable

86:                                               ; preds = %67
  %87 = getelementptr i8, ptr %52, i32 %80
  %88 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  br label %89

89:                                               ; preds = %99, %86
  %90 = phi ptr [ %87, %86 ], [ %120, %99 ]
  %91 = load ptr, ptr %69, align 4
  %92 = getelementptr inbounds %struct.skb_shared_info, ptr %91, i32 0, i32 2
  %93 = load i8, ptr %92, align 2
  %94 = icmp ugt i8 %93, 16
  br i1 %94, label %95, label %96, !prof !9

95:                                               ; preds = %89
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef null) #12
  br label %124

96:                                               ; preds = %89
  %97 = call ptr @__alloc_pages(i32 noundef 2592, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %98 = icmp eq ptr %97, null
  br i1 %98, label %124, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.skb_shared_info, ptr %91, i32 0, i32 12
  %101 = zext i8 %93 to i32
  %102 = getelementptr %struct.bio_vec, ptr %100, i32 %101
  store ptr %97, ptr %102, align 4
  %103 = load i32, ptr %3, align 4
  %104 = call i32 @llvm.smin.i32(i32 %103, i32 4096) #12
  %105 = getelementptr %struct.bio_vec, ptr %100, i32 %101, i32 2
  store i32 0, ptr %105, align 4
  %106 = getelementptr %struct.bio_vec, ptr %100, i32 %101, i32 1
  store i32 %104, ptr %106, align 4
  %107 = call ptr @page_address(ptr noundef nonnull %97) #12
  %108 = load i32, ptr %105, align 4
  %109 = getelementptr i8, ptr %107, i32 %108
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %109, ptr align 1 %90, i32 %104, i1 false) #12
  %110 = load i32, ptr %88, align 8
  %111 = add i32 %110, %104
  store i32 %111, ptr %88, align 8
  %112 = load i32, ptr %4, align 4
  %113 = add i32 %112, %104
  store i32 %113, ptr %4, align 4
  %114 = load i32, ptr %36, align 8
  %115 = add i32 %114, %104
  store i32 %115, ptr %36, align 8
  %116 = load ptr, ptr %69, align 4
  %117 = getelementptr inbounds %struct.skb_shared_info, ptr %116, i32 0, i32 2
  %118 = load i8, ptr %117, align 2
  %119 = add i8 %118, 1
  store i8 %119, ptr %117, align 2
  %120 = getelementptr i8, ptr %90, i32 %104
  %121 = load i32, ptr %3, align 4
  %122 = sub i32 %121, %104
  store i32 %122, ptr %3, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %89, label %126

124:                                              ; preds = %96, %95, %61, %41
  %125 = phi i32 [ -90, %95 ], [ -22, %61 ], [ %59, %41 ], [ -12, %96 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %128

126:                                              ; preds = %99, %67
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %127 = zext i8 %31 to i32
  br label %128

128:                                              ; preds = %126, %124, %19
  %129 = phi i32 [ %127, %126 ], [ -12, %19 ], [ %125, %124 ]
  ret i32 %129
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipcomp_output(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 51
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = load i16, ptr %5, align 4
  %9 = zext i16 %8 to i32
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %100, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %17 = load i8, ptr %16, align 2
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 10
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %33, label %27

27:                                               ; preds = %20, %11
  %28 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %13) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %100, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %4, align 8
  %32 = load i32, ptr %6, align 8
  br label %33

33:                                               ; preds = %30, %20, %15
  %34 = phi i32 [ %32, %30 ], [ %7, %20 ], [ %7, %15 ]
  %35 = phi ptr [ %31, %30 ], [ %5, %20 ], [ %5, %15 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 65400, ptr %3, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %37 = load ptr, ptr %36, align 4
  %38 = tail call ptr @llvm.thread.pointer() #12
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %40 = load volatile i32, ptr %39, align 4
  %41 = add i32 %40, 512
  store volatile i32 %41, ptr %39, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %42 = load ptr, ptr @ipcomp_scratches, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %45 = inttoptr i32 %44 to ptr
  %46 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %45) #4, !srcloc !11
  %47 = add i32 %46, %43
  %48 = inttoptr i32 %47 to ptr
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ipcomp_data, ptr %35, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = add i32 %46, %52
  %54 = inttoptr i32 %53 to ptr
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 @crypto_comp_compress(ptr noundef %55, ptr noundef %37, i32 noundef %34, ptr noundef %49, ptr noundef nonnull %3) #12
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %33
  %59 = load i32, ptr %3, align 4
  %60 = add i32 %59, 4
  %61 = icmp ult i32 %60, %34
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %37, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %63, ptr align 1 %49, i32 %59, i1 false) #12
  call fastcc void @local_bh_enable() #12
  %64 = load i32, ptr %3, align 4
  %65 = add i32 %64, 4
  %66 = load i32, ptr %6, align 8
  %67 = icmp ugt i32 %66, %65
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i32, ptr %12, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = call i32 @___pskb_trim(ptr noundef %1, i32 noundef %65) #12
  br label %78

73:                                               ; preds = %68
  store i32 %65, ptr %6, align 8
  %74 = load ptr, ptr %36, align 4
  %75 = getelementptr i8, ptr %74, i32 %65
  %76 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  store ptr %75, ptr %76, align 8
  br label %78

77:                                               ; preds = %58, %33
  call fastcc void @local_bh_enable() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %100

78:                                               ; preds = %73, %71, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %79 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %82 = load i16, ptr %81, align 2
  %83 = zext i16 %82 to i32
  %84 = getelementptr i8, ptr %80, i32 %83
  %85 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %86 = load i16, ptr %85, align 2
  %87 = zext i16 %86 to i32
  %88 = getelementptr i8, ptr %80, i32 %87
  %89 = load i8, ptr %88, align 1
  store i8 %89, ptr %84, align 2
  %90 = getelementptr inbounds %struct.ip_comp_hdr, ptr %84, i32 0, i32 1
  store i8 0, ptr %90, align 1
  %91 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 1
  %92 = load i32, ptr %91, align 8
  %93 = lshr i32 %92, 16
  %94 = trunc i32 %93 to i16
  %95 = getelementptr inbounds %struct.ip_comp_hdr, ptr %84, i32 0, i32 2
  store i16 %94, ptr %95, align 2
  %96 = load ptr, ptr %79, align 8
  %97 = load i16, ptr %85, align 2
  %98 = zext i16 %97 to i32
  %99 = getelementptr i8, ptr %96, i32 %98
  store i8 108, ptr %99, align 1
  br label %100

100:                                              ; preds = %78, %77, %27, %2
  %101 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %104 = load i16, ptr %103, align 4
  %105 = zext i16 %104 to i32
  %106 = getelementptr i8, ptr %102, i32 %105
  %107 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %108 = load ptr, ptr %107, align 4
  %109 = ptrtoint ptr %106 to i32
  %110 = ptrtoint ptr %108 to i32
  %111 = sub i32 %110, %109
  %112 = call ptr @skb_push(ptr noundef %1, i32 noundef %111) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipcomp_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 51
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @xfrm_state_delete_tunnel(ptr noundef %0) #12
  tail call void @mutex_lock(ptr noundef nonnull @ipcomp_resource_mutex) #12
  tail call fastcc void @ipcomp_free_data(ptr noundef nonnull %3)
  tail call void @mutex_unlock(ptr noundef nonnull @ipcomp_resource_mutex) #12
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_state_delete_tunnel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipcomp_free_data(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ipcomp_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @ipcomp_free_tfms(ptr noundef nonnull %3)
  br label %6

6:                                                ; preds = %5, %1
  %7 = load i32, ptr @ipcomp_scratch_users, align 4
  %8 = add i32 %7, -1
  store i32 %8, ptr @ipcomp_scratch_users, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load ptr, ptr @ipcomp_scratches, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = ptrtoint ptr %11 to i32
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ %14, %17 ], [ %26, %19 ]
  %21 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %18
  %24 = inttoptr i32 %23 to ptr
  %25 = load ptr, ptr %24, align 4
  tail call void @vfree(ptr noundef %25) #12
  %26 = tail call i32 @cpumask_next(i32 noundef %20, ptr noundef nonnull @__cpu_possible_mask) #13
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %19, label %29

29:                                               ; preds = %19, %13
  tail call void @free_percpu(ptr noundef nonnull %11) #12
  br label %30

30:                                               ; preds = %29, %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipcomp_init_state(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %118, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %118

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 8) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %118, label %13

13:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef nonnull @ipcomp_resource_mutex) #12
  %14 = load i32, ptr @ipcomp_scratch_users, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr @ipcomp_scratch_users, align 4
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @ipcomp_scratches, align 4
  br label %40

19:                                               ; preds = %13
  %20 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %120, label %22

22:                                               ; preds = %19
  store ptr %20, ptr @ipcomp_scratches, align 4
  %23 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = ptrtoint ptr %20 to i32
  br label %28

28:                                               ; preds = %32, %26
  %29 = phi i32 [ %23, %26 ], [ %37, %32 ]
  %30 = tail call noalias ptr @vmalloc_node(i32 noundef 65400, i32 noundef 0) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %120, label %32

32:                                               ; preds = %28
  %33 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %27
  %36 = inttoptr i32 %35 to ptr
  store ptr %30, ptr %36, align 4
  %37 = tail call i32 @cpumask_next(i32 noundef %29, ptr noundef nonnull @__cpu_possible_mask) #13
  %38 = load i32, ptr @nr_cpu_ids, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %28, label %40

40:                                               ; preds = %32, %17
  %41 = phi ptr [ %18, %17 ], [ %20, %32 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %120, label %43

43:                                               ; preds = %40, %22
  %44 = load ptr, ptr %2, align 8
  br label %45

45:                                               ; preds = %49, %43
  %46 = phi ptr [ @ipcomp_tfms_list, %43 ], [ %47, %49 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, @ipcomp_tfms_list
  br i1 %48, label %70, label %49

49:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %50 = getelementptr inbounds %struct.ipcomp_tfms, ptr %47, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %54 = inttoptr i32 %53 to ptr
  %55 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %54) #4, !srcloc !11
  %56 = add i32 %55, %52
  %57 = inttoptr i32 %56 to ptr
  %58 = load volatile ptr, ptr %57, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %59 = getelementptr inbounds %struct.crypto_tfm, ptr %58, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.crypto_alg, ptr %60, i32 0, i32 8
  %62 = tail call i32 @strcmp(ptr noundef %61, ptr noundef %44) #12
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %45

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.ipcomp_tfms, ptr %47, i32 0, i32 1
  %66 = getelementptr inbounds %struct.ipcomp_tfms, ptr %47, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 4
  %69 = load ptr, ptr %65, align 4
  br label %105

70:                                               ; preds = %45
  %71 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %72 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3264, i32 noundef 16) #14
  %73 = icmp eq ptr %72, null
  br i1 %73, label %103, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.ipcomp_tfms, ptr %72, i32 0, i32 2
  store i32 1, ptr %75, align 4
  store volatile ptr %72, ptr %72, align 8
  %76 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %77 = load ptr, ptr @ipcomp_tfms_list, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %72, ptr %78, align 4
  store ptr %77, ptr %72, align 8
  store ptr @ipcomp_tfms_list, ptr %76, align 4
  store volatile ptr %72, ptr @ipcomp_tfms_list, align 4
  %79 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #15
  %80 = getelementptr inbounds %struct.ipcomp_tfms, ptr %72, i32 0, i32 1
  store ptr %79, ptr %80, align 8
  %81 = icmp eq ptr %79, null
  br i1 %81, label %102, label %82

82:                                               ; preds = %74
  %83 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  %84 = load i32, ptr @nr_cpu_ids, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ipcomp_data, ptr %11, i32 0, i32 1
  store ptr %79, ptr %87, align 4
  br label %109

88:                                               ; preds = %82
  %89 = ptrtoint ptr %79 to i32
  br label %90

90:                                               ; preds = %94, %88
  %91 = phi i32 [ %83, %88 ], [ %99, %94 ]
  %92 = tail call ptr @crypto_alloc_base(ptr noundef %44, i32 noundef 2, i32 noundef 143) #12
  %93 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %102, label %94

94:                                               ; preds = %90
  %95 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %91
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, %89
  %98 = inttoptr i32 %97 to ptr
  store ptr %92, ptr %98, align 4
  %99 = tail call i32 @cpumask_next(i32 noundef %91, ptr noundef nonnull @__cpu_possible_mask) #13
  %100 = load i32, ptr @nr_cpu_ids, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %90, label %105

102:                                              ; preds = %90, %74
  tail call fastcc void @ipcomp_free_tfms(ptr noundef %79) #12
  br label %103

103:                                              ; preds = %102, %70
  %104 = getelementptr inbounds %struct.ipcomp_data, ptr %11, i32 0, i32 1
  store ptr null, ptr %104, align 4
  br label %120

105:                                              ; preds = %94, %64
  %106 = phi ptr [ %69, %64 ], [ %79, %94 ]
  %107 = getelementptr inbounds %struct.ipcomp_data, ptr %11, i32 0, i32 1
  store ptr %106, ptr %107, align 4
  %108 = icmp eq ptr %106, null
  br i1 %108, label %120, label %109

109:                                              ; preds = %105, %86
  tail call void @mutex_unlock(ptr noundef nonnull @ipcomp_resource_mutex) #12
  %110 = load ptr, ptr %2, align 8
  %111 = tail call ptr @xfrm_calg_get_byname(ptr noundef %110, i32 noundef 0) #12
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %114, !prof !9

113:                                              ; preds = %109
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_ipcomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 356, 0\0A.popsection", ""() #12, !srcloc !16
  unreachable

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %111, i32 0, i32 3
  %116 = load i16, ptr %115, align 4
  store i16 %116, ptr %11, align 8
  %117 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 51
  store ptr %11, ptr %117, align 8
  br label %118

118:                                              ; preds = %120, %114, %9, %5, %1
  %119 = phi i32 [ -22, %5 ], [ 0, %114 ], [ -12, %120 ], [ -12, %9 ], [ -22, %1 ]
  ret i32 %119

120:                                              ; preds = %105, %103, %40, %28, %19
  tail call fastcc void @ipcomp_free_data(ptr noundef nonnull %11)
  tail call void @mutex_unlock(ptr noundef nonnull @ipcomp_resource_mutex) #12
  tail call void @kfree(ptr noundef nonnull %11) #12
  br label %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_calg_get_byname(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_comp_decompress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_comp_compress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipcomp_free_tfms(ptr noundef %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @ipcomp_tfms_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @ipcomp_tfms_list
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ipcomp_tfms, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %11, label %2

10:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef null) #12
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.ipcomp_tfms, ptr %4, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  tail call void @kfree(ptr noundef %4) #12
  %21 = icmp eq ptr %0, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %16
  %23 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = ptrtoint ptr %0 to i32
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i32 [ %23, %26 ], [ %35, %28 ]
  %30 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %27
  %33 = inttoptr i32 %32 to ptr
  %34 = load ptr, ptr %33, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %34, ptr noundef %34) #12
  %35 = tail call i32 @cpumask_next(i32 noundef %29, ptr noundef nonnull @__cpu_possible_mask) #13
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %28, label %38

38:                                               ; preds = %28, %22
  tail call void @free_percpu(ptr noundef nonnull %0) #12
  br label %39

39:                                               ; preds = %38, %16, %11
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_node(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_base(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153333841, i64 2153334329, i64 2153333878, i64 2153333934, i64 2153333968, i64 2153333992, i64 2153334033, i64 2153334054, i64 2153334082, i64 2153334116}
!11 = !{i64 315860}
!12 = !{i64 2153331437, i64 2153331925, i64 2153331474, i64 2153331530, i64 2153331564, i64 2153331588, i64 2153331629, i64 2153331650, i64 2153331678, i64 2153331712}
!13 = !{i64 2148806861}
!14 = !{i64 2156386677}
!15 = !{i64 2156401471}
!16 = !{i64 2156427119, i64 2156427606, i64 2156427156, i64 2156427212, i64 2156427246, i64 2156427270, i64 2156427311, i64 2156427332, i64 2156427360, i64 2156427394}
