; ModuleID = '/llk/IR/net/ipv6/ip6_offload.c_pt.bc'
source_filename = "../net/ipv6/ip6_offload.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.packet_offload = type { i16, i16, %struct.offload_callbacks, %struct.list_head }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_offload = type { %struct.offload_callbacks, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.157, %union.anon.158, [48 x i8], %union.anon.159, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.161, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.157 = type { ptr }
%union.anon.158 = type { i64 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { i32, ptr }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.163, i32, i32, i32, i16, i16, %union.anon.165, %union.anon.166, %union.anon.167, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.163 = type { i32 }
%union.anon.165 = type { i32 }
%union.anon.166 = type { i32 }
%union.anon.167 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.156, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.156 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.55 }
%union.anon.55 = type { [4 x i32] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.frag_hdr = type { i8, i8, i16, i32 }
%struct.ipv6_opt_hdr = type { i8, i8 }

@__initcall__kmod_ip6_offload__546_440_ipv6_offload_init5 = internal global ptr @ipv6_offload_init, section ".initcall5.init", align 4
@.str = private unnamed_addr constant [39 x i8] c"\012%s: Cannot add TCP protocol offload\0A\00", align 1
@__func__.ipv6_offload_init = private unnamed_addr constant [18 x i8] c"ipv6_offload_init\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"\012%s: Cannot add EXTHDRS protocol offload\0A\00", align 1
@ipv6_packet_offload = internal global %struct.packet_offload { i16 -8826, i16 0, %struct.offload_callbacks { ptr @ipv6_gso_segment, ptr @ipv6_gro_receive, ptr @ipv6_gro_complete }, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@sit_offload = internal constant %struct.net_offload { %struct.offload_callbacks { ptr @sit_gso_segment, ptr @sit_ip6ip6_gro_receive, ptr @sit_gro_complete }, i32 0 }, align 4
@ip6ip6_offload = internal constant %struct.net_offload { %struct.offload_callbacks { ptr @ip6ip6_gso_segment, ptr @sit_ip6ip6_gro_receive, ptr @ip6ip6_gro_complete }, i32 0 }, align 4
@ip4ip6_offload = internal constant %struct.net_offload { %struct.offload_callbacks { ptr @ip4ip6_gso_segment, ptr @ip4ip6_gro_receive, ptr @ip4ip6_gro_complete }, i32 0 }, align 4
@inet6_offloads = external dso_local global [256 x ptr], align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"net/ipv6/ip6_offload.c\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_ip6_offload__546_440_ipv6_offload_init5], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipv6_offload_init() #0 section ".init.text" {
  %1 = tail call i32 @tcpv6_offload_init() #7
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ipv6_offload_init) #8
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @ipv6_exthdrs_offload_init() #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ipv6_offload_init) #8
  br label %10

10:                                               ; preds = %8, %5
  tail call void @dev_add_offload(ptr noundef nonnull @ipv6_packet_offload) #7
  %11 = tail call i32 @inet_add_offload(ptr noundef nonnull @sit_offload, i8 noundef zeroext 41) #7
  %12 = tail call i32 @inet6_add_offload(ptr noundef nonnull @ip6ip6_offload, i8 noundef zeroext 41) #7
  %13 = tail call i32 @inet6_add_offload(ptr noundef nonnull @ip4ip6_offload, i8 noundef zeroext 4) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcpv6_offload_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_exthdrs_offload_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_offload(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ipv6_gso_segment(ptr noundef %0, i64 noundef %1) #3 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = trunc i32 %10 to i16
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  store i16 %11, ptr %12, align 4
  %13 = and i32 %10, 65535
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = sub nsw i32 %13, %16
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %19, %21
  %23 = icmp ult i32 %22, 40
  br i1 %23, label %24, label %30, !prof !9

24:                                               ; preds = %2
  %25 = icmp ult i32 %19, 40
  br i1 %25, label %202, label %26, !prof !9

26:                                               ; preds = %24
  %27 = sub nuw nsw i32 40, %22
  %28 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %27) #7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %202, label %30, !prof !9

30:                                               ; preds = %26, %2
  %31 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 36
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 27
  %38 = load i64, ptr %37, align 16
  %39 = and i64 %38, %1
  br label %40

40:                                               ; preds = %34, %30
  %41 = phi i64 [ %39, %34 ], [ %1, %30 ]
  %42 = add i32 %32, 40
  store i32 %42, ptr %31, align 4
  %43 = load ptr, ptr %6, align 8
  %44 = load i16, ptr %12, align 4
  %45 = load i32, ptr %18, align 8
  %46 = add i32 %45, -40
  store i32 %46, ptr %18, align 8
  %47 = load i32, ptr %20, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %50, !prof !9

49:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

50:                                               ; preds = %40
  %51 = zext i16 %44 to i32
  %52 = getelementptr i8, ptr %43, i32 %51
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr i8, ptr %53, i32 40
  store ptr %54, ptr %4, align 4
  %55 = getelementptr inbounds %struct.ipv6hdr, ptr %52, i32 0, i32 3
  %56 = load i8, ptr %55, align 2
  %57 = zext i8 %56 to i32
  %58 = tail call fastcc i32 @ipv6_gso_pull_exthdrs(ptr noundef %0, i32 noundef %57)
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %60 = load i16, ptr %59, align 8
  %61 = and i16 %60, 8192
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.skb_shared_info, ptr %65, i32 0, i32 8
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 768
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %63
  %71 = icmp ne i32 %58, 17
  %72 = xor i1 %33, true
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %70
  %75 = and i32 %67, 65536
  %76 = icmp ne i32 %75, 0
  br label %86

77:                                               ; preds = %50
  %78 = icmp eq i32 %58, 17
  br i1 %78, label %79, label %86

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.skb_shared_info, ptr %81, i32 0, i32 8
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65536
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %79, %77, %74, %70, %63
  %87 = phi i1 [ false, %70 ], [ %76, %74 ], [ false, %77 ], [ %85, %79 ], [ false, %63 ]
  %88 = getelementptr [256 x ptr], ptr @inet6_offloads, i32 0, i32 %58
  %89 = load volatile ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %202, label %91, !prof !9

91:                                               ; preds = %86
  %92 = load ptr, ptr %89, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %202, label %94, !prof !9

94:                                               ; preds = %91
  %95 = load ptr, ptr %4, align 4
  %96 = load ptr, ptr %6, align 8
  %97 = ptrtoint ptr %95 to i32
  %98 = ptrtoint ptr %96 to i32
  %99 = sub i32 %97, %98
  %100 = trunc i32 %99 to i16
  %101 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  store i16 %100, ptr %101, align 2
  %102 = load ptr, ptr %89, align 4
  %103 = tail call ptr %102(ptr noundef %0, i64 noundef %41) #7
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %115

105:                                              ; preds = %94
  %106 = load ptr, ptr %6, align 8
  %107 = load i16, ptr %14, align 2
  %108 = zext i16 %107 to i32
  %109 = getelementptr i8, ptr %106, i32 %108
  %110 = getelementptr i8, ptr %109, i32 %17
  %111 = ptrtoint ptr %110 to i32
  %112 = ptrtoint ptr %106 to i32
  %113 = sub i32 %111, %112
  %114 = trunc i32 %113 to i16
  store i16 %114, ptr %12, align 4
  br label %202

115:                                              ; preds = %94
  %116 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %116, label %202, label %117

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 15
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.skb_shared_info, ptr %119, i32 0, i32 8
  %121 = load i32, ptr %120, align 8
  %122 = and i32 %121, 4096
  %123 = icmp eq i32 %122, 0
  %124 = sub nsw i32 -40, %17
  br label %125

125:                                              ; preds = %199, %117
  %126 = phi ptr [ %103, %117 ], [ %200, %199 ]
  %127 = phi i32 [ 0, %117 ], [ %190, %199 ]
  %128 = getelementptr inbounds %struct.sk_buff, ptr %126, i32 0, i32 16
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.sk_buff, ptr %126, i32 0, i32 13, i32 0, i32 19
  %131 = load i16, ptr %130, align 2
  %132 = zext i16 %131 to i32
  %133 = getelementptr i8, ptr %129, i32 %17
  %134 = getelementptr i8, ptr %133, i32 %132
  br i1 %123, label %151, label %135

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.sk_buff, ptr %126, i32 0, i32 15
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.skb_shared_info, ptr %137, i32 0, i32 4
  %139 = load i16, ptr %138, align 4
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %135
  %142 = zext i16 %139 to i32
  %143 = getelementptr %struct.sk_buff, ptr %126, i32 0, i32 3, i32 32
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %144, %142
  %146 = getelementptr i8, ptr %129, i32 %145
  %147 = getelementptr %struct.ipv6hdr, ptr %134, i32 1
  %148 = ptrtoint ptr %146 to i32
  %149 = ptrtoint ptr %147 to i32
  %150 = sub i32 %148, %149
  br label %155

151:                                              ; preds = %135, %125
  %152 = getelementptr inbounds %struct.sk_buff, ptr %126, i32 0, i32 5
  %153 = load i32, ptr %152, align 8
  %154 = add i32 %124, %153
  br label %155

155:                                              ; preds = %151, %141
  %156 = phi i32 [ %150, %141 ], [ %154, %151 ]
  %157 = trunc i32 %156 to i16
  %158 = call i16 @llvm.bswap.i16(i16 %157)
  %159 = getelementptr inbounds %struct.ipv6hdr, ptr %134, i32 0, i32 2
  store i16 %158, ptr %159, align 4
  %160 = load ptr, ptr %128, align 8
  %161 = ptrtoint ptr %134 to i32
  %162 = ptrtoint ptr %160 to i32
  %163 = sub i32 %161, %162
  %164 = trunc i32 %163 to i16
  %165 = getelementptr inbounds %struct.sk_buff, ptr %126, i32 0, i32 13, i32 0, i32 18
  store i16 %164, ptr %165, align 4
  %166 = load i16, ptr %130, align 2
  %167 = sub i16 %164, %166
  %168 = getelementptr inbounds %struct.sk_buff, ptr %126, i32 0, i32 7
  store i16 %167, ptr %168, align 8
  br i1 %87, label %169, label %189

169:                                              ; preds = %155
  %170 = call i32 @ip6_find_1stfragopt(ptr noundef nonnull %126, ptr noundef nonnull %3) #7
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  call void @kfree_skb_list(ptr noundef nonnull %103) #7
  %173 = inttoptr i32 %170 to ptr
  br label %202

174:                                              ; preds = %169
  %175 = getelementptr i8, ptr %134, i32 %170
  %176 = trunc i32 %127 to i16
  %177 = call i16 @llvm.bswap.i16(i16 %176)
  %178 = getelementptr inbounds %struct.frag_hdr, ptr %175, i32 0, i32 2
  store i16 %177, ptr %178, align 2
  %179 = load ptr, ptr %126, align 8
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %174
  %182 = or i16 %177, 256
  store i16 %182, ptr %178, align 2
  br label %183

183:                                              ; preds = %181, %174
  %184 = load i16, ptr %159, align 4
  %185 = call i16 @llvm.bswap.i16(i16 %184)
  %186 = zext i16 %185 to i32
  %187 = add i32 %127, -8
  %188 = add i32 %187, %186
  br label %189

189:                                              ; preds = %183, %155
  %190 = phi i32 [ %188, %183 ], [ %127, %155 ]
  br i1 %33, label %191, label %199

191:                                              ; preds = %189
  %192 = load i16, ptr %130, align 2
  %193 = getelementptr inbounds %struct.sk_buff, ptr %126, i32 0, i32 13, i32 0, i32 15
  store i16 %192, ptr %193, align 2
  %194 = load i16, ptr %165, align 4
  %195 = getelementptr inbounds %struct.sk_buff, ptr %126, i32 0, i32 13, i32 0, i32 14
  store i16 %194, ptr %195, align 4
  %196 = getelementptr inbounds %struct.sk_buff, ptr %126, i32 0, i32 13, i32 0, i32 17
  %197 = load i16, ptr %196, align 2
  %198 = getelementptr inbounds %struct.sk_buff, ptr %126, i32 0, i32 13, i32 0, i32 13
  store i16 %197, ptr %198, align 2
  br label %199

199:                                              ; preds = %191, %189
  %200 = load ptr, ptr %126, align 8
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %125

202:                                              ; preds = %199, %172, %115, %105, %91, %86, %26, %24
  %203 = phi ptr [ inttoptr (i32 -22 to ptr), %26 ], [ %103, %115 ], [ %173, %172 ], [ inttoptr (i32 -22 to ptr), %24 ], [ inttoptr (i32 -93 to ptr), %86 ], [ inttoptr (i32 -93 to ptr), %91 ], [ null, %105 ], [ %103, %199 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret ptr %203
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ipv6_gro_receive(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 40
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, %5
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr i8, ptr %11, i32 %4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  br label %36

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %17, %19
  %21 = icmp ugt i32 %5, %20
  br i1 %21, label %22, label %28, !prof !9

22:                                               ; preds = %15
  %23 = icmp ult i32 %17, %5
  br i1 %23, label %267, label %24, !prof !9

24:                                               ; preds = %22
  %25 = sub i32 %5, %20
  %26 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %25) #7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %267, label %28

28:                                               ; preds = %24, %15
  store ptr null, ptr %6, align 8
  store i32 0, ptr %7, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 %4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %267, label %33, !prof !9

33:                                               ; preds = %28
  %34 = load i32, ptr %3, align 8
  %35 = add i32 %34, 40
  br label %36

36:                                               ; preds = %33, %10
  %37 = phi i32 [ %35, %33 ], [ %5, %10 ]
  %38 = phi ptr [ %30, %33 ], [ %14, %10 ]
  %39 = phi ptr [ %31, %33 ], [ %12, %10 ]
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %41 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %42 = load ptr, ptr %41, align 8
  %43 = ptrtoint ptr %38 to i32
  %44 = ptrtoint ptr %42 to i32
  %45 = sub i32 %43, %44
  %46 = trunc i32 %45 to i16
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %48 = trunc i32 %4 to i16
  %49 = add i16 %46, %48
  store i16 %49, ptr %47, align 4
  store i32 %37, ptr %3, align 8
  %50 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %51 = trunc i32 %37 to i16
  %52 = add i16 %51, %46
  store i16 %52, ptr %50, align 2
  %53 = getelementptr inbounds %struct.ipv6hdr, ptr %39, i32 0, i32 2
  %54 = load i16, ptr %53, align 4
  %55 = tail call i16 @llvm.bswap.i16(i16 %54)
  %56 = zext i16 %55 to i32
  %57 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %58 = load i32, ptr %57, align 8
  %59 = sub i32 %58, %37
  %60 = icmp eq i32 %59, %56
  %61 = select i1 %60, i16 1, i16 2
  %62 = getelementptr inbounds %struct.ipv6hdr, ptr %39, i32 0, i32 3
  %63 = load i8, ptr %62, align 2
  %64 = zext i8 %63 to i32
  %65 = getelementptr [256 x ptr], ptr @inet6_offloads, i32 0, i32 %64
  %66 = load volatile ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %36
  %69 = getelementptr inbounds %struct.offload_callbacks, ptr %66, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = zext i16 %49 to i32
  br label %121

74:                                               ; preds = %68, %36
  %75 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = sub i32 %58, %76
  %78 = icmp ugt i32 %37, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = sub i32 %37, %77
  %81 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %80) #7
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load i32, ptr %57, align 8
  %85 = load ptr, ptr %40, align 4
  %86 = sub i32 %84, %37
  br label %87

87:                                               ; preds = %83, %74
  %88 = phi i32 [ %86, %83 ], [ %59, %74 ]
  %89 = phi ptr [ %85, %83 ], [ %38, %74 ]
  store i32 %88, ptr %57, align 8
  %90 = getelementptr i8, ptr %89, i32 %37
  store ptr %90, ptr %40, align 4
  br label %91

91:                                               ; preds = %87, %79
  store ptr null, ptr %6, align 8
  store i32 0, ptr %7, align 4
  %92 = tail call fastcc i32 @ipv6_gso_pull_exthdrs(ptr noundef %1, i32 noundef %64)
  %93 = load ptr, ptr %41, align 8
  %94 = load i16, ptr %50, align 2
  %95 = zext i16 %94 to i32
  %96 = getelementptr i8, ptr %93, i32 %95
  %97 = load ptr, ptr %40, align 4
  %98 = ptrtoint ptr %96 to i32
  %99 = ptrtoint ptr %97 to i32
  %100 = sub i32 %99, %98
  %101 = load i32, ptr %3, align 8
  %102 = add i32 %100, %101
  store i32 %102, ptr %3, align 8
  %103 = ptrtoint ptr %93 to i32
  %104 = sub i32 %99, %103
  %105 = trunc i32 %104 to i16
  store i16 %105, ptr %50, align 2
  %106 = sub i32 0, %102
  %107 = getelementptr i8, ptr %97, i32 %106
  store ptr %107, ptr %40, align 4
  %108 = load i32, ptr %57, align 8
  %109 = add i32 %108, %102
  store i32 %109, ptr %57, align 8
  %110 = getelementptr [256 x ptr], ptr @inet6_offloads, i32 0, i32 %92
  %111 = load volatile ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %267, label %113

113:                                              ; preds = %91
  %114 = getelementptr inbounds %struct.offload_callbacks, ptr %111, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %267, label %117

117:                                              ; preds = %113
  %118 = load i16, ptr %47, align 4
  %119 = zext i16 %118 to i32
  %120 = getelementptr i8, ptr %93, i32 %119
  br label %121

121:                                              ; preds = %117, %72
  %122 = phi i32 [ %73, %72 ], [ %119, %117 ]
  %123 = phi i16 [ %52, %72 ], [ %105, %117 ]
  %124 = phi i32 [ %64, %72 ], [ %92, %117 ]
  %125 = phi ptr [ %39, %72 ], [ %120, %117 ]
  %126 = phi ptr [ %66, %72 ], [ %111, %117 ]
  %127 = trunc i32 %124 to i16
  %128 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  store i16 %127, ptr %128, align 8
  %129 = add nsw i16 %61, -1
  %130 = zext i16 %123 to i32
  %131 = sub nsw i32 %130, %122
  %132 = load ptr, ptr %0, align 4
  %133 = icmp eq ptr %132, %0
  br i1 %133, label %233, label %134

134:                                              ; preds = %121
  %135 = getelementptr inbounds %struct.ipv6hdr, ptr %125, i32 0, i32 5
  %136 = getelementptr %struct.ipv6hdr, ptr %125, i32 0, i32 5, i32 0, i32 0, i32 1
  %137 = getelementptr %struct.ipv6hdr, ptr %125, i32 0, i32 5, i32 0, i32 0, i32 2
  %138 = getelementptr %struct.ipv6hdr, ptr %125, i32 0, i32 5, i32 0, i32 0, i32 3
  %139 = getelementptr inbounds %struct.ipv6hdr, ptr %125, i32 0, i32 6
  %140 = getelementptr %struct.ipv6hdr, ptr %125, i32 0, i32 6, i32 0, i32 0, i32 1
  %141 = getelementptr %struct.ipv6hdr, ptr %125, i32 0, i32 6, i32 0, i32 0, i32 2
  %142 = getelementptr %struct.ipv6hdr, ptr %125, i32 0, i32 6, i32 0, i32 0, i32 3
  %143 = getelementptr inbounds %struct.ipv6hdr, ptr %125, i32 0, i32 3
  %144 = icmp ugt i32 %131, 40
  %145 = getelementptr %struct.ipv6hdr, ptr %125, i32 1
  %146 = add nsw i32 %131, -40
  %147 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  br label %148

148:                                              ; preds = %230, %134
  %149 = phi ptr [ %132, %134 ], [ %231, %230 ]
  %150 = getelementptr inbounds %struct.sk_buff, ptr %149, i32 0, i32 3, i32 26
  %151 = load i16, ptr %150, align 2
  %152 = and i16 %151, 1
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %230, label %154

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.sk_buff, ptr %149, i32 0, i32 17
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr i8, ptr %156, i32 %4
  %158 = load i32, ptr %125, align 4
  %159 = load i32, ptr %157, align 4
  %160 = xor i32 %159, %158
  %161 = and i32 %160, -61456
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %210

163:                                              ; preds = %154
  %164 = getelementptr inbounds %struct.ipv6hdr, ptr %157, i32 0, i32 5
  %165 = load i32, ptr %135, align 4
  %166 = load i32, ptr %164, align 4
  %167 = xor i32 %166, %165
  %168 = load i32, ptr %136, align 4
  %169 = getelementptr [4 x i32], ptr %164, i32 0, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = xor i32 %170, %168
  %172 = or i32 %171, %167
  %173 = load i32, ptr %137, align 4
  %174 = getelementptr [4 x i32], ptr %164, i32 0, i32 2
  %175 = load i32, ptr %174, align 4
  %176 = xor i32 %175, %173
  %177 = or i32 %172, %176
  %178 = load i32, ptr %138, align 4
  %179 = getelementptr [4 x i32], ptr %164, i32 0, i32 3
  %180 = load i32, ptr %179, align 4
  %181 = xor i32 %180, %178
  %182 = or i32 %177, %181
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %210

184:                                              ; preds = %163
  %185 = getelementptr inbounds %struct.ipv6hdr, ptr %157, i32 0, i32 6
  %186 = load i32, ptr %139, align 4
  %187 = load i32, ptr %185, align 4
  %188 = xor i32 %187, %186
  %189 = load i32, ptr %140, align 4
  %190 = getelementptr [4 x i32], ptr %185, i32 0, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = xor i32 %191, %189
  %193 = or i32 %192, %188
  %194 = load i32, ptr %141, align 4
  %195 = getelementptr [4 x i32], ptr %185, i32 0, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = xor i32 %196, %194
  %198 = or i32 %193, %197
  %199 = load i32, ptr %142, align 4
  %200 = getelementptr [4 x i32], ptr %185, i32 0, i32 3
  %201 = load i32, ptr %200, align 4
  %202 = xor i32 %201, %199
  %203 = or i32 %198, %202
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %184
  %206 = load i16, ptr %143, align 2
  %207 = getelementptr inbounds %struct.ipv6hdr, ptr %157, i32 0, i32 3
  %208 = load i16, ptr %207, align 2
  %209 = icmp eq i16 %206, %208
  br i1 %209, label %212, label %210

210:                                              ; preds = %213, %205, %184, %163, %154
  %211 = and i16 %151, -2
  store i16 %211, ptr %150, align 2
  br label %230

212:                                              ; preds = %205
  br i1 %144, label %213, label %217, !prof !9

213:                                              ; preds = %212
  %214 = getelementptr %struct.ipv6hdr, ptr %157, i32 1
  %215 = tail call i32 @bcmp(ptr %145, ptr %214, i32 %146)
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %210

217:                                              ; preds = %213, %212
  %218 = and i32 %160, 61455
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i16
  %221 = getelementptr inbounds %struct.sk_buff, ptr %149, i32 0, i32 3, i32 12
  %222 = load i16, ptr %221, align 4
  %223 = or i16 %129, %220
  %224 = or i16 %223, %222
  store i16 %224, ptr %221, align 4
  %225 = load i16, ptr %147, align 2
  %226 = and i16 %225, 1024
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %217
  %229 = getelementptr inbounds %struct.sk_buff, ptr %149, i32 0, i32 3, i32 14
  store i16 0, ptr %229, align 2
  br label %230

230:                                              ; preds = %228, %217, %210, %148
  %231 = load ptr, ptr %149, align 4
  %232 = icmp eq ptr %231, %0
  br i1 %232, label %233, label %148

233:                                              ; preds = %230, %121
  %234 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %235 = load i16, ptr %234, align 2
  %236 = or i16 %235, 1024
  store i16 %236, ptr %234, align 2
  %237 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %238 = load i16, ptr %237, align 4
  %239 = or i16 %238, %129
  store i16 %239, ptr %237, align 4
  %240 = and i16 %235, 4
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %249, label %242

242:                                              ; preds = %233
  %243 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %244 = load i32, ptr %243, align 4
  %245 = sub i32 0, %244
  %246 = tail call i32 @csum_partial(ptr noundef %125, i32 noundef %131, i32 noundef %245) #7
  %247 = sub i32 0, %246
  store i32 %247, ptr %243, align 4
  %248 = load i16, ptr %234, align 2
  br label %249

249:                                              ; preds = %242, %233
  %250 = phi i16 [ %236, %233 ], [ %248, %242 ]
  %251 = lshr i16 %250, 11
  %252 = trunc i16 %251 to i8
  %253 = add nuw nsw i8 %252, 1
  %254 = and i8 %253, 15
  %255 = zext i8 %254 to i16
  %256 = shl nuw nsw i16 %255, 11
  %257 = and i16 %250, -30721
  %258 = or i16 %256, %257
  store i16 %258, ptr %234, align 2
  %259 = icmp eq i8 %254, 15
  br i1 %259, label %260, label %263, !prof !9

260:                                              ; preds = %249
  %261 = load i16, ptr %237, align 4
  %262 = or i16 %261, 1
  store i16 %262, ptr %237, align 4
  br label %267

263:                                              ; preds = %249
  %264 = getelementptr inbounds %struct.offload_callbacks, ptr %126, i32 0, i32 1
  %265 = load ptr, ptr %264, align 4
  %266 = tail call ptr %265(ptr noundef %0, ptr noundef %1) #7
  br label %267

267:                                              ; preds = %263, %260, %113, %91, %28, %24, %22
  %268 = phi i16 [ 1, %28 ], [ %61, %113 ], [ %61, %91 ], [ %129, %263 ], [ %129, %260 ], [ 1, %24 ], [ 1, %22 ]
  %269 = phi ptr [ null, %28 ], [ null, %113 ], [ null, %91 ], [ %266, %263 ], [ null, %260 ], [ null, %24 ], [ null, %22 ]
  %270 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %271 = load i16, ptr %270, align 4
  %272 = or i16 %271, %268
  store i16 %272, ptr %270, align 4
  ret ptr %269
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipv6_gro_complete(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 8192
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 12
  store i16 -8826, ptr %11, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, -513
  store i16 %14, ptr %12, align 2
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %4 to i32
  %18 = ptrtoint ptr %16 to i32
  %19 = sub i32 %17, %18
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 14
  %22 = trunc i32 %1 to i16
  %23 = add i16 %20, %22
  store i16 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %10, %2
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = sub i32 %26, %1
  %28 = trunc i32 %27 to i16
  %29 = add i16 %28, -40
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %31 = getelementptr inbounds %struct.ipv6hdr, ptr %5, i32 0, i32 2
  store i16 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ipv6hdr, ptr %5, i32 0, i32 3
  br label %33

33:                                               ; preds = %50, %24
  %34 = phi i32 [ 40, %24 ], [ %56, %50 ]
  %35 = phi ptr [ %32, %24 ], [ %51, %50 ]
  %36 = phi i32 [ 0, %24 ], [ %57, %50 ]
  %37 = phi ptr [ %5, %24 ], [ %51, %50 ]
  %38 = load i8, ptr %35, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %33
  %41 = zext i8 %38 to i32
  %42 = getelementptr [256 x ptr], ptr @inet6_offloads, i32 0, i32 %41
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %62, label %45, !prof !9

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.net_offload, ptr %43, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45, %33
  %51 = getelementptr i8, ptr %37, i32 %34
  %52 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %51, i32 0, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 3
  %56 = add nuw nsw i32 %55, 8
  %57 = add i32 %56, %36
  br label %33

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.offload_callbacks, ptr %43, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63, !prof !9

62:                                               ; preds = %58, %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 333, i32 noundef 9, ptr noundef null) #7
  br label %67

63:                                               ; preds = %58
  %64 = add i32 %1, 40
  %65 = add i32 %64, %36
  %66 = tail call i32 %60(ptr noundef %0, i32 noundef %65) #7
  br label %67

67:                                               ; preds = %63, %62
  %68 = phi i32 [ %66, %63 ], [ -38, %62 ]
  ret i32 %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_gso_pull_exthdrs(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  br label %6

6:                                                ; preds = %62, %2
  %7 = phi i32 [ %1, %2 ], [ %63, %62 ]
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = getelementptr [256 x ptr], ptr @inet6_offloads, i32 0, i32 %7
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %65, label %13, !prof !9

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.net_offload, ptr %11, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %65, label %18

18:                                               ; preds = %13, %6
  %19 = load i32, ptr %3, align 8
  %20 = load i32, ptr %4, align 4
  %21 = sub i32 %19, %20
  %22 = icmp ult i32 %21, 8
  br i1 %22, label %23, label %33, !prof !9

23:                                               ; preds = %18
  %24 = icmp ult i32 %19, 8
  br i1 %24, label %65, label %25, !prof !9

25:                                               ; preds = %23
  %26 = sub nuw nsw i32 8, %21
  %27 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %26) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %65, label %29, !prof !9

29:                                               ; preds = %25
  %30 = load i32, ptr %3, align 8
  %31 = load i32, ptr %4, align 4
  %32 = sub i32 %30, %31
  br label %33

33:                                               ; preds = %29, %18
  %34 = phi i32 [ %32, %29 ], [ %21, %18 ]
  %35 = phi i32 [ %31, %29 ], [ %20, %18 ]
  %36 = phi i32 [ %30, %29 ], [ %19, %18 ]
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %37, i32 0, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 3
  %42 = add nuw nsw i32 %41, 8
  %43 = icmp ugt i32 %42, %34
  br i1 %43, label %44, label %54, !prof !9

44:                                               ; preds = %33
  %45 = icmp ult i32 %36, %42
  br i1 %45, label %65, label %46, !prof !9

46:                                               ; preds = %44
  %47 = sub i32 %42, %34
  %48 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %47) #7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %65, label %50, !prof !9

50:                                               ; preds = %46
  %51 = load ptr, ptr %5, align 4
  %52 = load i32, ptr %3, align 8
  %53 = load i32, ptr %4, align 4
  br label %54

54:                                               ; preds = %50, %33
  %55 = phi i32 [ %53, %50 ], [ %35, %33 ]
  %56 = phi i32 [ %52, %50 ], [ %36, %33 ]
  %57 = phi ptr [ %51, %50 ], [ %37, %33 ]
  %58 = load i8, ptr %57, align 1
  %59 = sub i32 %56, %42
  store i32 %59, ptr %3, align 8
  %60 = icmp ult i32 %59, %55
  br i1 %60, label %61, label %62, !prof !9

61:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

62:                                               ; preds = %54
  %63 = zext i8 %58 to i32
  %64 = getelementptr i8, ptr %57, i32 %42
  store ptr %64, ptr %5, align 4
  br label %6

65:                                               ; preds = %46, %44, %25, %23, %13, %9
  ret i32 %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_find_1stfragopt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sit_gso_segment(ptr noundef %0, i64 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @ipv6_gso_segment(ptr noundef %0, i64 noundef %1)
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sit_ip6ip6_gro_receive(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i16 1, ptr %8, align 4
  br label %12

9:                                                ; preds = %2
  %10 = or i16 %4, 2
  store i16 %10, ptr %3, align 2
  %11 = tail call ptr @ipv6_gro_receive(ptr noundef %0, ptr noundef %1)
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ null, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sit_gro_complete(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %4 = load i16, ptr %3, align 8
  %5 = or i16 %4, 8192
  store i16 %5, ptr %3, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 256
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %1
  %14 = load i16, ptr %3, align 8
  %15 = and i16 %14, 8192
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 12
  store i16 -8826, ptr %18, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %20 = load i16, ptr %19, align 2
  %21 = and i16 %20, -513
  store i16 %21, ptr %19, align 2
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %12 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 14
  %29 = trunc i32 %1 to i16
  %30 = add i16 %27, %29
  store i16 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %17, %2
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = sub i32 %33, %1
  %35 = trunc i32 %34 to i16
  %36 = add i16 %35, -40
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #7
  %38 = getelementptr inbounds %struct.ipv6hdr, ptr %13, i32 0, i32 2
  store i16 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ipv6hdr, ptr %13, i32 0, i32 3
  br label %40

40:                                               ; preds = %57, %31
  %41 = phi i32 [ 40, %31 ], [ %63, %57 ]
  %42 = phi ptr [ %39, %31 ], [ %58, %57 ]
  %43 = phi i32 [ 0, %31 ], [ %64, %57 ]
  %44 = phi ptr [ %13, %31 ], [ %58, %57 ]
  %45 = load i8, ptr %42, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %40
  %48 = zext i8 %45 to i32
  %49 = getelementptr [256 x ptr], ptr @inet6_offloads, i32 0, i32 %48
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52, !prof !9

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.net_offload, ptr %50, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %52, %40
  %58 = getelementptr i8, ptr %44, i32 %41
  %59 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %58, i32 0, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 3
  %63 = add nuw nsw i32 %62, 8
  %64 = add i32 %63, %43
  br label %40

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.offload_callbacks, ptr %50, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70, !prof !9

69:                                               ; preds = %65, %47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 333, i32 noundef 9, ptr noundef null) #7
  br label %74

70:                                               ; preds = %65
  %71 = add i32 %1, 40
  %72 = add i32 %71, %43
  %73 = tail call i32 %67(ptr noundef %0, i32 noundef %72) #7
  br label %74

74:                                               ; preds = %70, %69
  %75 = phi i32 [ %73, %70 ], [ -38, %69 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ip6ip6_gso_segment(ptr noundef %0, i64 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @ipv6_gso_segment(ptr noundef %0, i64 noundef %1)
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip6ip6_gro_complete(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %4 = load i16, ptr %3, align 8
  %5 = or i16 %4, 8192
  store i16 %5, ptr %3, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 512
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %1
  %14 = load i16, ptr %3, align 8
  %15 = and i16 %14, 8192
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 12
  store i16 -8826, ptr %18, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %20 = load i16, ptr %19, align 2
  %21 = and i16 %20, -513
  store i16 %21, ptr %19, align 2
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %12 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 14
  %29 = trunc i32 %1 to i16
  %30 = add i16 %27, %29
  store i16 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %17, %2
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = sub i32 %33, %1
  %35 = trunc i32 %34 to i16
  %36 = add i16 %35, -40
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #7
  %38 = getelementptr inbounds %struct.ipv6hdr, ptr %13, i32 0, i32 2
  store i16 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ipv6hdr, ptr %13, i32 0, i32 3
  br label %40

40:                                               ; preds = %57, %31
  %41 = phi i32 [ 40, %31 ], [ %63, %57 ]
  %42 = phi ptr [ %39, %31 ], [ %58, %57 ]
  %43 = phi i32 [ 0, %31 ], [ %64, %57 ]
  %44 = phi ptr [ %13, %31 ], [ %58, %57 ]
  %45 = load i8, ptr %42, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %40
  %48 = zext i8 %45 to i32
  %49 = getelementptr [256 x ptr], ptr @inet6_offloads, i32 0, i32 %48
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52, !prof !9

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.net_offload, ptr %50, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %52, %40
  %58 = getelementptr i8, ptr %44, i32 %41
  %59 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %58, i32 0, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 3
  %63 = add nuw nsw i32 %62, 8
  %64 = add i32 %63, %43
  br label %40

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.offload_callbacks, ptr %50, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70, !prof !9

69:                                               ; preds = %65, %47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 333, i32 noundef 9, ptr noundef null) #7
  br label %74

70:                                               ; preds = %65
  %71 = add i32 %1, 40
  %72 = add i32 %71, %43
  %73 = tail call i32 %67(ptr noundef %0, i32 noundef %72) #7
  br label %74

74:                                               ; preds = %70, %69
  %75 = phi i32 [ %73, %70 ], [ -38, %69 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ip4ip6_gso_segment(ptr noundef %0, i64 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @inet_gso_segment(ptr noundef %0, i64 noundef %1) #7
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ip4ip6_gro_receive(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i16 1, ptr %8, align 4
  br label %12

9:                                                ; preds = %2
  %10 = or i16 %4, 2
  store i16 %10, ptr %3, align 2
  %11 = tail call ptr @inet_gro_receive(ptr noundef %0, ptr noundef %1) #7
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ null, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip4ip6_gro_complete(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %4 = load i16, ptr %3, align 8
  %5 = or i16 %4, 8192
  store i16 %5, ptr %3, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 512
  store i32 %10, ptr %8, align 8
  %11 = tail call i32 @inet_gro_complete(ptr noundef %0, i32 noundef %1) #7
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_gso_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_gro_complete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!10 = !{i64 2153620664, i64 2153621152, i64 2153620701, i64 2153620757, i64 2153620791, i64 2153620815, i64 2153620856, i64 2153620877, i64 2153620905, i64 2153620939}
