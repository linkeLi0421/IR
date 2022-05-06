; ModuleID = '/llk/IR/net/ipv4/tcp_offload.c_pt.bc'
source_filename = "../net/ipv4/tcp_offload.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_gro_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_gro_complete\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_gro_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_offload = type { %struct.offload_callbacks, i32 }
%struct.offload_callbacks = type { ptr, ptr, ptr }
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
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.138, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.139, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.140, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.11, %union.anon.13, %union.anon.14, i16, i8, i8, i32, %union.anon.16, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.134, [0 x i32], %union.anon.135, i16, i16, %union.anon.136, %struct.refcount_struct, [0 x i32], %union.anon.137 }
%union.anon.11 = type { i64 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.16 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.55 }
%union.anon.55 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { %struct.hlist_node }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.138 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.139 = type { ptr }
%union.anon.140 = type { ptr }
%struct.sk_buff_head = type { %union.anon.5, i32, %struct.spinlock }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.anon.164 = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@tcp_gso_segment.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [23 x i8] c"net/ipv4/tcp_offload.c\00", align 1
@__kstrtab_tcp_gro_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_gro_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_gro_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_gro_complete to i32), ptr @__kstrtab_tcp_gro_complete, ptr @__kstrtabns_tcp_gro_complete }, section "___ksymtab+tcp_gro_complete", align 4
@tcpv4_offload = internal constant %struct.net_offload { %struct.offload_callbacks { ptr @tcp4_gso_segment, ptr @tcp4_gro_receive, ptr @tcp4_gro_complete }, i32 0 }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_tcp_gro_complete], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tcp_gso_segment(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.tcphdr, ptr %8, i32 0, i32 4
  %10 = load i16, ptr %9, align 4
  %11 = lshr i16 %10, 2
  %12 = and i16 %11, 60
  %13 = zext i16 %12 to i32
  %14 = icmp ult i16 %12, 20
  br i1 %14, label %326, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %17, %19
  %21 = icmp ult i32 %20, %13
  br i1 %21, label %22, label %31, !prof !8

22:                                               ; preds = %15
  %23 = icmp ult i32 %17, %13
  br i1 %23, label %326, label %24, !prof !8

24:                                               ; preds = %22
  %25 = sub i32 %13, %20
  %26 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %25) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %326, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %16, align 8
  %30 = load i32, ptr %18, align 4
  br label %31

31:                                               ; preds = %28, %15
  %32 = phi i32 [ %30, %28 ], [ %19, %15 ]
  %33 = phi i32 [ %29, %28 ], [ %17, %15 ]
  %34 = and i32 %33, 65535
  %35 = xor i32 %34, 65535
  %36 = sub i32 %33, %13
  store i32 %36, ptr %16, align 8
  %37 = icmp ult i32 %36, %32
  br i1 %37, label %38, label %39, !prof !8

38:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 %13
  store ptr %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 4
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = icmp ugt i32 %36, %47
  br i1 %48, label %49, label %326, !prof !10

49:                                               ; preds = %39
  %50 = or i64 %1, 131072
  %51 = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 8
  %52 = load i32, ptr %51, align 8
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 16
  %55 = and i64 %54, %50
  %56 = icmp eq i64 %55, %54
  br i1 %56, label %57, label %70

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 6
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  %61 = and i64 %1, 64
  %62 = icmp ne i64 %61, 0
  %63 = or i1 %62, %60
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = add i32 %36, -1
  %66 = add i32 %65, %47
  %67 = udiv i32 %66, %47
  %68 = trunc i32 %67 to i16
  %69 = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 5
  store i16 %68, ptr %69, align 2
  br label %326

70:                                               ; preds = %57, %49
  %71 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, @tcp_wfree
  %74 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %75 = load i16, ptr %74, align 8
  %76 = and i16 %75, -129
  store i16 %76, ptr %74, align 8
  %77 = tail call ptr @skb_segment(ptr noundef %0, i64 noundef %1) #6
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %326, label %79

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 13
  %81 = load i16, ptr %80, align 8
  %82 = and i16 %75, 128
  %83 = and i16 %81, -129
  %84 = or i16 %83, %82
  store i16 %84, ptr %80, align 8
  %85 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 15
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.skb_shared_info, ptr %86, i32 0, i32 4
  %88 = load i16, ptr %87, align 4
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %79
  %91 = getelementptr inbounds %struct.skb_shared_info, ptr %86, i32 0, i32 5
  %92 = load i16, ptr %91, align 2
  %93 = zext i16 %92 to i32
  %94 = mul nuw i32 %93, %47
  br label %95

95:                                               ; preds = %90, %79
  %96 = phi i32 [ %94, %90 ], [ %47, %79 ]
  %97 = add nuw nsw i32 %35, %13
  %98 = add i32 %97, %96
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  %100 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 16
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 13, i32 0, i32 17
  %103 = load i16, ptr %102, align 2
  %104 = zext i16 %103 to i32
  %105 = getelementptr i8, ptr %101, i32 %104
  %106 = getelementptr inbounds %struct.tcphdr, ptr %105, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  %109 = load ptr, ptr %43, align 4
  %110 = getelementptr inbounds %struct.skb_shared_info, ptr %109, i32 0, i32 3
  %111 = load i8, ptr %110, align 1
  %112 = and i8 %111, 2
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %135, label %114, !prof !10

114:                                              ; preds = %95
  %115 = getelementptr inbounds %struct.skb_shared_info, ptr %109, i32 0, i32 9
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq ptr %77, null
  br i1 %117, label %135, label %118

118:                                              ; preds = %132, %114
  %119 = phi ptr [ %133, %132 ], [ %77, %114 ]
  %120 = phi i32 [ %121, %132 ], [ %108, %114 ]
  %121 = add i32 %120, %96
  %122 = sub i32 %116, %121
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 15
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.skb_shared_info, ptr %126, i32 0, i32 3
  %128 = load i8, ptr %127, align 1
  %129 = or i8 %128, 2
  store i8 %129, ptr %127, align 1
  %130 = load ptr, ptr %125, align 4
  %131 = getelementptr inbounds %struct.skb_shared_info, ptr %130, i32 0, i32 9
  store i32 %116, ptr %131, align 4
  br label %135

132:                                              ; preds = %118
  %133 = load ptr, ptr %119, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %118

135:                                              ; preds = %132, %124, %114, %95
  %136 = getelementptr inbounds %struct.tcphdr, ptr %105, i32 0, i32 6
  %137 = load i16, ptr %136, align 4
  %138 = zext i16 %137 to i32
  %139 = add i32 %99, %138
  %140 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %139) #7, !srcloc !11
  %141 = xor i32 %140, -1
  %142 = lshr i32 %141, 16
  %143 = trunc i32 %142 to i16
  %144 = xor i16 %143, -1
  %145 = load ptr, ptr %77, align 8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %223, label %147

147:                                              ; preds = %135
  %148 = zext i16 %144 to i32
  %149 = xor i32 %148, -1
  %150 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %151 = getelementptr inbounds %struct.tcphdr, ptr %105, i32 0, i32 4
  %152 = load i16, ptr %151, align 4
  br label %153

153:                                              ; preds = %207, %147
  %154 = phi i16 [ %152, %147 ], [ %220, %207 ]
  %155 = phi ptr [ %77, %147 ], [ %209, %207 ]
  %156 = phi i32 [ 0, %147 ], [ %208, %207 ]
  %157 = phi ptr [ %105, %147 ], [ %215, %207 ]
  %158 = phi i32 [ %108, %147 ], [ %198, %207 ]
  %159 = getelementptr inbounds %struct.tcphdr, ptr %157, i32 0, i32 4
  %160 = and i16 %154, -2305
  store i16 %160, ptr %159, align 4
  %161 = getelementptr inbounds %struct.tcphdr, ptr %157, i32 0, i32 6
  store i16 %144, ptr %161, align 4
  %162 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 13
  %163 = load i16, ptr %162, align 8
  %164 = and i16 %163, 96
  %165 = icmp eq i16 %164, 96
  br i1 %165, label %166, label %176

166:                                              ; preds = %153
  %167 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 13, i32 0, i32 3
  %168 = load i16, ptr %167, align 2
  %169 = and i16 %168, 1024
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %171, label %197

171:                                              ; preds = %166
  %172 = getelementptr %struct.sk_buff, ptr %155, i32 0, i32 3, i32 40
  store i32 %149, ptr %172, align 4
  %173 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 13, i32 0, i32 4
  %174 = load i16, ptr %173, align 4
  %175 = getelementptr %struct.sk_buff, ptr %155, i32 0, i32 3, i32 44
  store i16 %174, ptr %175, align 4
  br label %197

176:                                              ; preds = %153
  %177 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 16
  %178 = load ptr, ptr %177, align 8
  %179 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 13, i32 0, i32 17
  %180 = load i16, ptr %179, align 2
  %181 = zext i16 %180 to i32
  %182 = getelementptr i8, ptr %178, i32 %181
  %183 = getelementptr %struct.sk_buff, ptr %155, i32 0, i32 3, i32 44
  %184 = load i16, ptr %183, align 4
  %185 = zext i16 %184 to i32
  %186 = getelementptr i8, ptr %178, i32 %185
  %187 = ptrtoint ptr %186 to i32
  %188 = ptrtoint ptr %182 to i32
  %189 = sub i32 %187, %188
  %190 = getelementptr %struct.sk_buff, ptr %155, i32 0, i32 3, i32 40
  %191 = load i32, ptr %190, align 4
  store i32 %149, ptr %190, align 4
  store i16 %180, ptr %183, align 4
  %192 = tail call i32 @csum_partial(ptr noundef %182, i32 noundef %189, i32 noundef %191) #6
  %193 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %192) #7, !srcloc !11
  %194 = xor i32 %193, -1
  %195 = lshr i32 %194, 16
  %196 = trunc i32 %195 to i16
  store i16 %196, ptr %161, align 4
  br label %197

197:                                              ; preds = %176, %171, %166
  %198 = add i32 %158, %96
  br i1 %73, label %199, label %207

199:                                              ; preds = %197
  %200 = load ptr, ptr %71, align 4
  %201 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 4, i32 0, i32 1
  store ptr %200, ptr %201, align 4
  %202 = load ptr, ptr %150, align 4
  %203 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 1
  store ptr %202, ptr %203, align 4
  %204 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 18
  %205 = load i32, ptr %204, align 8
  %206 = add i32 %205, %156
  br label %207

207:                                              ; preds = %199, %197
  %208 = phi i32 [ %206, %199 ], [ %156, %197 ]
  %209 = load ptr, ptr %155, align 8
  %210 = getelementptr inbounds %struct.sk_buff, ptr %209, i32 0, i32 16
  %211 = load ptr, ptr %210, align 8
  %212 = getelementptr inbounds %struct.sk_buff, ptr %209, i32 0, i32 13, i32 0, i32 17
  %213 = load i16, ptr %212, align 2
  %214 = zext i16 %213 to i32
  %215 = getelementptr i8, ptr %211, i32 %214
  %216 = tail call i32 @llvm.bswap.i32(i32 %198)
  %217 = getelementptr inbounds %struct.tcphdr, ptr %215, i32 0, i32 2
  store i32 %216, ptr %217, align 4
  %218 = getelementptr inbounds %struct.tcphdr, ptr %215, i32 0, i32 4
  %219 = load i16, ptr %218, align 4
  %220 = and i16 %219, 32767
  store i16 %220, ptr %218, align 4
  %221 = load ptr, ptr %209, align 8
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %153

223:                                              ; preds = %207, %135
  %224 = phi ptr [ %105, %135 ], [ %215, %207 ]
  %225 = phi i32 [ 0, %135 ], [ %208, %207 ]
  %226 = phi ptr [ %77, %135 ], [ %209, %207 ]
  br i1 %73, label %227, label %263

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.sk_buff, ptr %226, i32 0, i32 1
  %231 = load ptr, ptr %230, align 4
  store ptr %231, ptr %228, align 4
  store ptr %229, ptr %230, align 4
  %232 = load ptr, ptr %71, align 4
  %233 = getelementptr inbounds %struct.sk_buff, ptr %226, i32 0, i32 4, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  store ptr %234, ptr %71, align 4
  store ptr %232, ptr %233, align 4
  %235 = getelementptr inbounds %struct.sk_buff, ptr %226, i32 0, i32 18
  %236 = load i32, ptr %235, align 8
  %237 = add i32 %236, %225
  %238 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %239 = load i32, ptr %238, align 8
  %240 = sub i32 %237, %239
  %241 = icmp sgt i32 %240, -1
  br i1 %241, label %242, label %254, !prof !10

242:                                              ; preds = %227
  %243 = load ptr, ptr %230, align 4
  %244 = getelementptr inbounds %struct.sock, ptr %243, i32 0, i32 23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %244) #6, !srcloc !12
  %245 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %244, ptr %244, i32 %240, ptr elementtype(i32) %244) #6, !srcloc !13
  %246 = extractvalue { i32, i32, i32 } %245, 0
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %252, label %248, !prof !8

248:                                              ; preds = %242
  %249 = add i32 %246, %240
  %250 = or i32 %249, %246
  %251 = icmp sgt i32 %250, -1
  br i1 %251, label %263, label %252, !prof !10

252:                                              ; preds = %248, %242
  %253 = phi i32 [ 2, %242 ], [ 1, %248 ]
  tail call void @refcount_warn_saturate(ptr noundef %244, i32 noundef %253) #6
  br label %263

254:                                              ; preds = %227
  %255 = sub i32 0, %240
  %256 = load ptr, ptr %230, align 4
  %257 = getelementptr inbounds %struct.sock, ptr %256, i32 0, i32 23
  %258 = tail call fastcc zeroext i1 @refcount_sub_and_test(i32 noundef %255, ptr noundef %257)
  %259 = load i1, ptr @tcp_gso_segment.__already_done, align 1
  %260 = xor i1 %259, true
  %261 = select i1 %258, i1 %260, i1 false
  br i1 %261, label %262, label %263, !prof !8

262:                                              ; preds = %254
  store i1 true, ptr @tcp_gso_segment.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef null) #6
  br label %263

263:                                              ; preds = %262, %254, %252, %248, %223
  %264 = getelementptr inbounds %struct.sk_buff, ptr %226, i32 0, i32 14
  %265 = load ptr, ptr %264, align 8
  %266 = getelementptr inbounds %struct.sk_buff, ptr %226, i32 0, i32 16
  %267 = load ptr, ptr %266, align 8
  %268 = getelementptr inbounds %struct.sk_buff, ptr %226, i32 0, i32 13, i32 0, i32 17
  %269 = load i16, ptr %268, align 2
  %270 = zext i16 %269 to i32
  %271 = getelementptr i8, ptr %267, i32 %270
  %272 = ptrtoint ptr %265 to i32
  %273 = ptrtoint ptr %271 to i32
  %274 = getelementptr inbounds %struct.sk_buff, ptr %226, i32 0, i32 6
  %275 = load i32, ptr %274, align 4
  %276 = add i32 %35, %272
  %277 = add i32 %276, %275
  %278 = sub i32 %277, %273
  %279 = tail call i32 @llvm.bswap.i32(i32 %278)
  %280 = getelementptr inbounds %struct.tcphdr, ptr %224, i32 0, i32 6
  %281 = load i16, ptr %280, align 4
  %282 = zext i16 %281 to i32
  %283 = add i32 %279, %282
  %284 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %283) #7, !srcloc !11
  %285 = xor i32 %284, -1
  %286 = lshr i32 %285, 16
  %287 = trunc i32 %286 to i16
  %288 = xor i16 %287, -1
  store i16 %288, ptr %280, align 4
  %289 = getelementptr inbounds %struct.sk_buff, ptr %226, i32 0, i32 13
  %290 = load i16, ptr %289, align 8
  %291 = and i16 %290, 96
  %292 = icmp eq i16 %291, 96
  br i1 %292, label %293, label %305

293:                                              ; preds = %263
  %294 = getelementptr inbounds %struct.sk_buff, ptr %226, i32 0, i32 13, i32 0, i32 3
  %295 = load i16, ptr %294, align 2
  %296 = and i16 %295, 1024
  %297 = icmp eq i16 %296, 0
  br i1 %297, label %298, label %326

298:                                              ; preds = %293
  %299 = zext i16 %288 to i32
  %300 = xor i32 %299, -1
  %301 = getelementptr %struct.sk_buff, ptr %226, i32 0, i32 3, i32 40
  store i32 %300, ptr %301, align 4
  %302 = getelementptr inbounds %struct.sk_buff, ptr %226, i32 0, i32 13, i32 0, i32 4
  %303 = load i16, ptr %302, align 4
  %304 = getelementptr %struct.sk_buff, ptr %226, i32 0, i32 3, i32 44
  store i16 %303, ptr %304, align 4
  br label %326

305:                                              ; preds = %263
  %306 = zext i16 %288 to i32
  %307 = xor i32 %306, -1
  %308 = load ptr, ptr %266, align 8
  %309 = load i16, ptr %268, align 2
  %310 = zext i16 %309 to i32
  %311 = getelementptr i8, ptr %308, i32 %310
  %312 = getelementptr %struct.sk_buff, ptr %226, i32 0, i32 3, i32 44
  %313 = load i16, ptr %312, align 4
  %314 = zext i16 %313 to i32
  %315 = getelementptr i8, ptr %308, i32 %314
  %316 = ptrtoint ptr %315 to i32
  %317 = ptrtoint ptr %311 to i32
  %318 = sub i32 %316, %317
  %319 = getelementptr %struct.sk_buff, ptr %226, i32 0, i32 3, i32 40
  %320 = load i32, ptr %319, align 4
  store i32 %307, ptr %319, align 4
  store i16 %309, ptr %312, align 4
  %321 = tail call i32 @csum_partial(ptr noundef %311, i32 noundef %318, i32 noundef %320) #6
  %322 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %321) #7, !srcloc !11
  %323 = xor i32 %322, -1
  %324 = lshr i32 %323, 16
  %325 = trunc i32 %324 to i16
  store i16 %325, ptr %280, align 4
  br label %326

326:                                              ; preds = %305, %298, %293, %70, %64, %39, %24, %22, %2
  %327 = phi ptr [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %39 ], [ null, %64 ], [ %77, %70 ], [ %77, %305 ], [ inttoptr (i32 -22 to ptr), %24 ], [ %77, %293 ], [ %77, %298 ], [ inttoptr (i32 -22 to ptr), %22 ]
  ret ptr %327
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_wfree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @refcount_sub_and_test(i32 noundef %0, ptr noundef %1) unnamed_addr #3 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #6, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 %0, ptr elementtype(i32) %1) #6, !srcloc !15
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  br label %12

7:                                                ; preds = %2
  %8 = sub i32 %4, %0
  %9 = or i32 %8, %4
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #6
  br label %12

12:                                               ; preds = %11, %7, %6
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tcp_gro_receive(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 20
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 %4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, %5
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = icmp ugt i32 %5, %17
  br i1 %18, label %19, label %25, !prof !8

19:                                               ; preds = %12
  %20 = icmp ult i32 %14, %5
  br i1 %20, label %194, label %21, !prof !8

21:                                               ; preds = %19
  %22 = sub i32 %5, %17
  %23 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %22) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %194, label %25

25:                                               ; preds = %21, %12
  store ptr null, ptr %6, align 8
  store i32 0, ptr %9, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %194, label %30, !prof !8

30:                                               ; preds = %25, %2
  %31 = phi i32 [ 0, %25 ], [ %10, %2 ]
  %32 = phi ptr [ %28, %25 ], [ %8, %2 ]
  %33 = getelementptr inbounds %struct.tcphdr, ptr %32, i32 0, i32 4
  %34 = load i16, ptr %33, align 4
  %35 = lshr i16 %34, 2
  %36 = and i16 %35, 60
  %37 = zext i16 %36 to i32
  %38 = icmp ult i16 %36, 20
  br i1 %38, label %194, label %39

39:                                               ; preds = %30
  %40 = add i32 %4, %37
  %41 = icmp ult i32 %31, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 %44, %46
  %48 = icmp ugt i32 %40, %47
  br i1 %48, label %49, label %55, !prof !8

49:                                               ; preds = %42
  %50 = icmp ult i32 %44, %40
  br i1 %50, label %194, label %51, !prof !8

51:                                               ; preds = %49
  %52 = sub i32 %40, %47
  %53 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %52) #6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %194, label %55

55:                                               ; preds = %51, %42
  store ptr null, ptr %6, align 8
  store i32 0, ptr %9, align 4
  %56 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 %4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %194, label %60, !prof !8

60:                                               ; preds = %55, %39
  %61 = phi ptr [ %58, %55 ], [ %32, %39 ]
  %62 = load i32, ptr %3, align 8
  %63 = add i32 %62, %37
  store i32 %63, ptr %3, align 8
  %64 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %65 = load i32, ptr %64, align 8
  %66 = sub i32 %65, %63
  %67 = getelementptr [5 x i32], ptr %61, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %0, align 4
  %70 = icmp eq ptr %69, %0
  br i1 %70, label %71, label %76

71:                                               ; preds = %94, %60
  %72 = icmp eq i32 %65, %63
  %73 = zext i1 %72 to i32
  %74 = and i32 %68, 12032
  %75 = or i32 %74, %73
  br label %194

76:                                               ; preds = %94, %60
  %77 = phi ptr [ %95, %94 ], [ %69, %60 ]
  %78 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 3, i32 26
  %79 = load i16, ptr %78, align 2
  %80 = and i16 %79, 1
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 16
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 13, i32 0, i32 17
  %86 = load i16, ptr %85, align 2
  %87 = zext i16 %86 to i32
  %88 = getelementptr i8, ptr %84, i32 %87
  %89 = load i32, ptr %61, align 4
  %90 = load i32, ptr %88, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %82
  %93 = and i16 %79, -2
  store i16 %93, ptr %78, align 2
  br label %94

94:                                               ; preds = %92, %76
  %95 = load ptr, ptr %77, align 4
  %96 = icmp eq ptr %95, %0
  br i1 %96, label %71, label %76

97:                                               ; preds = %82
  %98 = zext i16 %86 to i32
  %99 = getelementptr i8, ptr %84, i32 %98
  %100 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 3, i32 12
  %101 = load i16, ptr %100, align 4
  %102 = zext i16 %101 to i32
  %103 = and i32 %68, 32768
  %104 = or i32 %103, %102
  %105 = getelementptr [5 x i32], ptr %99, i32 0, i32 3
  %106 = load i32, ptr %105, align 4
  %107 = xor i32 %106, %68
  %108 = and i32 %107, -35073
  %109 = or i32 %104, %108
  %110 = getelementptr inbounds %struct.tcphdr, ptr %61, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.tcphdr, ptr %99, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = xor i32 %113, %111
  %115 = or i32 %109, %114
  %116 = icmp ugt i16 %36, 20
  br i1 %116, label %117, label %128

117:                                              ; preds = %117, %97
  %118 = phi i32 [ %126, %117 ], [ 20, %97 ]
  %119 = phi i32 [ %125, %117 ], [ %115, %97 ]
  %120 = getelementptr i8, ptr %61, i32 %118
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr i8, ptr %99, i32 %118
  %123 = load i32, ptr %122, align 4
  %124 = xor i32 %123, %121
  %125 = or i32 %124, %119
  %126 = add nuw nsw i32 %118, 4
  %127 = icmp ult i32 %126, %37
  br i1 %127, label %117, label %128

128:                                              ; preds = %117, %97
  %129 = phi i32 [ %115, %97 ], [ %125, %117 ]
  %130 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 3, i32 14
  %131 = load i16, ptr %130, align 2
  %132 = icmp eq i16 %131, 1
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 3, i32 16
  %135 = load i16, ptr %134, align 8
  %136 = icmp ne i16 %135, 1
  %137 = and i16 %79, 1024
  %138 = icmp eq i16 %137, 0
  %139 = select i1 %136, i1 true, i1 %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %133, %128
  %141 = zext i16 %131 to i32
  %142 = or i32 %129, %141
  br label %145

143:                                              ; preds = %133
  %144 = and i16 %79, -1025
  store i16 %144, ptr %78, align 2
  br label %145

145:                                              ; preds = %143, %140
  %146 = phi i32 [ %142, %140 ], [ %129, %143 ]
  %147 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 15
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.skb_shared_info, ptr %148, i32 0, i32 4
  %150 = load i16, ptr %149, align 4
  %151 = zext i16 %150 to i32
  %152 = add i32 %66, -1
  %153 = icmp uge i32 %152, %151
  %154 = zext i1 %153 to i32
  %155 = or i32 %146, %154
  %156 = getelementptr inbounds %struct.tcphdr, ptr %99, i32 0, i32 2
  %157 = load i32, ptr %156, align 4
  %158 = tail call i32 @llvm.bswap.i32(i32 %157)
  %159 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 5
  %160 = load i32, ptr %159, align 8
  %161 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 3, i32 8
  %162 = load i32, ptr %161, align 8
  %163 = add i32 %158, %160
  %164 = sub i32 %163, %162
  %165 = getelementptr inbounds %struct.tcphdr, ptr %61, i32 0, i32 2
  %166 = load i32, ptr %165, align 4
  %167 = tail call i32 @llvm.bswap.i32(i32 %166)
  %168 = xor i32 %164, %167
  %169 = or i32 %155, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %145
  %172 = tail call i32 @skb_gro_receive(ptr noundef %77, ptr noundef %1) #6
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = and i32 %68, 2304
  %176 = load i32, ptr %105, align 4
  %177 = or i32 %176, %175
  store i32 %177, ptr %105, align 4
  br label %178

178:                                              ; preds = %174, %171, %145
  %179 = phi i32 [ %151, %174 ], [ 1, %171 ], [ 1, %145 ]
  %180 = icmp ult i32 %66, %179
  %181 = zext i1 %180 to i32
  %182 = and i32 %68, 12032
  %183 = or i32 %182, %181
  %184 = icmp eq ptr %77, null
  br i1 %184, label %194, label %185

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %187 = load i16, ptr %186, align 2
  %188 = and i16 %187, 1
  %189 = icmp eq i16 %188, 0
  %190 = icmp ne i32 %183, 0
  %191 = select i1 %189, i1 true, i1 %190
  %192 = select i1 %191, i32 %183, i32 0
  %193 = select i1 %191, ptr %77, ptr null
  br label %194

194:                                              ; preds = %185, %178, %71, %55, %51, %49, %30, %25, %21, %19
  %195 = phi i32 [ 1, %25 ], [ 1, %30 ], [ 1, %55 ], [ %183, %178 ], [ %192, %185 ], [ %75, %71 ], [ 1, %21 ], [ 1, %19 ], [ 1, %51 ], [ 1, %49 ]
  %196 = phi ptr [ null, %25 ], [ null, %30 ], [ null, %55 ], [ null, %178 ], [ %193, %185 ], [ null, %71 ], [ null, %21 ], [ null, %19 ], [ null, %51 ], [ null, %49 ]
  %197 = icmp ne i32 %195, 0
  %198 = zext i1 %197 to i16
  %199 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %200 = load i16, ptr %199, align 4
  %201 = or i16 %200, %198
  store i16 %201, ptr %199, align 4
  ret ptr %196
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tcp_gro_complete(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i16 %5, ptr %8, align 4
  %9 = getelementptr inbounds %struct.anon.164, ptr %8, i32 0, i32 1
  store i16 16, ptr %9, align 2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %11 = load i16, ptr %10, align 8
  %12 = or i16 %11, 96
  store i16 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %14 = load i16, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 5
  store i16 %14, ptr %17, align 2
  %18 = getelementptr inbounds %struct.tcphdr, ptr %7, i32 0, i32 4
  %19 = load i16, ptr %18, align 4
  %20 = icmp sgt i16 %19, -1
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = or i32 %24, 4
  store i32 %25, ptr %23, align 8
  br label %26

26:                                               ; preds = %21, %1
  %27 = load i16, ptr %10, align 8
  %28 = and i16 %27, 8192
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i16, ptr %4, align 2
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 13
  store i16 %31, ptr %32, align 2
  br label %33

33:                                               ; preds = %30, %26
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @tcpv4_offload_init() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @inet_add_offload(ptr noundef nonnull @tcpv4_offload, i8 noundef zeroext 6) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tcp4_gso_segment(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = icmp ult i32 %14, 20
  br i1 %15, label %16, label %22, !prof !8

16:                                               ; preds = %9
  %17 = icmp ult i32 %11, 20
  br i1 %17, label %47, label %18, !prof !8

18:                                               ; preds = %16
  %19 = sub nuw nsw i32 20, %14
  %20 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %19) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %18, %9
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 96
  %26 = icmp eq i16 %25, 96
  br i1 %26, label %45, label %27, !prof !10

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = getelementptr i8, ptr %29, i32 %32
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = getelementptr i8, ptr %29, i32 %36
  %38 = getelementptr inbounds %struct.tcphdr, ptr %37, i32 0, i32 6
  store i16 0, ptr %38, align 4
  %39 = load i16, ptr %23, align 8
  %40 = or i16 %39, 96
  store i16 %40, ptr %23, align 8
  %41 = getelementptr inbounds %struct.iphdr, ptr %33, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.iphdr, ptr %33, i32 0, i32 9
  %44 = load i32, ptr %43, align 4
  tail call void @__tcp_v4_send_check(ptr noundef %0, i32 noundef %42, i32 noundef %44) #6
  br label %45

45:                                               ; preds = %27, %22
  %46 = tail call ptr @tcp_gso_segment(ptr noundef %0, i64 noundef %1)
  br label %47

47:                                               ; preds = %45, %18, %16, %2
  %48 = phi ptr [ %46, %45 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %18 ], [ inttoptr (i32 -22 to ptr), %16 ]
  ret ptr %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tcp4_gro_receive(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %116

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 96
  %10 = icmp eq i16 %9, 96
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %13 = load i32, ptr %12, align 8
  br label %29

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %21 = load ptr, ptr %20, align 8
  %22 = ptrtoint ptr %19 to i32
  %23 = ptrtoint ptr %21 to i32
  %24 = sub i32 %17, %22
  %25 = add i32 %24, %23
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %27 = load i32, ptr %26, align 8
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %81

29:                                               ; preds = %14, %11
  %30 = phi i32 [ %13, %11 ], [ %27, %14 ]
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 18
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %81, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %37 = load i16, ptr %36, align 2
  %38 = and i16 %37, 56
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %81

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  %44 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %45 = load ptr, ptr %44, align 4
  %46 = select i1 %43, ptr %45, ptr %42
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %50 = load i16, ptr %49, align 4
  %51 = zext i16 %50 to i32
  %52 = getelementptr i8, ptr %48, i32 %51
  %53 = ptrtoint ptr %52 to i32
  %54 = ptrtoint ptr %45 to i32
  %55 = sub i32 %53, %54
  %56 = getelementptr i8, ptr %46, i32 %55
  %57 = getelementptr inbounds %struct.iphdr, ptr %56, i32 0, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.iphdr, ptr %56, i32 0, i32 9
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = add i32 %62, 6
  %64 = sub i32 %63, %30
  %65 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %60, i32 %58, i32 %64) #7, !srcloc !17
  %66 = and i16 %37, 4
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %40
  %69 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %65
  %72 = icmp ult i32 %71, %70
  %73 = zext i1 %72 to i32
  %74 = add i32 %71, %73
  %75 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %74) #7, !srcloc !11
  %76 = icmp ugt i32 %75, -65537
  br i1 %76, label %81, label %77

77:                                               ; preds = %68, %40
  %78 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i32 %65, ptr %78, align 4
  %79 = tail call zeroext i16 @__skb_gro_checksum_complete(ptr noundef %1) #6
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %77, %68, %35, %29, %14
  %82 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %83 = load i16, ptr %82, align 2
  %84 = trunc i16 %83 to i8
  %85 = and i8 %84, 56
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = add i8 %84, 56
  %89 = and i8 %88, 56
  %90 = zext i8 %89 to i16
  %91 = and i16 %83, -57
  %92 = or i16 %91, %90
  store i16 %92, ptr %82, align 2
  br label %116

93:                                               ; preds = %81
  %94 = load i16, ptr %7, align 8
  %95 = lshr i16 %94, 5
  %96 = trunc i16 %95 to i2
  switch i2 %96, label %116 [
    i2 1, label %97
    i2 0, label %109
  ]

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %99 = load i16, ptr %98, align 2
  %100 = trunc i16 %99 to i8
  %101 = and i8 %100, 12
  %102 = icmp eq i8 %101, 12
  br i1 %102, label %116, label %103

103:                                              ; preds = %97
  %104 = add i8 %100, 4
  %105 = and i8 %104, 12
  %106 = zext i8 %105 to i16
  %107 = and i16 %99, -13
  %108 = or i16 %107, %106
  store i16 %108, ptr %98, align 2
  br label %116

109:                                              ; preds = %93
  %110 = and i16 %94, -97
  %111 = or i16 %110, 32
  store i16 %111, ptr %7, align 8
  %112 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %113 = load i16, ptr %112, align 2
  %114 = and i16 %113, -13
  store i16 %114, ptr %112, align 2
  br label %116

115:                                              ; preds = %77
  store i16 1, ptr %3, align 4
  br label %118

116:                                              ; preds = %109, %103, %97, %93, %87, %2
  %117 = tail call ptr @tcp_gro_receive(ptr noundef %0, ptr noundef %1)
  br label %118

118:                                              ; preds = %116, %115
  %119 = phi ptr [ %117, %116 ], [ null, %115 ]
  ret ptr %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp4_gro_complete(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %4, i32 %11
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.iphdr, ptr %8, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.iphdr, ptr %8, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 6, %1
  %20 = add i32 %19, %14
  %21 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %18, i32 %16, i32 %20) #7, !srcloc !17
  %22 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %21) #7, !srcloc !11
  %23 = xor i32 %22, -1
  %24 = lshr i32 %23, 16
  %25 = trunc i32 %24 to i16
  %26 = xor i16 %25, -1
  %27 = getelementptr inbounds %struct.tcphdr, ptr %12, i32 0, i32 6
  store i16 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 8
  %31 = load i32, ptr %30, align 8
  %32 = or i32 %31, 1
  store i32 %32, ptr %30, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 26
  %34 = load i16, ptr %33, align 2
  %35 = and i16 %34, 1024
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %2
  %38 = load ptr, ptr %28, align 4
  %39 = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 8
  %40 = load i32, ptr %39, align 8
  %41 = or i32 %40, 8
  store i32 %41, ptr %39, align 8
  br label %42

42:                                               ; preds = %37, %2
  %43 = load ptr, ptr %3, align 8
  %44 = load i16, ptr %9, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr i8, ptr %43, i32 %45
  %47 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i16 %44, ptr %47, align 4
  %48 = getelementptr inbounds %struct.anon.164, ptr %47, i32 0, i32 1
  store i16 16, ptr %48, align 2
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %50 = load i16, ptr %49, align 8
  %51 = or i16 %50, 96
  store i16 %51, ptr %49, align 8
  %52 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %53 = load i16, ptr %52, align 8
  %54 = load ptr, ptr %28, align 4
  %55 = getelementptr inbounds %struct.skb_shared_info, ptr %54, i32 0, i32 5
  store i16 %53, ptr %55, align 2
  %56 = getelementptr inbounds %struct.tcphdr, ptr %46, i32 0, i32 4
  %57 = load i16, ptr %56, align 4
  %58 = icmp sgt i16 %57, -1
  br i1 %58, label %64, label %59

59:                                               ; preds = %42
  %60 = load ptr, ptr %28, align 4
  %61 = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 8
  %62 = load i32, ptr %61, align 8
  %63 = or i32 %62, 4
  store i32 %63, ptr %61, align 8
  br label %64

64:                                               ; preds = %59, %42
  %65 = load i16, ptr %49, align 8
  %66 = and i16 %65, 8192
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i16, ptr %9, align 2
  %70 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 13
  store i16 %69, ptr %70, align 2
  br label %71

71:                                               ; preds = %68, %64
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tcp_v4_send_check(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_gro_checksum_complete(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2153279860, i64 2153280348, i64 2153279897, i64 2153279953, i64 2153279987, i64 2153280011, i64 2153280052, i64 2153280073, i64 2153280101, i64 2153280135}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 5182415}
!12 = !{i64 558774, i64 2148048745, i64 2148048771, i64 2148048818, i64 2148048840, i64 2148048868, i64 2148048888}
!13 = !{i64 2148062415, i64 2148062447, i64 2148062476, i64 2148062510, i64 2148062541, i64 2148062564}
!14 = !{i64 2148162613}
!15 = !{i64 2148064772, i64 2148064804, i64 2148064833, i64 2148064867, i64 2148064898, i64 2148064921}
!16 = !{i64 2149922449}
!17 = !{i64 5183517, i64 5183558, i64 5183644}
