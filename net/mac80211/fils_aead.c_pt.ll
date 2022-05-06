; ModuleID = '/llk/IR/net/mac80211/fils_aead.c_pt.bc'
source_filename = "../net/mac80211/fils_aead.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.118 }
%union.anon.118 = type { %struct.anon.124, [16 x i8] }
%struct.anon.124 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.element = type { i8, i8, [0 x i8] }
%struct.ieee80211_mgd_assoc_data = type { ptr, ptr, i32, i32, i16, [6 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_vht_cap, [32 x i8], [64 x i8], i32, i32, [0 x i8] }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"cmac(aes)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ctr(aes)\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fils_encrypt_assoc_req(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i8], align 1
  %4 = alloca [1 x %struct.scatterlist], align 4
  %5 = alloca [1 x %struct.scatterlist], align 4
  %6 = alloca i8, align 1
  %7 = alloca [6 x ptr], align 4
  %8 = alloca [6 x i32], align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, 252
  %13 = icmp eq i16 %12, 32
  %14 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %10, i32 0, i32 6, i32 1
  %15 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %10, i32 0, i32 6, i32 0, i32 2
  %16 = select i1 %13, ptr %14, ptr %15
  %17 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %10, i32 0, i32 6
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr i8, ptr %10, i32 %19
  %21 = ptrtoint ptr %20 to i32
  %22 = ptrtoint ptr %16 to i32
  %23 = sub i32 %21, %22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 4, ptr %6, align 1
  %24 = call ptr @cfg80211_find_elem_match(i8 noundef zeroext -1, ptr noundef %16, i32 noundef %23, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %105, label %26

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.element, ptr %24, i32 0, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 9
  br i1 %29, label %30, label %105

30:                                               ; preds = %26
  %31 = getelementptr %struct.element, ptr %24, i32 5, i32 1
  %32 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %10, i32 0, i32 3
  store ptr %32, ptr %7, align 4
  store i32 6, ptr %8, align 4
  %33 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %10, i32 0, i32 2
  %34 = getelementptr inbounds [6 x ptr], ptr %7, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds [6 x i32], ptr %8, i32 0, i32 1
  store i32 6, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %1, i32 0, i32 16
  %37 = getelementptr inbounds [6 x ptr], ptr %7, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds [6 x i32], ptr %8, i32 0, i32 2
  store i32 16, ptr %38, align 4
  %39 = getelementptr %struct.ieee80211_mgd_assoc_data, ptr %1, i32 0, i32 16, i32 16
  %40 = getelementptr inbounds [6 x ptr], ptr %7, i32 0, i32 3
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds [6 x i32], ptr %8, i32 0, i32 3
  store i32 16, ptr %41, align 4
  %42 = getelementptr inbounds [6 x ptr], ptr %7, i32 0, i32 4
  store ptr %17, ptr %42, align 4
  %43 = ptrtoint ptr %31 to i32
  %44 = ptrtoint ptr %17 to i32
  %45 = sub i32 %43, %44
  %46 = getelementptr inbounds [6 x i32], ptr %8, i32 0, i32 4
  store i32 %45, ptr %46, align 4
  %47 = load ptr, ptr %9, align 4
  %48 = load i32, ptr %18, align 8
  %49 = getelementptr i8, ptr %47, i32 %48
  %50 = ptrtoint ptr %49 to i32
  %51 = sub i32 %50, %43
  %52 = call ptr @skb_put(ptr noundef %0, i32 noundef 16) #8
  %53 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %1, i32 0, i32 17
  %54 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %1, i32 0, i32 18
  %55 = load i32, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #8, !annotation !8
  %56 = lshr i32 %55, 1
  %57 = getelementptr inbounds ptr, ptr %7, i32 5
  store ptr %31, ptr %57, align 4
  %58 = getelementptr inbounds i32, ptr %8, i32 5
  store i32 %51, ptr %58, align 4
  %59 = call ptr @crypto_alloc_shash(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #8
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %30
  %62 = ptrtoint ptr %59 to i32
  br label %103

63:                                               ; preds = %30
  %64 = call i32 @crypto_shash_setkey(ptr noundef %59, ptr noundef %53, i32 noundef %56) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.crypto_shash, ptr %59, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %59, ptr noundef %67) #8
  br label %103

68:                                               ; preds = %63
  call fastcc void @aes_s2v(ptr noundef %59, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %3) #8
  %69 = getelementptr inbounds %struct.crypto_shash, ptr %59, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %59, ptr noundef %69) #8
  %70 = call ptr @kmemdup(ptr noundef %31, i32 noundef %51, i32 noundef 3264) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %103, label %72

72:                                               ; preds = %68
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %31, ptr noundef nonnull align 1 dereferenceable(16) %3, i32 16, i1 false) #8
  %73 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 8
  %74 = load i8, ptr %73, align 1
  %75 = and i8 %74, 127
  store i8 %75, ptr %73, align 1
  %76 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 12
  %77 = load i8, ptr %76, align 1
  %78 = and i8 %77, 127
  store i8 %78, ptr %76, align 1
  %79 = call ptr @crypto_alloc_skcipher(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 128) #8
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  call void @kfree(ptr noundef nonnull %70) #8
  %82 = ptrtoint ptr %79 to i32
  br label %103

83:                                               ; preds = %72
  %84 = getelementptr i8, ptr %53, i32 %56
  %85 = call i32 @crypto_skcipher_setkey(ptr noundef %79, ptr noundef %84, i32 noundef %56) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i32, ptr %79, align 64
  %89 = add i32 %88, 64
  %90 = call noalias align 64 ptr @__kmalloc(i32 noundef %89, i32 noundef 3264) #9
  %91 = icmp eq ptr %90, null
  br i1 %91, label %100, label %92, !prof !9

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.crypto_skcipher, ptr %79, i32 0, i32 2
  %94 = getelementptr inbounds %struct.skcipher_request, ptr %90, i32 0, i32 4, i32 3
  store ptr %93, ptr %94, align 32
  call void @sg_init_one(ptr noundef nonnull %4, ptr noundef nonnull %70, i32 noundef %51) #8
  %95 = getelementptr %struct.element, ptr %24, i32 13, i32 1
  call void @sg_init_one(ptr noundef nonnull %5, ptr noundef %95, i32 noundef %51) #8
  %96 = getelementptr inbounds %struct.skcipher_request, ptr %90, i32 0, i32 2
  store ptr %4, ptr %96, align 8
  %97 = getelementptr inbounds %struct.skcipher_request, ptr %90, i32 0, i32 3
  store ptr %5, ptr %97, align 4
  store i32 %51, ptr %90, align 64
  %98 = getelementptr inbounds %struct.skcipher_request, ptr %90, i32 0, i32 1
  store ptr %3, ptr %98, align 4
  %99 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %90) #8
  call void @kfree_sensitive(ptr noundef nonnull %90) #8
  br label %100

100:                                              ; preds = %92, %87, %83
  %101 = phi i32 [ %85, %83 ], [ %99, %92 ], [ -12, %87 ]
  call void @kfree(ptr noundef nonnull %70) #8
  %102 = getelementptr inbounds %struct.crypto_skcipher, ptr %79, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %79, ptr noundef %102) #8
  br label %103

103:                                              ; preds = %100, %81, %68, %66, %61
  %104 = phi i32 [ %62, %61 ], [ %82, %81 ], [ %101, %100 ], [ %64, %66 ], [ -12, %68 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %105

105:                                              ; preds = %103, %26, %2
  %106 = phi i32 [ %104, %103 ], [ -22, %26 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  ret i32 %106
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fils_decrypt_assoc_resp(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [1 x %struct.scatterlist], align 4
  %6 = alloca [1 x %struct.scatterlist], align 4
  %7 = alloca [16 x i8], align 1
  %8 = alloca [16 x i8], align 1
  %9 = alloca [16 x i8], align 1
  %10 = alloca i8, align 1
  %11 = alloca [6 x ptr], align 4
  %12 = alloca [6 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #8
  %13 = getelementptr inbounds i8, ptr %11, i32 20
  store i32 0, ptr %13, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #8
  %14 = load i32, ptr %2, align 4
  %15 = icmp ult i32 %14, 30
  br i1 %15, label %105, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6
  %18 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 0, i32 2, i32 2
  %19 = add i32 %14, -30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10)
  store i8 4, ptr %10, align 1
  %20 = call ptr @cfg80211_find_elem_match(i8 noundef zeroext -1, ptr noundef %18, i32 noundef %19, ptr noundef nonnull %10, i32 noundef 1, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %105, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.element, ptr %20, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 9
  br i1 %25, label %26, label %105

26:                                               ; preds = %22
  %27 = getelementptr %struct.element, ptr %20, i32 5, i32 1
  %28 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 3
  store ptr %28, ptr %11, align 4
  store i32 6, ptr %12, align 4
  %29 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 2
  %30 = getelementptr inbounds [6 x ptr], ptr %11, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds [6 x i32], ptr %12, i32 0, i32 1
  store i32 6, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %3, i32 0, i32 16
  %33 = getelementptr %struct.ieee80211_mgd_assoc_data, ptr %3, i32 0, i32 16, i32 16
  %34 = getelementptr inbounds [6 x ptr], ptr %11, i32 0, i32 2
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds [6 x i32], ptr %12, i32 0, i32 2
  store i32 16, ptr %35, align 4
  %36 = getelementptr inbounds [6 x ptr], ptr %11, i32 0, i32 3
  store ptr %32, ptr %36, align 4
  %37 = getelementptr inbounds [6 x i32], ptr %12, i32 0, i32 3
  store i32 16, ptr %37, align 4
  %38 = getelementptr inbounds [6 x ptr], ptr %11, i32 0, i32 4
  store ptr %17, ptr %38, align 4
  %39 = ptrtoint ptr %27 to i32
  %40 = ptrtoint ptr %17 to i32
  %41 = sub i32 %39, %40
  %42 = getelementptr inbounds [6 x i32], ptr %12, i32 0, i32 4
  store i32 %41, ptr %42, align 4
  %43 = load i32, ptr %2, align 4
  %44 = getelementptr i8, ptr %1, i32 %43
  %45 = ptrtoint ptr %44 to i32
  %46 = sub i32 %45, %39
  %47 = icmp ult i32 %46, 16
  br i1 %47, label %105, label %48

48:                                               ; preds = %26
  %49 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %3, i32 0, i32 17
  %50 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %3, i32 0, i32 18
  %51 = load i32, ptr %50, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %9, i8 0, i32 16, i1 false) #8, !annotation !8
  %52 = add i32 %46, -16
  %53 = lshr i32 %51, 1
  %54 = getelementptr inbounds ptr, ptr %11, i32 5
  store ptr %27, ptr %54, align 4
  %55 = getelementptr inbounds i32, ptr %12, i32 5
  store i32 %52, ptr %55, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %8, ptr noundef align 1 dereferenceable(16) %27, i32 16, i1 false) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, ptr noundef align 1 dereferenceable(16) %27, i32 16, i1 false) #8
  %56 = getelementptr inbounds [16 x i8], ptr %8, i32 0, i32 8
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, 127
  store i8 %58, ptr %56, align 1
  %59 = getelementptr inbounds [16 x i8], ptr %8, i32 0, i32 12
  %60 = load i8, ptr %59, align 1
  %61 = and i8 %60, 127
  store i8 %61, ptr %59, align 1
  %62 = call ptr @crypto_alloc_skcipher(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 128) #8
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %102, label %64

64:                                               ; preds = %48
  %65 = getelementptr i8, ptr %49, i32 %53
  %66 = call i32 @crypto_skcipher_setkey(ptr noundef %62, ptr noundef %65, i32 noundef %53) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.crypto_skcipher, ptr %62, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %62, ptr noundef %69) #8
  br label %100

70:                                               ; preds = %64
  %71 = load i32, ptr %62, align 64
  %72 = add i32 %71, 64
  %73 = call noalias align 64 ptr @__kmalloc(i32 noundef %72, i32 noundef 3264) #9
  %74 = icmp eq ptr %73, null
  %75 = getelementptr inbounds %struct.crypto_skcipher, ptr %62, i32 0, i32 2
  br i1 %74, label %76, label %77, !prof !9

76:                                               ; preds = %70
  call void @crypto_destroy_tfm(ptr noundef %62, ptr noundef %75) #8
  br label %100

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.skcipher_request, ptr %73, i32 0, i32 4, i32 3
  store ptr %75, ptr %78, align 32
  %79 = getelementptr %struct.element, ptr %20, i32 13, i32 1
  call void @sg_init_one(ptr noundef nonnull %5, ptr noundef %79, i32 noundef %52) #8
  call void @sg_init_one(ptr noundef nonnull %6, ptr noundef %27, i32 noundef %52) #8
  %80 = getelementptr inbounds %struct.skcipher_request, ptr %73, i32 0, i32 2
  store ptr %5, ptr %80, align 8
  %81 = getelementptr inbounds %struct.skcipher_request, ptr %73, i32 0, i32 3
  store ptr %6, ptr %81, align 4
  store i32 %52, ptr %73, align 64
  %82 = getelementptr inbounds %struct.skcipher_request, ptr %73, i32 0, i32 1
  store ptr %8, ptr %82, align 4
  %83 = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %73) #8
  call void @kfree_sensitive(ptr noundef nonnull %73) #8
  call void @crypto_destroy_tfm(ptr noundef %62, ptr noundef %75) #8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %77
  %86 = call ptr @crypto_alloc_shash(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #8
  %87 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %102, label %88

88:                                               ; preds = %85
  %89 = call i32 @crypto_shash_setkey(ptr noundef %86, ptr noundef %49, i32 noundef %53) #8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.crypto_shash, ptr %86, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %86, ptr noundef %92) #8
  br label %100

93:                                               ; preds = %88
  call fastcc void @aes_s2v(ptr noundef %86, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %9) #8
  %94 = getelementptr inbounds %struct.crypto_shash, ptr %86, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %86, ptr noundef %94) #8
  %95 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %9, ptr noundef nonnull dereferenceable(16) %7, i32 16) #8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #8
  %98 = load i32, ptr %2, align 4
  %99 = add i32 %98, -16
  store i32 %99, ptr %2, align 4
  br label %105

100:                                              ; preds = %93, %91, %77, %76, %68
  %101 = phi i32 [ -22, %93 ], [ %89, %91 ], [ %83, %77 ], [ -12, %76 ], [ %66, %68 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #8
  br label %105

102:                                              ; preds = %85, %48
  %103 = phi ptr [ %62, %48 ], [ %86, %85 ]
  %104 = ptrtoint ptr %103 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #8
  br label %105

105:                                              ; preds = %102, %100, %97, %26, %22, %16, %4
  %106 = phi i32 [ 0, %97 ], [ -22, %4 ], [ -22, %16 ], [ -22, %22 ], [ -22, %26 ], [ %104, %102 ], [ %101, %100 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #8
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aes_s2v(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [16 x i8], align 8
  %6 = alloca [16 x i8], align 4
  %7 = alloca [376 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(376) %7, i8 0, i32 376, i1 false), !annotation !8
  store ptr %0, ptr %7, align 8
  %8 = call i32 @crypto_shash_digest(ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef 16, ptr noundef nonnull %5) #8
  %9 = getelementptr inbounds i8, ptr %5, i32 8
  %10 = getelementptr inbounds i32, ptr %6, i32 1
  %11 = getelementptr inbounds i32, ptr %5, i32 1
  %12 = getelementptr inbounds i32, ptr %6, i32 2
  %13 = getelementptr inbounds i32, ptr %5, i32 2
  %14 = getelementptr inbounds i32, ptr %6, i32 3
  %15 = getelementptr inbounds i32, ptr %5, i32 3
  br label %16

16:                                               ; preds = %16, %4
  %17 = phi i32 [ 0, %4 ], [ %46, %16 ]
  %18 = load i64, ptr %5, align 8
  %19 = call i64 @llvm.bswap.i64(i64 %18) #8
  %20 = load i64, ptr %9, align 8
  %21 = call i64 @llvm.bswap.i64(i64 %20) #8
  %22 = call i64 @llvm.fshl.i64(i64 %19, i64 %21, i64 1) #8
  %23 = call i64 @llvm.bswap.i64(i64 %22) #8
  store i64 %23, ptr %5, align 8
  %24 = shl i64 %21, 1
  %25 = icmp slt i64 %19, 0
  %26 = select i1 %25, i64 135, i64 0
  %27 = xor i64 %24, %26
  %28 = call i64 @llvm.bswap.i64(i64 %27) #8
  store i64 %28, ptr %9, align 8
  %29 = getelementptr ptr, ptr %1, i32 %17
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i32, ptr %2, i32 %17
  %32 = load i32, ptr %31, align 4
  %33 = call i32 @crypto_shash_digest(ptr noundef nonnull %7, ptr noundef %30, i32 noundef %32, ptr noundef nonnull %6) #8
  %34 = load i32, ptr %6, align 4
  %35 = load i32, ptr %5, align 8
  %36 = xor i32 %35, %34
  store i32 %36, ptr %5, align 8
  %37 = load i32, ptr %10, align 4
  %38 = load i32, ptr %11, align 4
  %39 = xor i32 %38, %37
  store i32 %39, ptr %11, align 4
  %40 = load i32, ptr %12, align 4
  %41 = load i32, ptr %13, align 8
  %42 = xor i32 %41, %40
  store i32 %42, ptr %13, align 8
  %43 = load i32, ptr %14, align 4
  %44 = load i32, ptr %15, align 4
  %45 = xor i32 %44, %43
  store i32 %45, ptr %15, align 4
  %46 = add nuw nsw i32 %17, 1
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %48, label %16

48:                                               ; preds = %16
  %49 = getelementptr inbounds i32, ptr %5, i32 1
  %50 = getelementptr inbounds i32, ptr %5, i32 2
  %51 = getelementptr inbounds i32, ptr %5, i32 3
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr inbounds %struct.crypto_shash, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 64
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.crypto_shash, ptr %52, i32 0, i32 2, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 -128
  %61 = load ptr, ptr %60, align 64
  %62 = call i32 %61(ptr noundef nonnull %7) #8
  br label %63

63:                                               ; preds = %57, %48
  %64 = getelementptr i32, ptr %2, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = icmp ugt i32 %65, 15
  br i1 %66, label %67, label %91

67:                                               ; preds = %63
  %68 = getelementptr ptr, ptr %1, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = add i32 %65, -16
  %71 = call i32 @crypto_shash_update(ptr noundef nonnull %7, ptr noundef %69, i32 noundef %70) #8
  %72 = load ptr, ptr %68, align 4
  %73 = load i32, ptr %64, align 4
  %74 = getelementptr i8, ptr %72, i32 %73
  %75 = getelementptr i8, ptr %74, i32 -16
  %76 = getelementptr i32, ptr %75, i32 1
  %77 = load i32, ptr %75, align 4
  %78 = load i32, ptr %5, align 8
  %79 = xor i32 %78, %77
  store i32 %79, ptr %5, align 8
  %80 = getelementptr i32, ptr %76, i32 1
  %81 = load i32, ptr %76, align 4
  %82 = load i32, ptr %49, align 4
  %83 = xor i32 %82, %81
  store i32 %83, ptr %49, align 4
  %84 = getelementptr i32, ptr %80, i32 1
  %85 = load i32, ptr %80, align 4
  %86 = load i32, ptr %50, align 8
  %87 = xor i32 %86, %85
  store i32 %87, ptr %50, align 8
  %88 = load i32, ptr %84, align 4
  %89 = load i32, ptr %51, align 4
  %90 = xor i32 %89, %88
  store i32 %90, ptr %51, align 4
  br label %109

91:                                               ; preds = %63
  %92 = load i64, ptr %5, align 8
  %93 = call i64 @llvm.bswap.i64(i64 %92) #8
  %94 = load i64, ptr %9, align 8
  %95 = call i64 @llvm.bswap.i64(i64 %94) #8
  %96 = call i64 @llvm.fshl.i64(i64 %93, i64 %95, i64 1) #8
  %97 = call i64 @llvm.bswap.i64(i64 %96) #8
  store i64 %97, ptr %5, align 8
  %98 = shl i64 %95, 1
  %99 = icmp slt i64 %93, 0
  %100 = select i1 %99, i64 135, i64 0
  %101 = xor i64 %98, %100
  %102 = call i64 @llvm.bswap.i64(i64 %101) #8
  store i64 %102, ptr %9, align 8
  %103 = getelementptr ptr, ptr %1, i32 5
  %104 = load ptr, ptr %103, align 4
  call void @__crypto_xor(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %104, i32 noundef %65) #8
  %105 = load i32, ptr %64, align 4
  %106 = getelementptr [16 x i8], ptr %5, i32 0, i32 %105
  %107 = load i8, ptr %106, align 1
  %108 = xor i8 %107, -128
  store i8 %108, ptr %106, align 1
  br label %109

109:                                              ; preds = %91, %67
  %110 = call i32 @crypto_shash_finup(ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef 16, ptr noundef %3) #8
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

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
