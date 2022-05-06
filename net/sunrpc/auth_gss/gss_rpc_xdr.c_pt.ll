; ModuleID = '/llk/IR/net/sunrpc/auth_gss/gss_rpc_xdr.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/gss_rpc_xdr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xdr_netobj = type { i32, ptr }
%struct.gssx_call_ctx = type { %struct.xdr_netobj, %struct.xdr_netobj, %struct.gssx_option_array }
%struct.gssx_option_array = type { i32, ptr }
%struct.gssx_arg_accept_sec_context = type { %struct.gssx_call_ctx, ptr, ptr, %struct.gssp_in_token, ptr, i32, %struct.gssx_option_array, ptr, i32 }
%struct.gssp_in_token = type { ptr, i32, i32 }
%struct.gssx_ctx = type { %struct.xdr_netobj, %struct.xdr_netobj, i32, %struct.xdr_netobj, %struct.gssx_name, %struct.gssx_name, i64, i64, i32, i32, %struct.gssx_option_array }
%struct.gssx_name = type { %struct.xdr_netobj }
%struct.gssx_cred = type { %struct.gssx_name, %struct.gssx_cred_element_array, %struct.xdr_netobj, i32 }
%struct.gssx_cred_element_array = type { i32, ptr }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.136, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.136 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.gssx_cb = type { i64, %struct.xdr_netobj, i64, %struct.xdr_netobj, %struct.xdr_netobj }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.gssx_status = type { i64, %struct.xdr_netobj, i64, %struct.xdr_netobj, %struct.xdr_netobj, %struct.xdr_netobj, %struct.gssx_option_array }
%struct.gssx_res_accept_sec_context = type { %struct.gssx_status, ptr, ptr, %struct.gssx_option_array }
%struct.gssx_option = type { %struct.xdr_netobj, %struct.xdr_netobj }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.gssx_name_attr = type { %struct.xdr_netobj, %struct.xdr_netobj, %struct.gssx_option_array }

@.str = private unnamed_addr constant [22 x i8] c"exported_context_type\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"linux_lucid_v1\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"exported_creds_type\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"linux_creds_v1\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gssx_enc_accept_sec_context(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %2, align 4
  %5 = add i32 %4, 4
  %6 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %5) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %203, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.xdr_netobj, ptr %2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %2, align 4
  %12 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %6, ptr noundef %10, i32 noundef %11) #8
  %13 = getelementptr inbounds %struct.gssx_call_ctx, ptr %2, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 4
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %15) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %203, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.gssx_call_ctx, ptr %2, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %13, align 4
  %22 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %16, ptr noundef %20, i32 noundef %21) #8
  %23 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  store i32 33554432, ptr %23, align 4
  %24 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 26) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %24, ptr noundef nonnull @.str, i32 noundef 22) #8
  %28 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 19) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %28, ptr noundef nonnull @.str.1, i32 noundef 15) #8
  br label %32

32:                                               ; preds = %30, %26, %18
  %33 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 24) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %203, label %35

35:                                               ; preds = %32
  %36 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %33, ptr noundef nonnull @.str.2, i32 noundef 20) #8
  %37 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 19) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %203, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %37, ptr noundef nonnull @.str.3, i32 noundef 15) #8
  %41 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %2, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %119, label %44

44:                                               ; preds = %39
  %45 = load i32, ptr %42, align 4
  %46 = add i32 %45, 4
  %47 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %46) #8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %203, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.xdr_netobj, ptr %42, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %42, align 4
  %53 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %47, ptr noundef %51, i32 noundef %52) #8
  %54 = getelementptr inbounds %struct.gssx_ctx, ptr %42, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 4
  %57 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %56) #8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %203, label %59

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.gssx_ctx, ptr %42, i32 0, i32 1, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load i32, ptr %54, align 4
  %63 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %57, ptr noundef %61, i32 noundef %62) #8
  %64 = getelementptr inbounds %struct.gssx_ctx, ptr %42, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %203, label %68, !prof !8

68:                                               ; preds = %59
  %69 = icmp eq i32 %65, 0
  %70 = select i1 %69, i32 0, i32 16777216
  store i32 %70, ptr %66, align 4
  %71 = getelementptr inbounds %struct.gssx_ctx, ptr %42, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, 4
  %74 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %73) #8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %203, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.gssx_ctx, ptr %42, i32 0, i32 3, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = load i32, ptr %71, align 4
  %80 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %74, ptr noundef %78, i32 noundef %79) #8
  %81 = getelementptr inbounds %struct.gssx_ctx, ptr %42, i32 0, i32 4
  %82 = tail call fastcc i32 @gssx_enc_name(ptr noundef %1, ptr noundef %81) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %203

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.gssx_ctx, ptr %42, i32 0, i32 5
  %86 = tail call fastcc i32 @gssx_enc_name(ptr noundef %1, ptr noundef %85) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %203

88:                                               ; preds = %84
  %89 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %203, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.gssx_ctx, ptr %42, i32 0, i32 6
  %93 = load i64, ptr %92, align 8
  %94 = tail call i64 @llvm.bswap.i64(i64 %93) #8
  store i64 %94, ptr %89, align 1
  %95 = getelementptr i32, ptr %89, i32 2
  %96 = getelementptr inbounds %struct.gssx_ctx, ptr %42, i32 0, i32 7
  %97 = load i64, ptr %96, align 8
  %98 = tail call i64 @llvm.bswap.i64(i64 %97) #8
  store i64 %98, ptr %95, align 1
  %99 = getelementptr inbounds %struct.gssx_ctx, ptr %42, i32 0, i32 8
  %100 = load i32, ptr %99, align 8
  %101 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %203, label %103, !prof !8

103:                                              ; preds = %91
  %104 = icmp eq i32 %100, 0
  %105 = select i1 %104, i32 0, i32 16777216
  store i32 %105, ptr %101, align 4
  %106 = getelementptr inbounds %struct.gssx_ctx, ptr %42, i32 0, i32 9
  %107 = load i32, ptr %106, align 4
  %108 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %203, label %110, !prof !8

110:                                              ; preds = %103
  %111 = icmp eq i32 %107, 0
  %112 = select i1 %111, i32 0, i32 16777216
  store i32 %112, ptr %108, align 4
  %113 = getelementptr inbounds %struct.gssx_ctx, ptr %42, i32 0, i32 10
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %203

116:                                              ; preds = %110
  %117 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %203, label %122

119:                                              ; preds = %39
  %120 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %203, label %122, !prof !8

122:                                              ; preds = %119, %116
  %123 = phi ptr [ %117, %116 ], [ %120, %119 ]
  store i32 0, ptr %123, align 4
  %124 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %2, i32 0, i32 2
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %155, label %127

127:                                              ; preds = %122
  %128 = tail call fastcc i32 @gssx_enc_name(ptr noundef %1, ptr noundef nonnull %125) #8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %203

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.gssx_cred, ptr %125, i32 0, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %203

134:                                              ; preds = %130
  %135 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %136 = icmp eq ptr %135, null
  br i1 %136, label %203, label %137

137:                                              ; preds = %134
  store i32 0, ptr %135, align 4
  %138 = getelementptr inbounds %struct.gssx_cred, ptr %125, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, 4
  %141 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %140) #8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %203, label %143

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.gssx_cred, ptr %125, i32 0, i32 2, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = load i32, ptr %138, align 4
  %147 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %141, ptr noundef %145, i32 noundef %146) #8
  %148 = getelementptr inbounds %struct.gssx_cred, ptr %125, i32 0, i32 3
  %149 = load i32, ptr %148, align 4
  %150 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %203, label %152, !prof !8

152:                                              ; preds = %143
  %153 = icmp eq i32 %149, 0
  %154 = select i1 %153, i32 0, i32 16777216
  store i32 %154, ptr %150, align 4
  br label %159

155:                                              ; preds = %122
  %156 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %157 = icmp eq ptr %156, null
  br i1 %157, label %203, label %158, !prof !8

158:                                              ; preds = %155
  store i32 0, ptr %156, align 4
  br label %159

159:                                              ; preds = %158, %152
  %160 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %203, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %2, i32 0, i32 3
  %164 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %2, i32 0, i32 3, i32 2
  %165 = load i32, ptr %164, align 4
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #8
  store i32 %166, ptr %160, align 4
  %167 = load ptr, ptr %163, align 4
  %168 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %2, i32 0, i32 3, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = load i32, ptr %164, align 4
  tail call void @xdr_write_pages(ptr noundef %1, ptr noundef %167, i32 noundef %169, i32 noundef %170) #8
  %171 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %2, i32 0, i32 4
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %162
  %175 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %176 = icmp eq ptr %175, null
  br i1 %176, label %203, label %177, !prof !8

177:                                              ; preds = %174
  store i32 0, ptr %175, align 4
  br label %181

178:                                              ; preds = %162
  %179 = tail call fastcc i32 @gssx_enc_cb(ptr noundef %1, ptr noundef nonnull %172)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %203

181:                                              ; preds = %178, %177
  %182 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %2, i32 0, i32 5
  %183 = load i32, ptr %182, align 4
  %184 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %185 = icmp eq ptr %184, null
  br i1 %185, label %203, label %186, !prof !8

186:                                              ; preds = %181
  %187 = icmp eq i32 %183, 0
  %188 = select i1 %187, i32 0, i32 16777216
  store i32 %188, ptr %184, align 4
  %189 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %2, i32 0, i32 6
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %186
  %193 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %194 = icmp eq ptr %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  store i32 0, ptr %193, align 4
  br label %196

196:                                              ; preds = %195, %192, %186
  %197 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 2
  %198 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %2, i32 0, i32 7
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %2, i32 0, i32 8
  %201 = load i32, ptr %200, align 4
  %202 = shl i32 %201, 12
  tail call void @xdr_inline_pages(ptr noundef %197, i32 noundef 2048, ptr noundef %199, i32 noundef 0, i32 noundef %202) #8
  br label %203

203:                                              ; preds = %196, %181, %178, %174, %159, %155, %143, %137, %134, %130, %127, %119, %116, %110, %103, %91, %88, %84, %76, %68, %59, %49, %44, %35, %32, %8, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gssx_enc_cb(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 8) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #8
  store i64 %7, ptr %3, align 1
  %8 = getelementptr inbounds %struct.gssx_cb, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 4
  %11 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %10) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.gssx_cb, ptr %1, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %8, align 4
  %17 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %11, ptr noundef %15, i32 noundef %16) #8
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 8) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.gssx_cb, ptr %1, i32 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #8
  store i64 %23, ptr %18, align 1
  %24 = getelementptr inbounds %struct.gssx_cb, ptr %1, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 4
  %27 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %26) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.gssx_cb, ptr %1, i32 0, i32 3, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %24, align 4
  %33 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %27, ptr noundef %31, i32 noundef %32) #8
  %34 = getelementptr inbounds %struct.gssx_cb, ptr %1, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 4
  %37 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %36) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.gssx_cb, ptr %1, i32 0, i32 4, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %34, align 4
  %43 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %37, ptr noundef %41, i32 noundef %42) #8
  br label %44

44:                                               ; preds = %39, %29, %20, %13, %5, %2
  %45 = phi i32 [ -28, %2 ], [ -28, %13 ], [ -28, %5 ], [ -28, %20 ], [ 0, %39 ], [ -28, %29 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_inline_pages(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gssx_dec_accept_sec_context(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %256, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @page_address(ptr noundef nonnull %4) #8
  %8 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 4
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 4, i32 1
  store i32 4096, ptr %9, align 4
  %10 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %254, label %12, !prof !8

12:                                               ; preds = %6
  %13 = load i64, ptr %10, align 1
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #8
  store i64 %14, ptr %2, align 8
  %15 = getelementptr inbounds %struct.gssx_status, ptr %2, i32 0, i32 1
  %16 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %254, label %18, !prof !8

18:                                               ; preds = %12
  %19 = load i32, ptr %16, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %20) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %254, label %23, !prof !8

23:                                               ; preds = %18
  %24 = load i32, ptr %15, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %23
  %27 = icmp ugt i32 %20, %24
  br i1 %27, label %254, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.gssx_status, ptr %2, i32 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = tail call ptr @kmemdup(ptr noundef nonnull %21, i32 noundef %20, i32 noundef 3264) #8
  store ptr %33, ptr %29, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %254, label %36

35:                                               ; preds = %28
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %30, ptr nonnull align 4 %21, i32 %20, i1 false) #8
  br label %36

36:                                               ; preds = %35, %32
  store i32 %20, ptr %15, align 4
  br label %37

37:                                               ; preds = %36, %23
  %38 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %254, label %40, !prof !8

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.gssx_status, ptr %2, i32 0, i32 2
  %42 = load i64, ptr %38, align 1
  %43 = tail call i64 @llvm.bswap.i64(i64 %42) #8
  store i64 %43, ptr %41, align 8
  %44 = getelementptr inbounds %struct.gssx_status, ptr %2, i32 0, i32 3
  %45 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %254, label %47, !prof !8

47:                                               ; preds = %40
  %48 = load i32, ptr %45, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  %50 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %49) #8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %254, label %52, !prof !8

52:                                               ; preds = %47
  %53 = load i32, ptr %44, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = icmp ugt i32 %49, %53
  br i1 %56, label %254, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.gssx_status, ptr %2, i32 0, i32 3, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = tail call ptr @kmemdup(ptr noundef nonnull %50, i32 noundef %49, i32 noundef 3264) #8
  store ptr %62, ptr %58, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %254, label %65

64:                                               ; preds = %57
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %59, ptr nonnull align 4 %50, i32 %49, i1 false) #8
  br label %65

65:                                               ; preds = %64, %61
  store i32 %49, ptr %44, align 4
  br label %66

66:                                               ; preds = %65, %52
  %67 = getelementptr inbounds %struct.gssx_status, ptr %2, i32 0, i32 4
  %68 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %254, label %70, !prof !8

70:                                               ; preds = %66
  %71 = load i32, ptr %68, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #8
  %73 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %72) #8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %254, label %75, !prof !8

75:                                               ; preds = %70
  %76 = load i32, ptr %67, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %75
  %79 = icmp ugt i32 %72, %76
  br i1 %79, label %254, label %80

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.gssx_status, ptr %2, i32 0, i32 4, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = tail call ptr @kmemdup(ptr noundef nonnull %73, i32 noundef %72, i32 noundef 3264) #8
  store ptr %85, ptr %81, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %254, label %88

87:                                               ; preds = %80
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %82, ptr nonnull align 4 %73, i32 %72, i1 false) #8
  br label %88

88:                                               ; preds = %87, %84
  store i32 %72, ptr %67, align 4
  br label %89

89:                                               ; preds = %88, %75
  %90 = getelementptr inbounds %struct.gssx_status, ptr %2, i32 0, i32 5
  %91 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %254, label %93, !prof !8

93:                                               ; preds = %89
  %94 = load i32, ptr %91, align 4
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #8
  %96 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %95) #8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %254, label %98, !prof !8

98:                                               ; preds = %93
  %99 = load i32, ptr %90, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %98
  %102 = icmp ugt i32 %95, %99
  br i1 %102, label %254, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.gssx_status, ptr %2, i32 0, i32 5, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = tail call ptr @kmemdup(ptr noundef nonnull %96, i32 noundef %95, i32 noundef 3264) #8
  store ptr %108, ptr %104, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %254, label %111

110:                                              ; preds = %103
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %105, ptr nonnull align 4 %96, i32 %95, i1 false) #8
  br label %111

111:                                              ; preds = %110, %107
  store i32 %95, ptr %90, align 4
  br label %112

112:                                              ; preds = %111, %98
  %113 = getelementptr inbounds %struct.gssx_status, ptr %2, i32 0, i32 6
  %114 = tail call fastcc i32 @dummy_dec_opt_array(ptr noundef %1, ptr noundef %113) #8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %254

116:                                              ; preds = %112
  %117 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %254, label %119, !prof !8

119:                                              ; preds = %116
  %120 = load i32, ptr %117, align 4
  %121 = icmp eq i32 %120, 0
  %122 = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %2, i32 0, i32 1
  br i1 %121, label %232, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %122, align 8
  %125 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %254, label %127, !prof !8

127:                                              ; preds = %123
  %128 = load i32, ptr %125, align 4
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #8
  %130 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %129) #8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %254, label %132, !prof !8

132:                                              ; preds = %127
  %133 = load i32, ptr %124, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %146, label %135

135:                                              ; preds = %132
  %136 = icmp ugt i32 %129, %133
  br i1 %136, label %254, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.xdr_netobj, ptr %124, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = tail call ptr @kmemdup(ptr noundef nonnull %130, i32 noundef %129, i32 noundef 3264) #8
  store ptr %142, ptr %138, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %254, label %145

144:                                              ; preds = %137
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %139, ptr nonnull align 4 %130, i32 %129, i1 false) #8
  br label %145

145:                                              ; preds = %144, %141
  store i32 %129, ptr %124, align 4
  br label %146

146:                                              ; preds = %145, %132
  %147 = getelementptr inbounds %struct.gssx_ctx, ptr %124, i32 0, i32 1
  %148 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %254, label %150, !prof !8

150:                                              ; preds = %146
  %151 = load i32, ptr %148, align 4
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #8
  %153 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %152) #8
  %154 = icmp eq ptr %153, null
  br i1 %154, label %254, label %155, !prof !8

155:                                              ; preds = %150
  %156 = load i32, ptr %147, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %169, label %158

158:                                              ; preds = %155
  %159 = icmp ugt i32 %152, %156
  br i1 %159, label %254, label %160

160:                                              ; preds = %158
  %161 = getelementptr inbounds %struct.gssx_ctx, ptr %124, i32 0, i32 1, i32 1
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = tail call ptr @kmemdup(ptr noundef nonnull %153, i32 noundef %152, i32 noundef 3264) #8
  store ptr %165, ptr %161, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %254, label %168

167:                                              ; preds = %160
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %162, ptr nonnull align 4 %153, i32 %152, i1 false) #8
  br label %168

168:                                              ; preds = %167, %164
  store i32 %152, ptr %147, align 4
  br label %169

169:                                              ; preds = %168, %155
  %170 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %171 = icmp eq ptr %170, null
  br i1 %171, label %254, label %172, !prof !8

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.gssx_ctx, ptr %124, i32 0, i32 2
  %174 = load i32, ptr %170, align 4
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #8
  store i32 %175, ptr %173, align 4
  %176 = getelementptr inbounds %struct.gssx_ctx, ptr %124, i32 0, i32 3
  %177 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %178 = icmp eq ptr %177, null
  br i1 %178, label %254, label %179, !prof !8

179:                                              ; preds = %172
  %180 = load i32, ptr %177, align 4
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #8
  %182 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %181) #8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %254, label %184, !prof !8

184:                                              ; preds = %179
  %185 = load i32, ptr %176, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %198, label %187

187:                                              ; preds = %184
  %188 = icmp ugt i32 %181, %185
  br i1 %188, label %254, label %189

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.gssx_ctx, ptr %124, i32 0, i32 3, i32 1
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = tail call ptr @kmemdup(ptr noundef nonnull %182, i32 noundef %181, i32 noundef 3264) #8
  store ptr %194, ptr %190, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %254, label %197

196:                                              ; preds = %189
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %191, ptr nonnull align 4 %182, i32 %181, i1 false) #8
  br label %197

197:                                              ; preds = %196, %193
  store i32 %181, ptr %176, align 4
  br label %198

198:                                              ; preds = %197, %184
  %199 = getelementptr inbounds %struct.gssx_ctx, ptr %124, i32 0, i32 4
  %200 = tail call fastcc i32 @gssx_dec_name(ptr noundef %1, ptr noundef %199) #8
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %254

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.gssx_ctx, ptr %124, i32 0, i32 5
  %204 = tail call fastcc i32 @gssx_dec_name(ptr noundef %1, ptr noundef %203) #8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %254

206:                                              ; preds = %202
  %207 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #8
  %208 = icmp eq ptr %207, null
  br i1 %208, label %254, label %209, !prof !8

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.gssx_ctx, ptr %124, i32 0, i32 6
  %211 = load i64, ptr %207, align 1
  %212 = tail call i64 @llvm.bswap.i64(i64 %211) #8
  store i64 %212, ptr %210, align 8
  %213 = getelementptr i32, ptr %207, i32 2
  %214 = getelementptr inbounds %struct.gssx_ctx, ptr %124, i32 0, i32 7
  %215 = load i64, ptr %213, align 1
  %216 = tail call i64 @llvm.bswap.i64(i64 %215) #8
  store i64 %216, ptr %214, align 8
  %217 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %218 = icmp eq ptr %217, null
  br i1 %218, label %254, label %219, !prof !8

219:                                              ; preds = %209
  %220 = getelementptr inbounds %struct.gssx_ctx, ptr %124, i32 0, i32 8
  %221 = load i32, ptr %217, align 4
  %222 = tail call i32 @llvm.bswap.i32(i32 %221) #8
  store i32 %222, ptr %220, align 4
  %223 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %224 = icmp eq ptr %223, null
  br i1 %224, label %254, label %225, !prof !8

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.gssx_ctx, ptr %124, i32 0, i32 9
  %227 = load i32, ptr %223, align 4
  %228 = tail call i32 @llvm.bswap.i32(i32 %227) #8
  store i32 %228, ptr %226, align 4
  %229 = getelementptr inbounds %struct.gssx_ctx, ptr %124, i32 0, i32 10
  %230 = tail call fastcc i32 @dummy_dec_opt_array(ptr noundef %1, ptr noundef %229) #8
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %233, label %254

232:                                              ; preds = %119
  store ptr null, ptr %122, align 8
  br label %233

233:                                              ; preds = %232, %225
  %234 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %235 = icmp eq ptr %234, null
  br i1 %235, label %254, label %236, !prof !8

236:                                              ; preds = %233
  %237 = load i32, ptr %234, align 4
  %238 = icmp eq i32 %237, 0
  %239 = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %2, i32 0, i32 2
  br i1 %238, label %244, label %240

240:                                              ; preds = %236
  %241 = load ptr, ptr %239, align 4
  %242 = tail call fastcc i32 @gssx_dec_buffer(ptr noundef %1, ptr noundef %241)
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %245, label %254

244:                                              ; preds = %236
  store ptr null, ptr %239, align 4
  br label %245

245:                                              ; preds = %244, %240
  %246 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %247 = icmp eq ptr %246, null
  br i1 %247, label %254, label %248, !prof !8

248:                                              ; preds = %245
  %249 = load i32, ptr %246, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %2, i32 0, i32 3
  %253 = tail call fastcc i32 @gssx_dec_option_array(ptr noundef %1, ptr noundef %252)
  br label %254

254:                                              ; preds = %251, %248, %245, %240, %233, %225, %219, %209, %206, %202, %198, %193, %187, %179, %172, %169, %164, %158, %150, %146, %141, %135, %127, %123, %116, %112, %107, %101, %93, %89, %84, %78, %70, %66, %61, %55, %47, %40, %37, %32, %26, %18, %12, %6
  %255 = phi i32 [ %114, %112 ], [ %230, %225 ], [ %242, %240 ], [ %253, %251 ], [ -22, %248 ], [ -28, %116 ], [ -28, %233 ], [ -28, %245 ], [ -28, %89 ], [ -28, %93 ], [ -28, %101 ], [ -12, %107 ], [ -28, %66 ], [ -28, %70 ], [ -28, %78 ], [ -12, %84 ], [ -28, %40 ], [ -28, %47 ], [ -28, %55 ], [ -12, %61 ], [ -28, %12 ], [ -28, %18 ], [ -28, %26 ], [ -12, %32 ], [ -28, %37 ], [ -28, %6 ], [ -28, %172 ], [ -28, %179 ], [ -28, %187 ], [ -12, %193 ], [ -28, %146 ], [ -28, %150 ], [ -28, %158 ], [ -12, %164 ], [ -28, %123 ], [ -28, %127 ], [ -28, %135 ], [ -12, %141 ], [ -28, %219 ], [ -28, %209 ], [ -28, %169 ], [ -28, %206 ], [ %204, %202 ], [ %200, %198 ]
  tail call void @__free_pages(ptr noundef nonnull %4, i32 noundef 0) #8
  br label %256

256:                                              ; preds = %254, %3
  %257 = phi i32 [ %255, %254 ], [ -12, %3 ]
  ret i32 %257
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gssx_dec_buffer(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5, !prof !8

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %8 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %7) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10, !prof !8

10:                                               ; preds = %5
  %11 = load i32, ptr %1, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = icmp ugt i32 %7, %11
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.xdr_netobj, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = tail call ptr @kmemdup(ptr noundef nonnull %8, i32 noundef %7, i32 noundef 3264) #8
  store ptr %20, ptr %16, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %23

22:                                               ; preds = %15
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %17, ptr nonnull align 4 %8, i32 %7, i1 false)
  br label %23

23:                                               ; preds = %22, %19
  store i32 %7, ptr %1, align 4
  br label %24

24:                                               ; preds = %23, %19, %13, %10, %5, %2
  %25 = phi i32 [ 0, %23 ], [ -28, %2 ], [ -28, %5 ], [ 0, %10 ], [ -28, %13 ], [ -12, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gssx_dec_option_array(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %103, label %5, !prof !8

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %103, label %9

9:                                                ; preds = %5
  store i32 1, ptr %1, align 4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 16) #9
  %12 = getelementptr inbounds %struct.gssx_option_array, ptr %1, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %103, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 32) #9
  %17 = icmp eq ptr %16, null
  %18 = load ptr, ptr %12, align 4
  br i1 %17, label %19, label %20

19:                                               ; preds = %14
  tail call void @kfree(ptr noundef %18) #8
  br label %103

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.xdr_netobj, ptr %18, i32 0, i32 1
  store ptr @.str.3, ptr %21, align 4
  %22 = load ptr, ptr %12, align 4
  store i32 15, ptr %22, align 4
  %23 = load ptr, ptr %12, align 4
  %24 = getelementptr inbounds %struct.gssx_option, ptr %23, i32 0, i32 1, i32 1
  store ptr %16, ptr %24, align 4
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr inbounds %struct.gssx_option, ptr %25, i32 0, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.svc_cred, ptr %16, i32 0, i32 1
  %28 = getelementptr inbounds %struct.svc_cred, ptr %16, i32 0, i32 2
  %29 = call i32 @llvm.umax.i32(i32 %7, i32 1)
  br label %30

30:                                               ; preds = %100, %20
  %31 = phi i32 [ 0, %20 ], [ %101, %100 ]
  %32 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %103, label %34, !prof !8

34:                                               ; preds = %30
  %35 = load i32, ptr %32, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  %37 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %36) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %103, label %39, !prof !8

39:                                               ; preds = %34
  %40 = icmp eq i32 %35, 251658240
  br i1 %40, label %41, label %92

41:                                               ; preds = %39
  %42 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %37, ptr noundef nonnull dereferenceable(15) @.str.3, i32 15)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %92

44:                                               ; preds = %41
  %45 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %103, label %47, !prof !8

47:                                               ; preds = %44
  %48 = load i32, ptr %45, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  %50 = icmp ugt i32 %49, 262156
  br i1 %50, label %103, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %103, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %52, align 4
  store i32 %55, ptr %16, align 8
  %56 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %103, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %56, align 4
  store i32 %59, ptr %27, align 4
  %60 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %103, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %60, align 4
  %64 = shl i32 %63, 2
  %65 = add i32 %64, 12
  %66 = icmp eq i32 %65, %49
  br i1 %66, label %67, label %103

67:                                               ; preds = %62
  %68 = tail call ptr @groups_alloc(i32 noundef %63) #8
  store ptr %68, ptr %28, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %103, label %70

70:                                               ; preds = %67
  %71 = icmp eq i32 %63, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %79, %70
  %73 = phi i32 [ %82, %79 ], [ 0, %70 ]
  %74 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %74, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %28, align 8
  %81 = getelementptr %struct.group_info, ptr %80, i32 0, i32 2, i32 %73
  store i32 %77, ptr %81, align 4
  %82 = add nuw i32 %73, 1
  %83 = icmp eq i32 %82, %63
  br i1 %83, label %84, label %72

84:                                               ; preds = %79
  %85 = load ptr, ptr %28, align 8
  br label %88

86:                                               ; preds = %76, %72
  %87 = load ptr, ptr %28, align 8
  tail call void @groups_free(ptr noundef %87) #8
  br label %103

88:                                               ; preds = %84, %70
  %89 = phi ptr [ %85, %84 ], [ %68, %70 ]
  tail call void @groups_sort(ptr noundef %89) #8
  %90 = load ptr, ptr %12, align 4
  %91 = getelementptr inbounds %struct.gssx_option, ptr %90, i32 0, i32 1
  store i32 1, ptr %91, align 4
  br label %100

92:                                               ; preds = %41, %39
  %93 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95, !prof !8

95:                                               ; preds = %92
  %96 = load i32, ptr %93, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #8
  %98 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %97) #8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100, !prof !8

100:                                              ; preds = %95, %88
  %101 = add nuw i32 %31, 1
  %102 = icmp eq i32 %101, %29
  br i1 %102, label %103, label %30

103:                                              ; preds = %100, %95, %92, %86, %67, %62, %58, %54, %51, %47, %44, %34, %30, %19, %9, %5, %2
  %104 = phi i32 [ -12, %19 ], [ -28, %2 ], [ 0, %5 ], [ -12, %9 ], [ -22, %86 ], [ 0, %100 ], [ -28, %30 ], [ -28, %34 ], [ -28, %44 ], [ -28, %47 ], [ -22, %62 ], [ -12, %67 ], [ -22, %51 ], [ -22, %54 ], [ -22, %58 ], [ -28, %92 ], [ -28, %95 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gssx_enc_name(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = add i32 %3, 4
  %5 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.xdr_netobj, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %1, align 4
  %11 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %5, ptr noundef %9, i32 noundef %10) #8
  %12 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %7
  %15 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %12, ptr noundef null, i32 noundef 0) #8
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %16, ptr noundef null, i32 noundef 0) #8
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %20, ptr noundef null, i32 noundef 0) #8
  %24 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  store i32 0, ptr %24, align 4
  %27 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, ptr %27, align 4
  br label %30

30:                                               ; preds = %29, %26, %22, %18, %14, %7, %2
  %31 = phi i32 [ -28, %2 ], [ -28, %7 ], [ -28, %14 ], [ -28, %18 ], [ 0, %29 ], [ -28, %26 ], [ -28, %22 ]
  ret i32 %31
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_write_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dummy_dec_opt_array(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5, !prof !8

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %10 = call i32 @llvm.umax.i32(i32 %9, i32 1)
  br label %11

11:                                               ; preds = %27, %8
  %12 = phi i32 [ %28, %27 ], [ 0, %8 ]
  %13 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15, !prof !8

15:                                               ; preds = %11
  %16 = load i32, ptr %13, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %17) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20, !prof !8

20:                                               ; preds = %15
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23, !prof !8

23:                                               ; preds = %20
  %24 = load i32, ptr %21, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %26 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %25) #8
  br label %27

27:                                               ; preds = %23, %20, %15, %11
  %28 = add nuw i32 %12, 1
  %29 = icmp eq i32 %28, %10
  br i1 %29, label %30, label %11

30:                                               ; preds = %27, %5
  store i32 0, ptr %1, align 4
  %31 = getelementptr inbounds %struct.gssx_option_array, ptr %1, i32 0, i32 1
  store ptr null, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %2
  %33 = phi i32 [ 0, %30 ], [ -28, %2 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gssx_dec_name(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gssx_name_attr, align 4
  %4 = alloca %struct.gssx_option_array, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %114, label %7, !prof !8

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %10 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %9) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %114, label %12, !prof !8

12:                                               ; preds = %7
  %13 = load i32, ptr %1, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = icmp ugt i32 %9, %13
  br i1 %16, label %114, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.xdr_netobj, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = tail call ptr @kmemdup(ptr noundef nonnull %10, i32 noundef %9, i32 noundef 3264) #8
  store ptr %22, ptr %18, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %114, label %25

24:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %19, ptr nonnull align 4 %10, i32 %9, i1 false) #8
  br label %25

25:                                               ; preds = %24, %21
  store i32 %9, ptr %1, align 4
  br label %26

26:                                               ; preds = %25, %12
  %27 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %114, label %29, !prof !8

29:                                               ; preds = %26
  %30 = load i32, ptr %27, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %32 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %31) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %114, label %34, !prof !8

34:                                               ; preds = %29
  %35 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %114, label %37, !prof !8

37:                                               ; preds = %34
  %38 = load i32, ptr %35, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  %40 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %39) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %114, label %42, !prof !8

42:                                               ; preds = %37
  %43 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %114, label %45, !prof !8

45:                                               ; preds = %42
  %46 = load i32, ptr %43, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  %48 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %47) #8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %114, label %50, !prof !8

50:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #8
  %51 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %111, label %53, !prof !8

53:                                               ; preds = %50
  %54 = load i32, ptr %51, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %112, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  %58 = getelementptr inbounds %struct.xdr_netobj, ptr %3, i32 0, i32 1
  %59 = getelementptr inbounds %struct.gssx_name_attr, ptr %3, i32 0, i32 1
  %60 = getelementptr inbounds %struct.gssx_name_attr, ptr %3, i32 0, i32 1, i32 1
  %61 = getelementptr inbounds %struct.gssx_name_attr, ptr %3, i32 0, i32 2
  %62 = tail call i32 @llvm.umax.i32(i32 %57, i32 1) #8
  br label %63

63:                                               ; preds = %108, %56
  %64 = phi i32 [ 0, %56 ], [ %109, %108 ]
  %65 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %108, label %67, !prof !8

67:                                               ; preds = %63
  %68 = load i32, ptr %65, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #8
  %70 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %69) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %108, label %72, !prof !8

72:                                               ; preds = %67
  %73 = load i32, ptr %3, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %72
  %76 = icmp ugt i32 %69, %73
  br i1 %76, label %108, label %77

77:                                               ; preds = %75
  %78 = load ptr, ptr %58, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = tail call ptr @kmemdup(ptr noundef nonnull %70, i32 noundef %69, i32 noundef 3264) #8
  store ptr %81, ptr %58, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %108, label %84

83:                                               ; preds = %77
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %78, ptr nonnull align 4 %70, i32 %69, i1 false) #8
  br label %84

84:                                               ; preds = %83, %80
  store i32 %69, ptr %3, align 4
  br label %85

85:                                               ; preds = %84, %72
  %86 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %108, label %88, !prof !8

88:                                               ; preds = %85
  %89 = load i32, ptr %86, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #8
  %91 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %90) #8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %108, label %93, !prof !8

93:                                               ; preds = %88
  %94 = load i32, ptr %59, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %93
  %97 = icmp ugt i32 %90, %94
  br i1 %97, label %108, label %98

98:                                               ; preds = %96
  %99 = load ptr, ptr %60, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = tail call ptr @kmemdup(ptr noundef nonnull %91, i32 noundef %90, i32 noundef 3264) #8
  store ptr %102, ptr %60, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %105

104:                                              ; preds = %98
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %99, ptr nonnull align 4 %91, i32 %90, i1 false) #8
  br label %105

105:                                              ; preds = %104, %101
  store i32 %90, ptr %59, align 4
  br label %106

106:                                              ; preds = %105, %93
  %107 = call fastcc i32 @dummy_dec_opt_array(ptr noundef %0, ptr noundef %61) #8
  br label %108

108:                                              ; preds = %106, %101, %96, %88, %85, %80, %75, %67, %63
  %109 = add nuw i32 %64, 1
  %110 = icmp eq i32 %109, %62
  br i1 %110, label %112, label %63

111:                                              ; preds = %50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  br label %114

112:                                              ; preds = %108, %53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  %113 = call fastcc i32 @dummy_dec_opt_array(ptr noundef %0, ptr noundef nonnull %4)
  br label %114

114:                                              ; preds = %112, %111, %45, %42, %37, %34, %29, %26, %21, %15, %7, %2
  %115 = phi i32 [ %113, %112 ], [ -28, %111 ], [ -12, %21 ], [ -28, %15 ], [ -28, %7 ], [ -28, %2 ], [ -28, %26 ], [ -28, %29 ], [ -28, %34 ], [ -28, %37 ], [ -28, %42 ], [ -28, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @groups_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_sort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
