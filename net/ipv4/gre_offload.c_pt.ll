; ModuleID = '/llk/IR/net/ipv4/gre_offload.c_pt.bc'
source_filename = "../net/ipv4/gre_offload.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_offload = type { %struct.offload_callbacks, i32 }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
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
%union.anon.124 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.gre_base_hdr = type { i16, i16 }
%struct.anon.132 = type { i16, i16 }
%struct.packet_offload = type { i16, i16, %struct.offload_callbacks, %struct.list_head }

@__initcall__kmod_gre_offload__526_289_gre_offload_init6 = internal global ptr @gre_offload_init, section ".initcall6.init", align 4
@gre_offload = internal constant %struct.net_offload { %struct.offload_callbacks { ptr @gre_gso_segment, ptr @gre_gro_receive, ptr @gre_gro_complete }, i32 0 }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_gre_offload__526_289_gre_offload_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gre_offload_init() #0 section ".init.text" {
  %1 = tail call i32 @inet_add_offload(ptr noundef nonnull @gre_offload, i8 noundef zeroext 47) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = tail call i32 @inet6_add_offload(ptr noundef nonnull @gre_offload, i8 noundef zeroext 47) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @inet_del_offload(ptr noundef nonnull @gre_offload, i8 noundef zeroext 47) #7
  br label %8

8:                                                ; preds = %6, %3, %0
  %9 = phi i32 [ %1, %0 ], [ %4, %6 ], [ 0, %3 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_del_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gre_gso_segment(ptr noundef %0, i64 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 15
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = sub nsw i32 %6, %9
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %12 = load i16, ptr %11, align 2
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %14 = load i16, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %16 = load i16, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 8192
  %20 = icmp eq i16 %19, 0
  %21 = icmp ult i32 %10, 4
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %234, label %23, !prof !8

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %25, %27
  %29 = icmp ugt i32 %10, %28
  br i1 %29, label %30, label %40, !prof !9

30:                                               ; preds = %23
  %31 = icmp ult i32 %25, %10
  br i1 %31, label %234, label %32, !prof !9

32:                                               ; preds = %30
  %33 = sub i32 %10, %28
  %34 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %33) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %234, label %36, !prof !9

36:                                               ; preds = %32
  %37 = load i16, ptr %17, align 8
  %38 = load i32, ptr %24, align 8
  %39 = load i32, ptr %26, align 4
  br label %40

40:                                               ; preds = %36, %23
  %41 = phi i32 [ %39, %36 ], [ %27, %23 ]
  %42 = phi i32 [ %38, %36 ], [ %25, %23 ]
  %43 = phi i16 [ %37, %36 ], [ %18, %23 ]
  %44 = and i16 %43, -8193
  store i16 %44, ptr %17, align 8
  %45 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 36
  store i32 0, ptr %45, align 4
  %46 = sub i32 %42, %10
  store i32 %46, ptr %24, align 8
  %47 = icmp ult i32 %46, %41
  br i1 %47, label %48, label %49, !prof !9

48:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 %10
  store ptr %52, ptr %50, align 4
  %53 = load ptr, ptr %3, align 8
  %54 = ptrtoint ptr %52 to i32
  %55 = ptrtoint ptr %53 to i32
  %56 = sub i32 %54, %55
  %57 = trunc i32 %56 to i16
  store i16 %57, ptr %11, align 2
  %58 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 14
  %59 = load i16, ptr %58, align 4
  %60 = zext i16 %59 to i32
  %61 = getelementptr i8, ptr %53, i32 %60
  %62 = ptrtoint ptr %61 to i32
  %63 = sub i32 %62, %54
  %64 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %65 = trunc i32 %63 to i16
  %66 = add i16 %65, %57
  store i16 %66, ptr %64, align 4
  store i16 %65, ptr %15, align 8
  %67 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 12
  %68 = load i16, ptr %67, align 8
  store i16 %68, ptr %13, align 8
  %69 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.skb_shared_info, ptr %70, i32 0, i32 8
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 128
  %74 = icmp eq i32 %73, 0
  %75 = trunc i32 %73 to i16
  %76 = shl nuw nsw i16 %75, 7
  %77 = and i16 %43, -24577
  %78 = or i16 %76, %77
  store i16 %78, ptr %17, align 8
  %79 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 27
  %82 = load i64, ptr %81, align 16
  %83 = and i64 %82, %1
  %84 = and i64 %83, -68719476737
  %85 = select i1 %74, i64 %83, i64 %84
  %86 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, -2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %49
  %91 = inttoptr i32 %88 to ptr
  %92 = getelementptr inbounds %struct.dst_entry, ptr %91, i32 0, i32 4
  %93 = load ptr, ptr %92, align 4
  %94 = icmp ne ptr %93, null
  br label %95

95:                                               ; preds = %90, %49
  %96 = phi i1 [ false, %49 ], [ %94, %90 ]
  %97 = select i1 %74, i1 true, i1 %96
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 23
  %100 = load i64, ptr %99, align 16
  %101 = and i64 %100, 8
  %102 = icmp eq i64 %101, 0
  br label %103

103:                                              ; preds = %98, %95
  %104 = phi i1 [ true, %95 ], [ %102, %98 ]
  %105 = tail call ptr @skb_mac_gso_segment(ptr noundef %0, i64 noundef %85) #7
  %106 = icmp eq ptr %105, null
  %107 = icmp ugt ptr %105, inttoptr (i32 -4096 to ptr)
  %108 = or i1 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %103
  store i16 %14, ptr %13, align 8
  %110 = load i16, ptr %17, align 8
  %111 = or i16 %110, 8192
  store i16 %111, ptr %17, align 8
  %112 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %10) #7
  %113 = load ptr, ptr %50, align 4
  %114 = load ptr, ptr %3, align 8
  %115 = ptrtoint ptr %113 to i32
  %116 = ptrtoint ptr %114 to i32
  %117 = sub i32 %115, %116
  %118 = trunc i32 %117 to i16
  store i16 %118, ptr %7, align 2
  store i16 %12, ptr %11, align 2
  %119 = add i16 %16, %12
  store i16 %119, ptr %64, align 4
  store i16 %16, ptr %15, align 8
  br label %234

120:                                              ; preds = %103
  %121 = getelementptr inbounds %struct.sk_buff, ptr %105, i32 0, i32 15
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.skb_shared_info, ptr %122, i32 0, i32 8
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 4096
  %126 = icmp eq i32 %125, 0
  %127 = load ptr, ptr %3, align 8
  %128 = load i16, ptr %11, align 2
  %129 = zext i16 %128 to i32
  %130 = getelementptr i8, ptr %127, i32 %129
  %131 = ptrtoint ptr %130 to i32
  %132 = ptrtoint ptr %127 to i32
  %133 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, %132
  %136 = sub i32 %131, %135
  %137 = sub i32 %136, %10
  %138 = sub i32 0, %136
  %139 = trunc i32 %137 to i16
  br label %140

140:                                              ; preds = %231, %120
  %141 = phi ptr [ %105, %120 ], [ %232, %231 ]
  %142 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 13
  %143 = load i16, ptr %142, align 8
  %144 = and i16 %143, 96
  %145 = icmp eq i16 %144, 96
  br i1 %145, label %146, label %157

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 13, i32 0, i32 19
  %148 = load i16, ptr %147, align 2
  %149 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 13, i32 0, i32 15
  store i16 %148, ptr %149, align 2
  %150 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 13, i32 0, i32 18
  %151 = load i16, ptr %150, align 4
  %152 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 13, i32 0, i32 14
  store i16 %151, ptr %152, align 4
  %153 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 13, i32 0, i32 17
  %154 = load i16, ptr %153, align 2
  %155 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 13, i32 0, i32 13
  store i16 %154, ptr %155, align 2
  %156 = or i16 %143, 8192
  store i16 %156, ptr %142, align 8
  br label %157

157:                                              ; preds = %146, %140
  %158 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 7
  store i16 %16, ptr %158, align 8
  %159 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 13, i32 0, i32 16
  store i16 %14, ptr %159, align 8
  %160 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 17
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr i8, ptr %161, i32 %138
  store ptr %162, ptr %160, align 4
  %163 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 5
  %164 = load i32, ptr %163, align 8
  %165 = add i32 %164, %136
  store i32 %165, ptr %163, align 8
  %166 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 16
  %167 = load ptr, ptr %166, align 8
  %168 = ptrtoint ptr %162 to i32
  %169 = ptrtoint ptr %167 to i32
  %170 = sub i32 %168, %169
  %171 = trunc i32 %170 to i16
  %172 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 13, i32 0, i32 19
  store i16 %171, ptr %172, align 2
  %173 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 13, i32 0, i32 18
  %174 = add i16 %16, %171
  store i16 %174, ptr %173, align 4
  %175 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 13, i32 0, i32 17
  %176 = add i16 %171, %139
  store i16 %176, ptr %175, align 2
  br i1 %74, label %231, label %177

177:                                              ; preds = %157
  %178 = zext i16 %176 to i32
  %179 = getelementptr i8, ptr %167, i32 %178
  %180 = getelementptr %struct.gre_base_hdr, ptr %179, i32 1
  br i1 %126, label %200, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 15
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.skb_shared_info, ptr %183, i32 0, i32 4
  %185 = load i16, ptr %184, align 4
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %200, label %187

187:                                              ; preds = %181
  %188 = getelementptr %struct.sk_buff, ptr %141, i32 0, i32 3, i32 32
  %189 = load i32, ptr %188, align 4
  %190 = zext i16 %185 to i32
  %191 = add i32 %170, %165
  %192 = add i32 %189, %190
  %193 = sub i32 %191, %192
  %194 = tail call i32 @llvm.bswap.i32(i32 %193)
  %195 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %194) #8, !srcloc !11
  %196 = xor i32 %195, -1
  %197 = lshr i32 %196, 16
  %198 = trunc i32 %197 to i16
  %199 = xor i16 %198, -1
  br label %200

200:                                              ; preds = %187, %181, %177
  %201 = phi i16 [ %199, %187 ], [ 0, %181 ], [ 0, %177 ]
  store i16 %201, ptr %180, align 2
  %202 = getelementptr %struct.gre_base_hdr, ptr %179, i32 1, i32 1
  store i16 0, ptr %202, align 2
  %203 = load i16, ptr %142, align 8
  %204 = and i16 %203, 8192
  %205 = icmp ne i16 %204, 0
  %206 = select i1 %205, i1 true, i1 %104
  br i1 %206, label %207, label %226

207:                                              ; preds = %200
  %208 = load ptr, ptr %166, align 8
  %209 = load i16, ptr %175, align 2
  %210 = zext i16 %209 to i32
  %211 = getelementptr i8, ptr %208, i32 %210
  %212 = getelementptr %struct.sk_buff, ptr %141, i32 0, i32 3, i32 44
  %213 = load i16, ptr %212, align 4
  %214 = zext i16 %213 to i32
  %215 = getelementptr i8, ptr %208, i32 %214
  %216 = ptrtoint ptr %215 to i32
  %217 = ptrtoint ptr %211 to i32
  %218 = sub i32 %216, %217
  %219 = getelementptr %struct.sk_buff, ptr %141, i32 0, i32 3, i32 40
  %220 = load i32, ptr %219, align 4
  store i32 0, ptr %219, align 4
  store i16 %209, ptr %212, align 4
  %221 = tail call i32 @csum_partial(ptr noundef %211, i32 noundef %218, i32 noundef %220) #7
  %222 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %221) #8, !srcloc !11
  %223 = xor i32 %222, -1
  %224 = lshr i32 %223, 16
  %225 = trunc i32 %224 to i16
  store i16 %225, ptr %180, align 2
  br label %231

226:                                              ; preds = %200
  %227 = or i16 %203, 96
  store i16 %227, ptr %142, align 8
  %228 = load i16, ptr %175, align 2
  %229 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 13, i32 0, i32 4
  store i16 %228, ptr %229, align 4
  %230 = getelementptr inbounds %struct.anon.132, ptr %229, i32 0, i32 1
  store i16 4, ptr %230, align 2
  br label %231

231:                                              ; preds = %226, %207, %157
  %232 = load ptr, ptr %141, align 8
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %140

234:                                              ; preds = %231, %109, %32, %30, %2
  %235 = phi ptr [ inttoptr (i32 -22 to ptr), %32 ], [ %105, %109 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %30 ], [ %105, %231 ]
  ret ptr %235
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gre_gro_receive(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %176

7:                                                ; preds = %2
  %8 = or i16 %4, 2
  store i16 %8, ptr %3, align 2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %11
  br i1 %17, label %18, label %36

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = icmp ugt i32 %11, %23
  br i1 %24, label %25, label %31, !prof !9

25:                                               ; preds = %18
  %26 = icmp ult i32 %20, %11
  br i1 %26, label %176, label %27, !prof !9

27:                                               ; preds = %25
  %28 = sub i32 %11, %23
  %29 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %28) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %176, label %31

31:                                               ; preds = %27, %18
  store ptr null, ptr %12, align 8
  store i32 0, ptr %15, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 %10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %176, label %36, !prof !9

36:                                               ; preds = %31, %7
  %37 = phi ptr [ %34, %31 ], [ %14, %7 ]
  %38 = load i16, ptr %37, align 1
  %39 = zext i16 %38 to i32
  %40 = and i32 %39, 65375
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %176

42:                                               ; preds = %36
  %43 = and i32 %39, 128
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i16, ptr %3, align 2
  %47 = and i16 %46, 512
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %176

49:                                               ; preds = %45, %42
  %50 = getelementptr inbounds %struct.gre_base_hdr, ptr %37, i32 0, i32 1
  %51 = load i16, ptr %50, align 1
  %52 = tail call ptr @gro_find_receive_by_type(i16 noundef zeroext %51) #7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %176, label %54

54:                                               ; preds = %49
  %55 = load i16, ptr %37, align 1
  %56 = and i16 %55, 32
  %57 = icmp eq i16 %56, 0
  %58 = select i1 %57, i32 4, i32 8
  %59 = and i16 %55, 128
  %60 = icmp eq i16 %59, 0
  %61 = add nuw nsw i32 %58, 4
  %62 = select i1 %60, i32 %58, i32 %61
  %63 = add i32 %62, %10
  %64 = load i32, ptr %15, align 4
  %65 = icmp ult i32 %64, %63
  br i1 %65, label %66, label %87

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = sub i32 %68, %70
  %72 = icmp ugt i32 %63, %71
  br i1 %72, label %73, label %79, !prof !9

73:                                               ; preds = %66
  %74 = icmp ult i32 %68, %63
  br i1 %74, label %176, label %75, !prof !9

75:                                               ; preds = %73
  %76 = sub i32 %63, %71
  %77 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %76) #7
  %78 = icmp eq ptr %77, null
  br i1 %78, label %176, label %79

79:                                               ; preds = %75, %66
  store ptr null, ptr %12, align 8
  store i32 0, ptr %15, align 4
  %80 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 %10
  %83 = icmp eq ptr %82, null
  br i1 %83, label %176, label %84, !prof !9

84:                                               ; preds = %79
  %85 = load i16, ptr %82, align 1
  %86 = and i16 %85, 128
  br label %87

87:                                               ; preds = %84, %54
  %88 = phi i16 [ %86, %84 ], [ %59, %54 ]
  %89 = phi ptr [ %82, %84 ], [ %37, %54 ]
  %90 = icmp eq i16 %88, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %93 = load i16, ptr %92, align 4
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = tail call fastcc zeroext i1 @__skb_gro_checksum_validate_needed(ptr noundef %1)
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = tail call fastcc zeroext i16 @__skb_gro_checksum_validate_complete(ptr noundef %1)
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %176

100:                                              ; preds = %97, %95
  tail call fastcc void @skb_gro_incr_csum_unnecessary(ptr noundef %1)
  %101 = load i16, ptr %3, align 2
  %102 = and i16 %101, 60
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i32 -1, ptr %105, align 4
  %106 = or i16 %101, 4
  store i16 %106, ptr %3, align 2
  br label %107

107:                                              ; preds = %104, %100, %91, %87
  %108 = load ptr, ptr %0, align 4
  %109 = icmp eq ptr %108, %0
  br i1 %109, label %144, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.gre_base_hdr, ptr %89, i32 0, i32 1
  %112 = getelementptr %struct.gre_base_hdr, ptr %89, i32 1
  br label %113

113:                                              ; preds = %141, %110
  %114 = phi ptr [ %108, %110 ], [ %142, %141 ]
  %115 = getelementptr inbounds %struct.sk_buff, ptr %114, i32 0, i32 3, i32 26
  %116 = load i16, ptr %115, align 2
  %117 = and i16 %116, 1
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %141, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.sk_buff, ptr %114, i32 0, i32 17
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr i8, ptr %121, i32 %10
  %123 = load i16, ptr %122, align 1
  %124 = load i16, ptr %89, align 1
  %125 = icmp eq i16 %123, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.gre_base_hdr, ptr %122, i32 0, i32 1
  %128 = load i16, ptr %127, align 1
  %129 = load i16, ptr %111, align 1
  %130 = icmp eq i16 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = and i16 %123, 32
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %131
  %135 = getelementptr %struct.gre_base_hdr, ptr %122, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = load i32, ptr %112, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %141, label %139

139:                                              ; preds = %134, %126, %119
  %140 = and i16 %116, -2
  store i16 %140, ptr %115, align 2
  br label %141

141:                                              ; preds = %139, %134, %131, %113
  %142 = load ptr, ptr %114, align 4
  %143 = icmp eq ptr %142, %0
  br i1 %143, label %144, label %113

144:                                              ; preds = %141, %107
  %145 = load i32, ptr %9, align 8
  %146 = add i32 %145, %62
  store i32 %146, ptr %9, align 8
  %147 = load i16, ptr %3, align 2
  %148 = and i16 %147, 4
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %152 = load i32, ptr %151, align 4
  %153 = sub i32 0, %152
  %154 = tail call i32 @csum_partial(ptr noundef %89, i32 noundef %62, i32 noundef %153) #7
  %155 = sub i32 0, %154
  store i32 %155, ptr %151, align 4
  %156 = load i16, ptr %3, align 2
  br label %157

157:                                              ; preds = %150, %144
  %158 = phi i16 [ %147, %144 ], [ %156, %150 ]
  %159 = getelementptr inbounds %struct.packet_offload, ptr %52, i32 0, i32 2, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = lshr i16 %158, 11
  %162 = trunc i16 %161 to i8
  %163 = add nuw nsw i8 %162, 1
  %164 = and i8 %163, 15
  %165 = zext i8 %164 to i16
  %166 = shl nuw nsw i16 %165, 11
  %167 = and i16 %158, -30721
  %168 = or i16 %166, %167
  store i16 %168, ptr %3, align 2
  %169 = icmp eq i8 %164, 15
  br i1 %169, label %170, label %174, !prof !9

170:                                              ; preds = %157
  %171 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %172 = load i16, ptr %171, align 4
  %173 = or i16 %172, 1
  store i16 %173, ptr %171, align 4
  br label %176

174:                                              ; preds = %157
  %175 = tail call ptr %160(ptr noundef %0, ptr noundef %1) #7
  br label %176

176:                                              ; preds = %174, %170, %97, %79, %75, %73, %49, %45, %36, %31, %27, %25, %2
  %177 = phi i16 [ 1, %2 ], [ 1, %31 ], [ 1, %36 ], [ 1, %45 ], [ 1, %79 ], [ 1, %49 ], [ 1, %97 ], [ 0, %170 ], [ 0, %174 ], [ 1, %27 ], [ 1, %25 ], [ 1, %75 ], [ 1, %73 ]
  %178 = phi ptr [ null, %2 ], [ null, %31 ], [ null, %36 ], [ null, %45 ], [ null, %79 ], [ null, %49 ], [ null, %97 ], [ null, %170 ], [ %175, %174 ], [ null, %27 ], [ null, %25 ], [ null, %75 ], [ null, %73 ]
  %179 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %180 = load i16, ptr %179, align 4
  %181 = or i16 %180, %177
  store i16 %181, ptr %179, align 4
  ret ptr %178
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gre_gro_complete(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %7 = load i16, ptr %6, align 8
  %8 = or i16 %7, 8192
  store i16 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 8
  store i32 64, ptr %11, align 8
  %12 = getelementptr inbounds %struct.gre_base_hdr, ptr %5, i32 0, i32 1
  %13 = load i16, ptr %12, align 1
  %14 = load i16, ptr %5, align 1
  %15 = and i16 %14, 32
  %16 = icmp eq i16 %15, 0
  %17 = select i1 %16, i32 4, i32 8
  %18 = and i16 %14, 128
  %19 = icmp eq i16 %18, 0
  %20 = add nuw nsw i32 %17, 4
  %21 = select i1 %19, i32 %17, i32 %20
  %22 = tail call ptr @gro_find_complete_by_type(i16 noundef zeroext %13) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = add i32 %21, %1
  br label %31

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.packet_offload, ptr %22, i32 0, i32 2, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = add i32 %21, %1
  %30 = tail call i32 %28(ptr noundef %0, i32 noundef %29) #7
  br label %31

31:                                               ; preds = %26, %24
  %32 = phi i32 [ %25, %24 ], [ %29, %26 ]
  %33 = phi i32 [ -2, %24 ], [ %30, %26 ]
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %36 = load ptr, ptr %35, align 8
  %37 = ptrtoint ptr %34 to i32
  %38 = ptrtoint ptr %36 to i32
  %39 = sub i32 %37, %38
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 15
  %42 = trunc i32 %32 to i16
  %43 = add i16 %40, %42
  store i16 %43, ptr %41, align 2
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_mac_gso_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gro_find_receive_by_type(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @__skb_gro_checksum_validate_needed(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 96
  %5 = icmp eq i16 %4, 96
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  %8 = load i32, ptr %7, align 8
  br label %24

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %14 to i32
  %18 = ptrtoint ptr %16 to i32
  %19 = sub i32 %12, %17
  %20 = add i32 %19, %18
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %9, %6
  %25 = phi i32 [ %8, %6 ], [ %22, %9 ]
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 18
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 26
  %32 = load i16, ptr %31, align 2
  %33 = and i16 %32, 56
  %34 = icmp eq i16 %33, 0
  br label %35

35:                                               ; preds = %30, %24, %9
  %36 = phi i1 [ false, %24 ], [ false, %9 ], [ %34, %30 ]
  ret i1 %36
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @__skb_gro_checksum_validate_complete(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 26
  %3 = load i16, ptr %2, align 2
  %4 = and i16 %3, 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %8) #8, !srcloc !11
  %10 = icmp ugt i32 %9, -65537
  br i1 %10, label %14, label %11

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store i32 0, ptr %12, align 4
  %13 = tail call zeroext i16 @__skb_gro_checksum_complete(ptr noundef %0) #7
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i16 [ %13, %11 ], [ 0, %6 ]
  ret i16 %15
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @skb_gro_incr_csum_unnecessary(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 26
  %3 = load i16, ptr %2, align 2
  %4 = trunc i16 %3 to i8
  %5 = and i8 %4, 56
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = add i8 %4, 56
  %9 = and i8 %8, 56
  %10 = zext i8 %9 to i16
  %11 = and i16 %3, -57
  %12 = or i16 %11, %10
  store i16 %12, ptr %2, align 2
  br label %36

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %15 = load i16, ptr %14, align 8
  %16 = lshr i16 %15, 5
  %17 = trunc i16 %16 to i2
  switch i2 %17, label %36 [
    i2 1, label %18
    i2 0, label %30
  ]

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %20 = load i16, ptr %19, align 2
  %21 = trunc i16 %20 to i8
  %22 = and i8 %21, 12
  %23 = icmp eq i8 %22, 12
  br i1 %23, label %36, label %24

24:                                               ; preds = %18
  %25 = add i8 %21, 4
  %26 = and i8 %25, 12
  %27 = zext i8 %26 to i16
  %28 = and i16 %20, -13
  %29 = or i16 %28, %27
  store i16 %29, ptr %19, align 2
  br label %36

30:                                               ; preds = %13
  %31 = and i16 %15, -97
  %32 = or i16 %31, 32
  store i16 %32, ptr %14, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %34 = load i16, ptr %33, align 2
  %35 = and i16 %34, -13
  store i16 %35, ptr %33, align 2
  br label %36

36:                                               ; preds = %30, %24, %18, %13, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_gro_checksum_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gro_find_complete_by_type(i16 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 2002, i32 2000}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153275780, i64 2153276268, i64 2153275817, i64 2153275873, i64 2153275907, i64 2153275931, i64 2153275972, i64 2153275993, i64 2153276021, i64 2153276055}
!11 = !{i64 5178335}
