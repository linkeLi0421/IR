; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/fdt.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/fdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efi_boot_memmap = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exit_boot_struct = type { ptr, ptr, ptr }
%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { %struct.efi_table_hdr_t, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.anon.5 = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [46 x i8] c"\013ERROR: Unable to retrieve UEFI memory map.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"\016Exiting boot services...\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\013ERROR: Unable to allocate memory for new device tree.\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\013ERROR: Unable to construct new device tree.\0A\00", align 1
@efi_novamap = external hidden local_unnamed_addr global i8, align 1
@efi_system_table = external hidden local_unnamed_addr global ptr, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"\013ERROR: Exit boot services failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"\013ERROR: Invalid header detected on UEFI supplied FDT, ignoring ...\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\013ERROR: Device Tree header not valid!\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"\013ERROR: Truncated device tree! foo!\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"chosen\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"linux,initrd-start\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"linux,initrd-end\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"linux,uefi-system-table\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"linux,uefi-mmap-start\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"linux,uefi-mmap-size\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"linux,uefi-mmap-desc-size\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"linux,uefi-mmap-desc-ver\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @allocate_new_fdt_and_exit_boot(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 4
  %20 = alloca ptr, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.efi_boot_memmap, align 4
  %23 = alloca %struct.exit_boot_struct, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #5
  store i32 0, ptr %14, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #5
  store i32 0, ptr %15, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #5
  store i32 0, ptr %16, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #5
  store i32 0, ptr %17, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #5
  store i32 0, ptr %18, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #5
  store ptr null, ptr %19, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #5
  store ptr null, ptr %20, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #5
  store i32 0, ptr %21, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %23, i8 0, i32 12, i1 false), !annotation !9
  store ptr %20, ptr %22, align 4
  %24 = getelementptr inbounds %struct.efi_boot_memmap, ptr %22, i32 0, i32 1
  store ptr %14, ptr %24, align 4
  %25 = getelementptr inbounds %struct.efi_boot_memmap, ptr %22, i32 0, i32 2
  store ptr %15, ptr %25, align 4
  %26 = getelementptr inbounds %struct.efi_boot_memmap, ptr %22, i32 0, i32 3
  store ptr %17, ptr %26, align 4
  %27 = getelementptr inbounds %struct.efi_boot_memmap, ptr %22, i32 0, i32 4
  store ptr %18, ptr %27, align 4
  %28 = getelementptr inbounds %struct.efi_boot_memmap, ptr %22, i32 0, i32 5
  store ptr %16, ptr %28, align 4
  %29 = call i32 @efi_get_memory_map(ptr noundef nonnull %22) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %7
  %32 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str) #6
  br label %200

33:                                               ; preds = %7
  %34 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.1) #6
  store ptr %19, ptr %22, align 4
  %35 = call i32 @efi_allocate_pages(i32 noundef 2097152, ptr noundef %1, i32 noundef -1) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.2) #6
  br label %192

39:                                               ; preds = %33
  %40 = call i32 @efi_get_memory_map(ptr noundef nonnull %22) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %190

42:                                               ; preds = %39
  %43 = inttoptr i32 %5 to ptr
  %44 = load i32, ptr %1, align 4
  %45 = inttoptr i32 %44 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  %46 = icmp eq i32 %5, 0
  br i1 %46, label %76, label %47

47:                                               ; preds = %42
  %48 = call i32 @fdt_check_header(ptr noundef nonnull %43) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.6) #6
  br label %144

52:                                               ; preds = %47
  %53 = icmp eq i32 %6, 0
  br i1 %53, label %83, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.fdt_header, ptr %43, i32 0, i32 1
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw i32 %57, 24
  %59 = getelementptr i8, ptr %55, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 16
  %63 = or i32 %62, %58
  %64 = getelementptr i8, ptr %55, i32 2
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 8
  %68 = or i32 %63, %67
  %69 = getelementptr i8, ptr %55, i32 3
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %68, %71
  %73 = icmp ugt i32 %72, %6
  br i1 %73, label %74, label %83

74:                                               ; preds = %54
  %75 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.7) #6
  br label %144

76:                                               ; preds = %42
  %77 = call i32 @fdt_create_empty_tree(ptr noundef %45, i32 noundef 2097152) #6
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %144

79:                                               ; preds = %76
  %80 = call i32 @fdt_path_offset(ptr noundef %45, ptr noundef nonnull @.str.17) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #5
  store i32 33554432, ptr %9, align 4
  %81 = call i32 @fdt_setprop(ptr noundef %45, i32 noundef %80, ptr noundef nonnull @.str.18, ptr noundef nonnull %9, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  store i32 33554432, ptr %8, align 4
  %82 = call i32 @fdt_setprop(ptr noundef %45, i32 noundef %80, ptr noundef nonnull @.str.19, ptr noundef nonnull %8, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  br label %86

83:                                               ; preds = %54, %52
  %84 = call i32 @fdt_open_into(ptr noundef nonnull %43, ptr noundef %45, i32 noundef 2097152) #6
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %144

86:                                               ; preds = %83, %79
  %87 = call i32 @fdt_num_mem_rsv(ptr noundef %45) #6
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %89, %86
  %90 = phi i32 [ %91, %89 ], [ %87, %86 ]
  %91 = add nsw i32 %90, -1
  %92 = call i32 @fdt_del_mem_rsv(ptr noundef %45, i32 noundef %91) #6
  %93 = icmp ugt i32 %90, 1
  br i1 %93, label %89, label %94

94:                                               ; preds = %89, %86
  %95 = call i32 @fdt_subnode_offset(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @.str.8) #6
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = call i32 @fdt_add_subnode(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @.str.8) #6
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %144, label %100

100:                                              ; preds = %97, %94
  %101 = phi i32 [ %98, %97 ], [ %95, %94 ]
  %102 = icmp eq ptr %4, null
  br i1 %102, label %111, label %103

103:                                              ; preds = %100
  %104 = call i32 @strlen(ptr noundef nonnull %4) #6
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = call i32 @strlen(ptr noundef nonnull %4) #6
  %108 = add i32 %107, 1
  %109 = call i32 @fdt_setprop(ptr noundef %45, i32 noundef %101, ptr noundef nonnull @.str.9, ptr noundef nonnull %4, i32 noundef %108) #6
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %144

111:                                              ; preds = %106, %103, %100
  %112 = icmp eq i64 %3, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  %114 = call i64 @llvm.bswap.i64(i64 %2) #5
  store i64 %114, ptr %13, align 8
  %115 = call i32 @fdt_setprop(ptr noundef %45, i32 noundef %101, ptr noundef nonnull @.str.10, ptr noundef nonnull %13, i32 noundef 8) #6
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = add i64 %3, %2
  %119 = call i64 @llvm.bswap.i64(i64 %118) #5
  store i64 %119, ptr %12, align 8
  %120 = call i32 @fdt_setprop(ptr noundef %45, i32 noundef %101, ptr noundef nonnull @.str.11, ptr noundef nonnull %12, i32 noundef 8) #6
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117, %113
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  br label %144

123:                                              ; preds = %117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  br label %124

124:                                              ; preds = %123, %111
  %125 = call i32 @fdt_subnode_offset(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @.str.8) #6
  %126 = load ptr, ptr @efi_system_table, align 4
  %127 = ptrtoint ptr %126 to i32
  %128 = zext i32 %127 to i64
  %129 = call i64 @llvm.bswap.i64(i64 %128) #5
  store i64 %129, ptr %11, align 8
  %130 = call i32 @fdt_setprop(ptr noundef %45, i32 noundef %125, ptr noundef nonnull @.str.12, ptr noundef nonnull %11, i32 noundef 8) #6
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %124
  store i64 -1, ptr %11, align 8
  %133 = call i32 @fdt_setprop(ptr noundef %45, i32 noundef %125, ptr noundef nonnull @.str.13, ptr noundef nonnull %11, i32 noundef 8) #6
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  store i32 -1, ptr %10, align 4
  %136 = call i32 @fdt_setprop(ptr noundef %45, i32 noundef %125, ptr noundef nonnull @.str.14, ptr noundef nonnull %10, i32 noundef 4) #6
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = call i32 @fdt_setprop(ptr noundef %45, i32 noundef %125, ptr noundef nonnull @.str.15, ptr noundef nonnull %10, i32 noundef 4) #6
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = call i32 @fdt_setprop(ptr noundef %45, i32 noundef %125, ptr noundef nonnull @.str.16, ptr noundef nonnull %10, i32 noundef 4) #6
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %141, %138, %135, %132, %124, %122, %106, %97, %83, %76, %74, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  br label %187

145:                                              ; preds = %141
  %146 = call i32 @fdt_pack(ptr noundef %45) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  store i32 0, ptr %21, align 4
  %147 = load ptr, ptr %20, align 4
  store ptr %147, ptr %23, align 4
  %148 = getelementptr inbounds %struct.exit_boot_struct, ptr %23, i32 0, i32 1
  store ptr %21, ptr %148, align 4
  %149 = load i32, ptr %1, align 4
  %150 = inttoptr i32 %149 to ptr
  %151 = getelementptr inbounds %struct.exit_boot_struct, ptr %23, i32 0, i32 2
  store ptr %150, ptr %151, align 4
  %152 = call i32 @efi_exit_boot_services(ptr noundef %0, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull @exit_boot_func) #6
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %187

154:                                              ; preds = %145
  %155 = load i8, ptr @efi_novamap, align 1, !range !10
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %200

157:                                              ; preds = %154
  %158 = load ptr, ptr @efi_system_table, align 4
  %159 = getelementptr inbounds %struct.anon.0, ptr %158, i32 0, i32 9
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %struct.anon, ptr %160, i32 0, i32 5
  %162 = load ptr, ptr %161, align 8
  %163 = load i32, ptr %21, align 4
  %164 = load i32, ptr %15, align 4
  %165 = mul i32 %164, %163
  %166 = load i32, ptr %17, align 4
  %167 = load ptr, ptr %20, align 4
  %168 = call i32 %162(i32 noundef %165, i32 noundef %164, i32 noundef %166, ptr noundef %167) #6
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %200, label %170

170:                                              ; preds = %157
  %171 = load i32, ptr %14, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %200, label %173

173:                                              ; preds = %170
  %174 = load ptr, ptr %19, align 4
  %175 = load i32, ptr %15, align 4
  br label %176

176:                                              ; preds = %184, %173
  %177 = phi i32 [ 0, %173 ], [ %185, %184 ]
  %178 = getelementptr i8, ptr %174, i32 %177
  %179 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %178, i32 0, i32 5
  %180 = load i64, ptr %179, align 8
  %181 = icmp sgt i64 %180, -1
  br i1 %181, label %184, label %182

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %178, i32 0, i32 3
  store i64 0, ptr %183, align 8
  br label %184

184:                                              ; preds = %182, %176
  %185 = add i32 %175, %177
  %186 = icmp ult i32 %185, %171
  br i1 %186, label %176, label %200

187:                                              ; preds = %145, %144
  %188 = phi ptr [ @.str.3, %144 ], [ @.str.4, %145 ]
  %189 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull %188) #6
  br label %190

190:                                              ; preds = %187, %39
  %191 = load i32, ptr %1, align 4
  call void @efi_free(i32 noundef 2097152, i32 noundef %191) #6
  br label %192

192:                                              ; preds = %190, %37
  %193 = load ptr, ptr @efi_system_table, align 4
  %194 = getelementptr inbounds %struct.anon.0, ptr %193, i32 0, i32 10
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.anon.5, ptr %195, i32 0, i32 7
  %197 = load ptr, ptr %196, align 8
  %198 = load ptr, ptr %20, align 4
  %199 = call i32 %197(ptr noundef %198) #6
  br label %200

200:                                              ; preds = %192, %184, %170, %157, %154, %31
  %201 = phi i32 [ %29, %31 ], [ -2147483647, %192 ], [ 0, %157 ], [ 0, %154 ], [ 0, %170 ], [ 0, %184 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  ret i32 %201
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_get_memory_map(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_allocate_pages(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_exit_boot_services(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define internal i32 @exit_boot_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.efi_boot_memmap, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.efi_boot_memmap, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr inbounds %struct.exit_boot_struct, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @efi_get_virtmap(ptr noundef %6, i32 noundef %9, i32 noundef %12, ptr noundef %13, ptr noundef %15) #6
  %16 = getelementptr inbounds %struct.exit_boot_struct, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @fdt_path_offset(ptr noundef %17, ptr noundef nonnull @.str.20) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %0, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = zext i32 %23 to i64
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #5
  store i64 %25, ptr %3, align 8
  %26 = call i32 @fdt_setprop_inplace(ptr noundef %17, i32 noundef %18, ptr noundef nonnull @.str.13, ptr noundef nonnull %3, i32 noundef 8) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %20
  %29 = load ptr, ptr %7, align 4
  %30 = load i32, ptr %29, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #5
  store i32 %31, ptr %4, align 4
  %32 = call i32 @fdt_setprop_inplace(ptr noundef %17, i32 noundef %18, ptr noundef nonnull @.str.14, ptr noundef nonnull %4, i32 noundef 4) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load ptr, ptr %10, align 4
  %36 = load i32, ptr %35, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #5
  store i32 %37, ptr %4, align 4
  %38 = call i32 @fdt_setprop_inplace(ptr noundef %17, i32 noundef %18, ptr noundef nonnull @.str.15, ptr noundef nonnull %4, i32 noundef 4) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.efi_boot_memmap, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %42, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #5
  store i32 %44, ptr %4, align 4
  %45 = call i32 @fdt_setprop_inplace(ptr noundef %17, i32 noundef %18, ptr noundef nonnull @.str.16, ptr noundef nonnull %4, i32 noundef 4) #6
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 0, i32 -2147483647
  br label %48

48:                                               ; preds = %40, %34, %28, %20, %2
  %49 = phi i32 [ -2147483647, %2 ], [ -2147483647, %20 ], [ -2147483647, %28 ], [ -2147483647, %34 ], [ %47, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret i32 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden void @efi_free(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @get_fdt(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @get_efi_config_table([4 x i32] [i32 -1313463851, i32 1101394332, i32 366545795, i32 -525702868]) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @fdt_check_header(ptr noundef nonnull %2) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.5) #6
  br label %28

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fdt_header, ptr %2, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 %12, 24
  %14 = getelementptr i8, ptr %10, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 16
  %18 = or i32 %17, %13
  %19 = getelementptr i8, ptr %10, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = or i32 %18, %22
  %24 = getelementptr i8, ptr %10, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %23, %26
  store i32 %27, ptr %0, align 4
  br label %28

28:                                               ; preds = %9, %7, %1
  %29 = phi ptr [ null, %7 ], [ %2, %9 ], [ null, %1 ]
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @get_efi_config_table([4 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_check_header(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_open_into(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_create_empty_tree(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_num_mem_rsv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_del_mem_rsv(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_subnode_offset(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_add_subnode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_setprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_pack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_path_offset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid optsize
declare hidden void @efi_get_virtmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_setprop_inplace(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind optsize "no-builtins" }

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
