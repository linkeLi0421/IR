; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/efi-stub.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/efi-stub.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.guid_t = type { [16 x i8] }
%struct.anon = type { %struct.efi_table_hdr_t, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon.5 = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efi_properties_table_t = type { i32, i32, i64 }
%struct.efi_rt_properties_table_t = type { i16, i16, i32 }
%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.linux_efi_memreserve = type { i32, %struct.atomic_t, i32, [0 x %struct.anon.9] }
%struct.atomic_t = type { i32 }
%struct.anon.9 = type { i32, i32 }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }

@__const.efi_pe_entry.loaded_image_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\A11\1B[b\95\D2\11\8E?\00\A0\C9ir;" }, align 4
@efi_system_table = hidden local_unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [46 x i8] c"\013ERROR: Failed to get loaded image protocol\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"\013ERROR: getting command line via LOADED_IMAGE_PROTOCOL\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\013ERROR: Failed to parse options\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\016Booting Linux Kernel...\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\013ERROR: Failed to relocate kernel\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"dtb=\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"\013ERROR: Ignoring DTB from command line.\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"\013ERROR: Failed to load device tree!\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"\016Using DTB from command line\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"\016Using DTB from configuration table\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"\016Generating empty DTB\0A\00", align 1
@flat_va_mapping = internal unnamed_addr global i8 0, align 1
@efi_novamap = external hidden local_unnamed_addr global i8, align 1
@efi_nokaslr = external hidden local_unnamed_addr global i8, align 1
@virtmap_base = internal unnamed_addr global i64 536870912, align 8
@.str.12 = private unnamed_addr constant [54 x i8] c"\013ERROR: Failed to update FDT and exit boot services\0A\00", align 1
@__const.setup_graphics.gop_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\DE\A9B\90\DC#8J\96\FBz\DE\D0\80Qj" }, align 4
@.str.13 = private unnamed_addr constant [5 x i16] [i16 100, i16 116, i16 98, i16 61, i16 0], align 2
@__const.install_memreserve_table.memreserve_table_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\C6\B0\8E\88\DE\8E\F5O\A8\F0\9A\EE\\\B9w\C2" }, align 4
@.str.14 = private unnamed_addr constant [47 x i8] c"\013ERROR: Failed to allocate memreserve entry!\0A\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"\013ERROR: Failed to install memreserve config table!\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_pe_entry(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.guid_t, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.guid_t, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store i32 0, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store i32 0, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  store i32 0, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store i32 0, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_pe_entry.loaded_image_proto, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #6
  store i32 0, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #6
  store i32 0, ptr %15, align 4
  store ptr %1, ptr @efi_system_table, align 4
  %17 = load i64, ptr %1, align 8
  %18 = icmp eq i64 %17, 6076298535811760713
  br i1 %18, label %19, label %191

19:                                               ; preds = %2
  %20 = tail call i32 @check_platform_features() #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %191

22:                                               ; preds = %19
  %23 = load ptr, ptr @efi_system_table, align 4
  %24 = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.anon.5, ptr %25, i32 0, i32 17
  %27 = load ptr, ptr %26, align 8
  %28 = call i32 %27(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %5) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str) #7
  br label %191

32:                                               ; preds = %22
  %33 = load ptr, ptr %5, align 4
  %34 = call ptr @efi_convert_cmdline(ptr noundef %33, ptr noundef nonnull %12) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.1) #7
  br label %191

38:                                               ; preds = %32
  %39 = load i32, ptr %12, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = call i32 @efi_parse_options(ptr noundef nonnull @.str.2) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.3) #7
  br label %183

46:                                               ; preds = %41
  %47 = load i32, ptr %12, align 4
  br label %48

48:                                               ; preds = %46, %38
  %49 = phi i32 [ %47, %46 ], [ %39, %38 ]
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = call i32 @efi_parse_options(ptr noundef nonnull %34) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.3) #7
  br label %183

56:                                               ; preds = %51, %48
  %57 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) @__const.setup_graphics.gop_proto, i32 16, i1 false) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4
  %58 = load ptr, ptr @efi_system_table, align 4
  %59 = getelementptr inbounds %struct.anon, ptr %58, i32 0, i32 10
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.anon.5, ptr %60, i32 0, i32 20
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(i32 noundef 2, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %4, ptr noundef null) #7
  %64 = icmp eq i32 %63, -2147483643
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = call ptr @alloc_screen_info() #7
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %4, align 4
  %70 = call i32 @efi_setup_gop(ptr noundef nonnull %66, ptr noundef nonnull %3, i32 noundef %69) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  call void @free_screen_info(ptr noundef nonnull %66) #7
  br label %73

73:                                               ; preds = %72, %68, %65, %56
  %74 = phi ptr [ null, %72 ], [ null, %65 ], [ %66, %68 ], [ null, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  %75 = load ptr, ptr %5, align 4
  %76 = call i32 @handle_kernel_image(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %75) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.5) #7
  br label %181

80:                                               ; preds = %73
  call void @efi_retrieve_tpm2_eventlog() #7
  %81 = call i32 @efi_get_secureboot() #7
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = call ptr @strstr(ptr noundef nonnull %34, ptr noundef nonnull @.str.6) #7
  %85 = icmp eq ptr %84, null
  br i1 %85, label %97, label %86

86:                                               ; preds = %83
  %87 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.7) #7
  br label %97

88:                                               ; preds = %80
  %89 = load ptr, ptr %5, align 4
  %90 = call i32 @handle_cmdline_files(ptr noundef %89, ptr noundef nonnull @.str.13, i32 noundef 8, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %10, ptr noundef nonnull %11) #7
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.8) #7
  br label %175

94:                                               ; preds = %88
  %95 = load i32, ptr %10, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94, %86, %83
  %98 = call ptr @get_fdt(ptr noundef nonnull %11) #7
  %99 = ptrtoint ptr %98 to i32
  store i32 %99, ptr %10, align 4
  %100 = icmp eq ptr %98, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %97, %94
  %102 = phi ptr [ @.str.9, %94 ], [ @.str.10, %97 ]
  %103 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull %102) #7
  %104 = load i32, ptr %10, align 4
  br label %105

105:                                              ; preds = %101, %97
  %106 = phi i32 [ %104, %101 ], [ %99, %97 ]
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.11) #7
  br label %110

110:                                              ; preds = %108, %105
  %111 = load ptr, ptr %5, align 4
  %112 = load i32, ptr %6, align 4
  %113 = add i32 %112, 536870912
  %114 = and i32 %113, -4194304
  %115 = call i32 @efi_load_initrd(ptr noundef %111, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef -1, i32 noundef %114) #7
  %116 = call i32 @efi_random_get_seed() #7
  %117 = call ptr @get_efi_config_table([4 x i32] [i32 -2012566365, i32 1241795292, i32 1203206544, i32 -450557900]) #7
  %118 = icmp eq ptr %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %110
  %120 = getelementptr inbounds %struct.efi_properties_table_t, ptr %117, i32 0, i32 2
  %121 = load i64, ptr %120, align 8
  %122 = and i64 %121, 1
  %123 = icmp ne i64 %122, 0
  br label %124

124:                                              ; preds = %119, %110
  %125 = phi i1 [ false, %110 ], [ %123, %119 ]
  %126 = zext i1 %125 to i8
  store i8 %126, ptr @flat_va_mapping, align 1
  %127 = call ptr @get_efi_config_table([4 x i32] [i32 -345599606, i32 1076526831, i32 496184964, i32 -376782047]) #7
  %128 = icmp eq ptr %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.efi_rt_properties_table_t, ptr %127, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = trunc i32 %131 to i8
  %133 = xor i8 %132, -1
  %134 = lshr i8 %133, 7
  br label %135

135:                                              ; preds = %129, %124
  %136 = phi i8 [ %134, %129 ], [ 0, %124 ]
  %137 = load i8, ptr @efi_novamap, align 1, !range !10
  %138 = or i8 %137, %136
  store i8 %138, ptr @efi_novamap, align 1
  %139 = load i8, ptr @efi_nokaslr, align 1, !range !10
  %140 = icmp eq i8 %139, 0
  %141 = load i8, ptr @flat_va_mapping, align 1
  %142 = icmp eq i8 %141, 0
  %143 = select i1 %140, i1 %142, i1 false
  br i1 %143, label %144, label %154

144:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #6
  store i32 0, ptr %16, align 4, !annotation !9
  %145 = call i32 @efi_get_random_bytes(i32 noundef 4, ptr noundef nonnull %16) #7
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i32, ptr %16, align 4
  %149 = zext i32 %148 to i64
  %150 = mul nuw nsw i64 %149, 1016
  %151 = lshr i64 %150, 11
  %152 = add nuw nsw i64 %151, 536870912
  store i64 %152, ptr @virtmap_base, align 8
  br label %153

153:                                              ; preds = %147, %144
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #6
  br label %154

154:                                              ; preds = %153, %135
  call fastcc void @install_memreserve_table() #8
  %155 = load i32, ptr %8, align 4
  %156 = zext i32 %155 to i64
  %157 = load i32, ptr %9, align 4
  %158 = zext i32 %157 to i64
  %159 = load i32, ptr %10, align 4
  %160 = load i32, ptr %11, align 4
  %161 = call i32 @allocate_new_fdt_and_exit_boot(ptr noundef %0, ptr noundef nonnull %10, i64 noundef %156, i64 noundef %158, ptr noundef nonnull %34, i32 noundef %159, i32 noundef %160) #7
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %154
  call void @efi_handle_post_ebs_state() #7
  %164 = load i32, ptr %6, align 4
  %165 = load i32, ptr %10, align 4
  %166 = inttoptr i32 %165 to ptr
  %167 = getelementptr inbounds %struct.fdt_header, ptr %166, i32 0, i32 1
  %168 = call fastcc i32 @fdt32_ld(ptr noundef %167) #8
  call void @efi_enter_kernel(i32 noundef %164, i32 noundef %165, i32 noundef %168) #9
  unreachable

169:                                              ; preds = %154
  %170 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.12) #7
  %171 = load i32, ptr %9, align 4
  %172 = load i32, ptr %8, align 4
  call void @efi_free(i32 noundef %171, i32 noundef %172) #7
  %173 = load i32, ptr %11, align 4
  %174 = load i32, ptr %10, align 4
  call void @efi_free(i32 noundef %173, i32 noundef %174) #7
  br label %175

175:                                              ; preds = %169, %92
  %176 = phi i32 [ %161, %169 ], [ %90, %92 ]
  %177 = load i32, ptr %7, align 4
  %178 = load i32, ptr %6, align 4
  call void @efi_free(i32 noundef %177, i32 noundef %178) #7
  %179 = load i32, ptr %15, align 4
  %180 = load i32, ptr %14, align 4
  call void @efi_free(i32 noundef %179, i32 noundef %180) #7
  br label %181

181:                                              ; preds = %175, %78
  %182 = phi i32 [ %76, %78 ], [ %176, %175 ]
  call void @free_screen_info(ptr noundef %74) #7
  br label %183

183:                                              ; preds = %181, %54, %44
  %184 = phi i32 [ %42, %44 ], [ %52, %54 ], [ %182, %181 ]
  %185 = load ptr, ptr @efi_system_table, align 4
  %186 = getelementptr inbounds %struct.anon, ptr %185, i32 0, i32 10
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.anon.5, ptr %187, i32 0, i32 7
  %189 = load ptr, ptr %188, align 8
  %190 = call i32 %189(ptr noundef nonnull %34) #7
  br label %191

191:                                              ; preds = %183, %36, %30, %19, %2
  %192 = phi i32 [ %20, %19 ], [ %28, %30 ], [ %184, %183 ], [ -2147483639, %36 ], [ -2147483646, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %192
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @check_platform_features() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @efi_convert_cmdline(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_parse_options(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @handle_kernel_image(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden void @efi_retrieve_tpm2_eventlog() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_get_secureboot() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @strstr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @get_fdt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_load_initrd(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_random_get_seed() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @get_efi_config_table([4 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_get_random_bytes(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define internal fastcc void @install_memreserve_table() unnamed_addr #0 {
  %1 = alloca ptr, align 4
  %2 = alloca %struct.guid_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #6
  store ptr null, ptr %1, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) @__const.install_memreserve_table.memreserve_table_guid, i32 16, i1 false)
  %3 = load ptr, ptr @efi_system_table, align 4
  %4 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.anon.5, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 %7(i32 noundef 2, i32 noundef 12, ptr noundef nonnull %1) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %0
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr inbounds %struct.linux_efi_memreserve, ptr %11, i32 0, i32 2
  store i32 0, ptr %12, align 4
  store i32 0, ptr %11, align 4
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr inbounds %struct.linux_efi_memreserve, ptr %13, i32 0, i32 1
  store volatile i32 0, ptr %14, align 4
  %15 = load ptr, ptr @efi_system_table, align 4
  %16 = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.anon.5, ptr %17, i32 0, i32 22
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef nonnull %2, ptr noundef %13) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %10, %0
  %23 = phi ptr [ @.str.14, %0 ], [ @.str.15, %10 ]
  %24 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull %23) #7
  br label %25

25:                                               ; preds = %22, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @allocate_new_fdt_and_exit_boot(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden void @efi_handle_post_ebs_state() local_unnamed_addr #3

; Function Attrs: noreturn null_pointer_is_valid optsize
declare hidden void @efi_enter_kernel(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn uwtable(sync)
define internal fastcc i32 @fdt32_ld(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or i32 %8, %4
  %10 = getelementptr i8, ptr %0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or i32 %9, %13
  %15 = getelementptr i8, ptr %0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %14, %17
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden void @efi_free(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden void @free_screen_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden void @efi_get_virtmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %53, label %7

7:                                                ; preds = %5
  %8 = load i64, ptr @virtmap_base, align 8
  br label %9

9:                                                ; preds = %48, %7
  %10 = phi i32 [ %51, %48 ], [ 0, %7 ]
  %11 = phi ptr [ %50, %48 ], [ %3, %7 ]
  %12 = phi i64 [ %49, %48 ], [ %8, %7 ]
  %13 = getelementptr i8, ptr %0, i32 %10
  %14 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %13, i32 0, i32 5
  %15 = load i64, ptr %14, align 8
  %16 = icmp sgt i64 %15, -1
  br i1 %16, label %48, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %13, i32 0, i32 2
  %19 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %13, i32 0, i32 4
  %20 = load i64, ptr %19, align 8
  %21 = shl i64 %20, 12
  %22 = load i64, ptr %18, align 8
  %23 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %13, i32 0, i32 3
  store i64 %22, ptr %23, align 8
  %24 = load i8, ptr @efi_novamap, align 1, !range !10
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %17
  %27 = load i8, ptr @flat_va_mapping, align 1, !range !10
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = and i64 %22, 65535
  %31 = add i64 %30, %21
  %32 = and i64 %22, 2097151
  %33 = icmp eq i64 %32, 0
  %34 = icmp ugt i64 %31, 2097151
  %35 = select i1 %33, i1 %34, i1 false
  %36 = add i64 %12, -1
  %37 = select i1 %35, i64 2097151, i64 65535
  %38 = or i64 %36, %37
  %39 = add i64 %38, 1
  %40 = or i64 %30, %39
  store i64 %40, ptr %23, align 8
  %41 = add i64 %39, %31
  br label %42

42:                                               ; preds = %29, %26
  %43 = phi i64 [ %12, %26 ], [ %41, %29 ]
  %44 = tail call ptr @memcpy(ptr noundef %11, ptr noundef %13, i32 noundef %2) #7
  %45 = getelementptr i8, ptr %11, i32 %2
  %46 = load i32, ptr %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %4, align 4
  br label %48

48:                                               ; preds = %42, %17, %9
  %49 = phi i64 [ %43, %42 ], [ %12, %9 ], [ %12, %17 ]
  %50 = phi ptr [ %45, %42 ], [ %11, %9 ], [ %11, %17 ]
  %51 = add i32 %10, %2
  %52 = icmp ult i32 %51, %1
  br i1 %52, label %9, label %53

53:                                               ; preds = %48, %5
  ret void
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @alloc_screen_info() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_setup_gop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @handle_cmdline_files(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noreturn null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind optsize "no-builtins" }
attributes #8 = { nobuiltin optsize "no-builtins" }
attributes #9 = { nobuiltin noreturn nounwind optsize "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
