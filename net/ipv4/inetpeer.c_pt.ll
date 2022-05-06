; ModuleID = '/llk/IR/net/ipv4/inetpeer.c_pt.bc'
source_filename = "../net/ipv4/inetpeer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_peer_base_init:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_peer_base_init\22\09\09\09\09\09"
module asm "__kstrtabns_inet_peer_base_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_getpeer:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_getpeer\22\09\09\09\09\09"
module asm "__kstrtabns_inet_getpeer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_putpeer:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_putpeer\22\09\09\09\09\09"
module asm "__kstrtabns_inet_putpeer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_peer_xrlim_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_peer_xrlim_allow\22\09\09\09\09\09"
module asm "__kstrtabns_inet_peer_xrlim_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inetpeer_invalidate_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22inetpeer_invalidate_tree\22\09\09\09\09\09"
module asm "__kstrtabns_inetpeer_invalidate_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.inet_peer_base = type { %struct.rb_root, %struct.seqlock_t, i32 }
%struct.rb_root = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.inetpeer_addr = type { %union.anon.1, i16 }
%union.anon.1 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.2 }
%union.anon.2 = type { [4 x i32] }
%struct.inet_peer = type { %struct.rb_node, %struct.inetpeer_addr, [17 x i32], i32, i32, i32, %union.anon.3, i32, %struct.refcount_struct }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.3 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }

@__kstrtab_inet_peer_base_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_peer_base_init = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_peer_base_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_peer_base_init to i32), ptr @__kstrtab_inet_peer_base_init, ptr @__kstrtabns_inet_peer_base_init }, section "___ksymtab_gpl+inet_peer_base_init", align 4
@inet_peer_minttl = dso_local local_unnamed_addr global i32 12000, section ".data..read_mostly", align 4
@inet_peer_maxttl = dso_local local_unnamed_addr global i32 60000, section ".data..read_mostly", align 4
@inet_peer_threshold = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str = private unnamed_addr constant [16 x i8] c"inet_peer_cache\00", align 1
@peer_cachep = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_inet_getpeer = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_getpeer = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_getpeer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_getpeer to i32), ptr @__kstrtab_inet_getpeer, ptr @__kstrtabns_inet_getpeer }, section "___ksymtab_gpl+inet_getpeer", align 4
@__kstrtab_inet_putpeer = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_putpeer = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_putpeer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_putpeer to i32), ptr @__kstrtab_inet_putpeer, ptr @__kstrtabns_inet_putpeer }, section "___ksymtab_gpl+inet_putpeer", align 4
@__kstrtab_inet_peer_xrlim_allow = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_peer_xrlim_allow = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_peer_xrlim_allow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_peer_xrlim_allow to i32), ptr @__kstrtab_inet_peer_xrlim_allow, ptr @__kstrtabns_inet_peer_xrlim_allow }, section "___ksymtab+inet_peer_xrlim_allow", align 4
@__kstrtab_inetpeer_invalidate_tree = external dso_local constant [0 x i8], align 1
@__kstrtabns_inetpeer_invalidate_tree = external dso_local constant [0 x i8], align 1
@__ksymtab_inetpeer_invalidate_tree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inetpeer_invalidate_tree to i32), ptr @__kstrtab_inetpeer_invalidate_tree, ptr @__kstrtabns_inetpeer_invalidate_tree }, section "___ksymtab+inetpeer_invalidate_tree", align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_inet_getpeer, ptr @__ksymtab_inet_peer_base_init, ptr @__ksymtab_inet_peer_xrlim_allow, ptr @__ksymtab_inet_putpeer, ptr @__ksymtab_inetpeer_invalidate_tree], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @inet_peer_base_init(ptr nocapture noundef writeonly %0) #0 {
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @inet_initpeers() local_unnamed_addr #3 section ".init.text" {
  %1 = load volatile i32, ptr @_totalram_pages, align 4
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 12
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %3, i32 0) #9, !srcloc !8
  %5 = extractvalue { i64, i32 } %4, 0
  %6 = extractvalue { i64, i32 } %4, 1
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %3, i64 %5, i32 %6) #9, !srcloc !9
  %8 = extractvalue { i64, i32 } %7, 0
  %9 = lshr i64 %8, 13
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 4096)
  %11 = tail call i64 @llvm.umin.i64(i64 %10, i64 65664)
  %12 = trunc i64 %11 to i32
  store i32 %12, ptr @inet_peer_threshold, align 4
  %13 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 128, i32 noundef 0, i32 noundef 270336, ptr noundef null) #10
  store ptr %13, ptr @peer_cachep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_getpeer(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = alloca [32 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %5 = getelementptr inbounds %struct.inet_peer_base, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %10 = load volatile i32, ptr %5, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %3
  %14 = phi i32 [ %6, %3 ], [ %10, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %15 = load volatile ptr, ptr %0, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %70, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.inetpeer_addr, ptr %1, i32 0, i32 1
  br label %19

19:                                               ; preds = %63, %17
  %20 = phi ptr [ %15, %17 ], [ %68, %63 ]
  %21 = phi ptr [ %0, %17 ], [ %67, %63 ]
  %22 = getelementptr inbounds %struct.inet_peer, ptr %20, i32 0, i32 1
  %23 = load i16, ptr %18, align 4
  %24 = icmp eq i16 %23, 2
  %25 = select i1 %24, i32 2, i32 4
  br label %29

26:                                               ; preds = %29
  %27 = add nuw nsw i32 %30, 1
  %28 = icmp eq i32 %27, %25
  br i1 %28, label %39, label %29

29:                                               ; preds = %26, %19
  %30 = phi i32 [ 0, %19 ], [ %27, %26 ]
  %31 = getelementptr [4 x i32], ptr %1, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr [4 x i32], ptr %22, i32 0, i32 %30
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %26, label %36

36:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %37 = load volatile i32, ptr %5, align 4
  %38 = icmp eq i32 %37, %14
  br i1 %38, label %63, label %70, !prof !16

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.inet_peer, ptr %20, i32 0, i32 8
  %41 = load volatile i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %53, %39
  %44 = phi i32 [ %51, %53 ], [ %41, %39 ]
  %45 = add i32 %44, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #10, !srcloc !17
  br label %46

46:                                               ; preds = %46, %43
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 %44, i32 %45, ptr elementtype(i32) %40) #10, !srcloc !18
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %46

50:                                               ; preds = %46
  %51 = extractvalue { i32, i32 } %47, 1
  %52 = icmp eq i32 %51, %44
  br i1 %52, label %55, label %53, !prof !16

53:                                               ; preds = %50
  %54 = icmp eq i32 %51, 0
  br i1 %54, label %55, label %43

55:                                               ; preds = %53, %50, %39
  %56 = phi i32 [ 0, %39 ], [ %44, %50 ], [ 0, %53 ]
  %57 = add i32 %56, 1
  %58 = or i32 %57, %56
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %61, label %60, !prof !16

60:                                               ; preds = %55
  tail call void @refcount_warn_saturate(ptr noundef %40, i32 noundef 0) #10
  br label %61

61:                                               ; preds = %60, %55
  %62 = icmp eq i32 %56, 0
  br i1 %62, label %70, label %72

63:                                               ; preds = %36
  %64 = icmp ult i32 %32, %34
  %65 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 2
  %66 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 1
  %67 = select i1 %64, ptr %65, ptr %66
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %19

70:                                               ; preds = %63, %61, %36, %13
  %71 = phi ptr [ %21, %61 ], [ %0, %13 ], [ %67, %63 ], [ %21, %36 ]
  br label %72

72:                                               ; preds = %70, %61
  %73 = phi ptr [ %71, %70 ], [ null, %61 ]
  %74 = phi ptr [ null, %70 ], [ %20, %61 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %75 = load volatile i32, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %76 = icmp eq ptr %74, null
  br i1 %76, label %77, label %227

77:                                               ; preds = %72
  %78 = icmp ne i32 %75, %14
  %79 = icmp ne i32 %2, 0
  %80 = select i1 %79, i1 true, i1 %78
  br i1 %80, label %81, label %227

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.inet_peer_base, ptr %0, i32 0, i32 1, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %82) #10
  %83 = load i32, ptr %5, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %5, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !20
  %85 = load volatile ptr, ptr %0, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %144, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.inetpeer_addr, ptr %1, i32 0, i32 1
  %89 = load i16, ptr %88, align 4
  %90 = icmp eq i16 %89, 2
  %91 = select i1 %90, i32 2, i32 4
  br label %92

92:                                               ; preds = %137, %87
  %93 = phi i32 [ 0, %87 ], [ %138, %137 ]
  %94 = phi ptr [ %85, %87 ], [ %142, %137 ]
  %95 = phi ptr [ %0, %87 ], [ %141, %137 ]
  %96 = getelementptr inbounds %struct.inet_peer, ptr %94, i32 0, i32 1
  br label %100

97:                                               ; preds = %100
  %98 = add nuw nsw i32 %101, 1
  %99 = icmp eq i32 %98, %91
  br i1 %99, label %110, label %100

100:                                              ; preds = %97, %92
  %101 = phi i32 [ 0, %92 ], [ %98, %97 ]
  %102 = getelementptr [4 x i32], ptr %1, i32 0, i32 %101
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr [4 x i32], ptr %96, i32 0, i32 %101
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %97, label %107

107:                                              ; preds = %100
  %108 = icmp ult i32 %103, %105
  %109 = icmp ult i32 %93, 32
  br i1 %109, label %134, label %137

110:                                              ; preds = %97
  %111 = getelementptr inbounds %struct.inet_peer, ptr %94, i32 0, i32 8
  %112 = load volatile i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %124, %110
  %115 = phi i32 [ %122, %124 ], [ %112, %110 ]
  %116 = add i32 %115, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %111) #10, !srcloc !17
  br label %117

117:                                              ; preds = %117, %114
  %118 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %111, ptr %111, i32 %115, i32 %116, ptr elementtype(i32) %111) #10, !srcloc !18
  %119 = extractvalue { i32, i32 } %118, 0
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %117

121:                                              ; preds = %117
  %122 = extractvalue { i32, i32 } %118, 1
  %123 = icmp eq i32 %122, %115
  br i1 %123, label %126, label %124, !prof !16

124:                                              ; preds = %121
  %125 = icmp eq i32 %122, 0
  br i1 %125, label %126, label %114

126:                                              ; preds = %124, %121, %110
  %127 = phi i32 [ 0, %110 ], [ %115, %121 ], [ 0, %124 ]
  %128 = add i32 %127, 1
  %129 = or i32 %128, %127
  %130 = icmp sgt i32 %129, -1
  br i1 %130, label %132, label %131, !prof !16

131:                                              ; preds = %126
  tail call void @refcount_warn_saturate(ptr noundef %111, i32 noundef 0) #10
  br label %132

132:                                              ; preds = %131, %126
  %133 = icmp eq i32 %127, 0
  br i1 %133, label %144, label %148

134:                                              ; preds = %107
  %135 = add nuw nsw i32 %93, 1
  %136 = getelementptr ptr, ptr %4, i32 %93
  store ptr %94, ptr %136, align 4
  br label %137

137:                                              ; preds = %134, %107
  %138 = phi i32 [ %135, %134 ], [ %93, %107 ]
  %139 = getelementptr inbounds %struct.rb_node, ptr %94, i32 0, i32 2
  %140 = getelementptr inbounds %struct.rb_node, ptr %94, i32 0, i32 1
  %141 = select i1 %108, ptr %139, ptr %140
  %142 = load volatile ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %92

144:                                              ; preds = %137, %132, %81
  %145 = phi i32 [ 0, %81 ], [ %93, %132 ], [ %138, %137 ]
  %146 = phi ptr [ %0, %81 ], [ %95, %132 ], [ %141, %137 ]
  %147 = phi ptr [ null, %81 ], [ %94, %132 ], [ %94, %137 ]
  br label %148

148:                                              ; preds = %144, %132
  %149 = phi ptr [ %146, %144 ], [ %73, %132 ]
  %150 = phi ptr [ %147, %144 ], [ null, %132 ]
  %151 = phi i32 [ %145, %144 ], [ %93, %132 ]
  %152 = phi ptr [ null, %144 ], [ %94, %132 ]
  %153 = icmp eq ptr %152, null
  %154 = and i1 %79, %153
  br i1 %154, label %155, label %177

155:                                              ; preds = %148
  %156 = load ptr, ptr @peer_cachep, align 4
  %157 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %156, i32 noundef 2592) #10
  %158 = icmp eq ptr %157, null
  br i1 %158, label %177, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.inet_peer, ptr %157, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %160, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  %161 = load volatile i32, ptr @jiffies, align 64
  %162 = getelementptr inbounds %struct.inet_peer, ptr %157, i32 0, i32 7
  store i32 %161, ptr %162, align 8
  %163 = getelementptr inbounds %struct.inet_peer, ptr %157, i32 0, i32 8
  store volatile i32 2, ptr %163, align 4
  %164 = getelementptr inbounds %struct.inet_peer, ptr %157, i32 0, i32 6
  store volatile i32 0, ptr %164, align 8
  %165 = getelementptr inbounds %struct.inet_peer, ptr %157, i32 0, i32 2
  store i32 -1, ptr %165, align 8
  %166 = getelementptr inbounds %struct.inet_peer, ptr %157, i32 0, i32 3
  store i32 0, ptr %166, align 4
  %167 = getelementptr inbounds %struct.inet_peer, ptr %157, i32 0, i32 4
  store i32 0, ptr %167, align 8
  %168 = load volatile i32, ptr @jiffies, align 64
  %169 = add i32 %168, -6000
  %170 = getelementptr inbounds %struct.inet_peer, ptr %157, i32 0, i32 5
  store i32 %169, ptr %170, align 4
  %171 = ptrtoint ptr %150 to i32
  store i32 %171, ptr %157, align 8
  %172 = getelementptr inbounds %struct.rb_node, ptr %157, i32 0, i32 1
  store ptr null, ptr %172, align 4
  %173 = getelementptr inbounds %struct.rb_node, ptr %157, i32 0, i32 2
  store ptr null, ptr %173, align 8
  store ptr %157, ptr %149, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %157, ptr noundef %0) #10
  %174 = getelementptr inbounds %struct.inet_peer_base, ptr %0, i32 0, i32 2
  %175 = load i32, ptr %174, align 4
  %176 = add i32 %175, 1
  store i32 %176, ptr %174, align 4
  br label %177

177:                                              ; preds = %159, %155, %148
  %178 = phi ptr [ %157, %159 ], [ null, %155 ], [ %152, %148 ]
  %179 = icmp eq i32 %151, 0
  br i1 %179, label %224, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.inet_peer_base, ptr %0, i32 0, i32 2
  %182 = load i32, ptr %181, align 4
  %183 = load i32, ptr @inet_peer_threshold, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %180
  %186 = load i32, ptr @inet_peer_maxttl, align 4
  %187 = load i32, ptr @inet_peer_minttl, align 4
  %188 = sub i32 %186, %187
  %189 = sdiv i32 %188, 100
  %190 = mul i32 %189, %182
  %191 = sdiv i32 %190, %183
  %192 = mul i32 %191, -100
  %193 = add i32 %192, %186
  br label %194

194:                                              ; preds = %185, %180
  %195 = phi i32 [ %193, %185 ], [ 0, %180 ]
  br label %196

196:                                              ; preds = %209, %194
  %197 = phi i32 [ %210, %209 ], [ 0, %194 ]
  %198 = getelementptr ptr, ptr %4, i32 %197
  %199 = load ptr, ptr %198, align 4
  %200 = load volatile i32, ptr @jiffies, align 64
  %201 = getelementptr inbounds %struct.inet_peer, ptr %199, i32 0, i32 7
  %202 = load volatile i32, ptr %201, align 4
  %203 = sub i32 %200, %202
  %204 = icmp ult i32 %203, %195
  br i1 %204, label %208, label %205

205:                                              ; preds = %196
  %206 = getelementptr inbounds %struct.inet_peer, ptr %199, i32 0, i32 8
  %207 = tail call zeroext i1 @refcount_dec_if_one(ptr noundef %206) #10
  br i1 %207, label %209, label %208

208:                                              ; preds = %205, %196
  store ptr null, ptr %198, align 4
  br label %209

209:                                              ; preds = %208, %205
  %210 = add nuw i32 %197, 1
  %211 = icmp eq i32 %210, %151
  br i1 %211, label %212, label %196

212:                                              ; preds = %221, %209
  %213 = phi i32 [ %222, %221 ], [ 0, %209 ]
  %214 = getelementptr ptr, ptr %4, i32 %213
  %215 = load ptr, ptr %214, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %221, label %217

217:                                              ; preds = %212
  tail call void @rb_erase(ptr noundef nonnull %215, ptr noundef %0) #10
  %218 = load i32, ptr %181, align 4
  %219 = add i32 %218, -1
  store i32 %219, ptr %181, align 4
  %220 = getelementptr inbounds %struct.inet_peer, ptr %215, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %220, ptr noundef nonnull @inetpeer_free_rcu) #10
  br label %221

221:                                              ; preds = %217, %212
  %222 = add nuw i32 %213, 1
  %223 = icmp eq i32 %222, %151
  br i1 %223, label %224, label %212

224:                                              ; preds = %221, %177
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !21
  %225 = load i32, ptr %5, align 4
  %226 = add i32 %225, 1
  store i32 %226, ptr %5, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %82) #10
  br label %227

227:                                              ; preds = %224, %77, %72
  %228 = phi ptr [ %178, %224 ], [ %74, %72 ], [ null, %77 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #10
  ret ptr %228
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_putpeer(ptr noundef %0) #5 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr inbounds %struct.inet_peer, ptr %0, i32 0, i32 7
  store volatile i32 %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.inet_peer, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #10, !srcloc !17
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !23
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %13, label %10, !prof !16

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #10
  br label %13

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !24
  %12 = getelementptr inbounds %struct.inet_peer, ptr %0, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %12, ptr noundef nonnull @inetpeer_free_rcu) #10
  br label %13

13:                                               ; preds = %11, %10, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inetpeer_free_rcu(ptr noundef %0) #5 {
  %2 = load ptr, ptr @peer_cachep, align 4
  %3 = getelementptr i8, ptr %0, i32 -112
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %3) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @inet_peer_xrlim_allow(ptr noundef %0, i32 noundef %1) #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.inet_peer, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.inet_peer, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %7, %6
  %11 = sub i32 %10, %9
  store i32 %7, ptr %8, align 4
  %12 = mul i32 %1, 6
  %13 = tail call i32 @llvm.umin.i32(i32 %11, i32 %12)
  %14 = icmp ult i32 %13, %1
  %15 = select i1 %14, i32 0, i32 %1
  %16 = sub i32 %13, %15
  %17 = xor i1 %14, true
  store i32 %16, ptr %5, align 4
  br label %18

18:                                               ; preds = %4, %2
  %19 = phi i1 [ %17, %4 ], [ true, %2 ]
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inetpeer_invalidate_tree(ptr noundef %0) #5 {
  %2 = tail call ptr @rb_first(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %18, %1
  %5 = phi ptr [ %6, %18 ], [ %2, %1 ]
  %6 = tail call ptr @rb_next(ptr noundef nonnull %5) #10
  tail call void @rb_erase(ptr noundef nonnull %5, ptr noundef %0) #10
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.inet_peer, ptr %5, i32 0, i32 7
  store volatile i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.inet_peer, ptr %5, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #10, !srcloc !17
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #10, !srcloc !23
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %18, label %15, !prof !16

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #10
  br label %18

16:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !24
  %17 = getelementptr inbounds %struct.inet_peer, ptr %5, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %17, ptr noundef nonnull @inetpeer_free_rcu) #10
  br label %18

18:                                               ; preds = %16, %15, %13
  %19 = tail call i32 @__cond_resched() #10
  %20 = icmp eq ptr %6, null
  br i1 %20, label %21, label %4

21:                                               ; preds = %18, %1
  %22 = getelementptr inbounds %struct.inet_peer_base, ptr %0, i32 0, i32 2
  store i32 0, ptr %22, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_if_one(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind }

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
!8 = !{i64 411027, i64 411054, i64 411076, i64 411104}
!9 = !{i64 411435, i64 411462, i64 411495, i64 411516, i64 411543, i64 411569}
!10 = !{!"auto-init"}
!11 = !{i64 2149051049}
!12 = !{i64 2149401693}
!13 = !{i64 2149401535}
!14 = !{i64 2149401837}
!15 = !{i64 2149388270}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 548169, i64 2148038140, i64 2148038166, i64 2148038213, i64 2148038235, i64 2148038263, i64 2148038283}
!18 = !{i64 534232, i64 534256, i64 534277, i64 534294, i64 534311}
!19 = !{i64 2149051266}
!20 = !{i64 2149388569}
!21 = !{i64 2149388870}
!22 = !{i64 2148151235}
!23 = !{i64 2148053370, i64 2148053402, i64 2148053431, i64 2148053465, i64 2148053496, i64 2148053519}
!24 = !{i64 2149000682}
