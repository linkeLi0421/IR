; ModuleID = '/llk/IR/scripts/mod/file2alias.c_pt.bc'
source_filename = "../scripts/mod/file2alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devtable = type { ptr, i64, ptr }
%struct.dmifield = type { ptr, i32 }
%struct.Elf32_Sym = type { i32, i32, i32, i8, i8, i16 }
%struct.elf_info = type { i64, ptr, ptr, ptr, ptr, i16, i16, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.Elf32_Shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.module = type { ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.buffer, [25 x i8], ptr, ptr, [0 x i8] }
%struct.buffer = type { ptr, i32, i32 }
%struct.anon = type { [8 x i8] }
%struct.dmi_strmatch = type { i8, [79 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"__mod_\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"_device_table\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"of\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pnp\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pnp_card\00", align 1
@devtable = internal unnamed_addr constant [47 x %struct.devtable] [%struct.devtable { ptr @.str.40, i64 16, ptr @do_hid_entry }, %struct.devtable { ptr @.str.41, i64 24, ptr @do_ieee1394_entry }, %struct.devtable { ptr @.str.42, i64 32, ptr @do_pci_entry }, %struct.devtable { ptr @.str.43, i64 12, ptr @do_ccw_entry }, %struct.devtable { ptr @.str.44, i64 8, ptr @do_ap_entry }, %struct.devtable { ptr @.str.45, i64 8, ptr @do_css_entry }, %struct.devtable { ptr @.str.46, i64 4, ptr @do_serio_entry }, %struct.devtable { ptr @.str.47, i64 24, ptr @do_acpi_entry }, %struct.devtable { ptr @.str.48, i64 52, ptr @do_pcmcia_entry }, %struct.devtable { ptr @.str.49, i64 64, ptr @do_vio_entry }, %struct.devtable { ptr @.str.50, i64 164, ptr @do_input_entry }, %struct.devtable { ptr @.str.51, i64 12, ptr @do_eisa_entry }, %struct.devtable { ptr @.str.52, i64 8, ptr @do_parisc_entry }, %struct.devtable { ptr @.str.53, i64 12, ptr @do_sdio_entry }, %struct.devtable { ptr @.str.54, i64 6, ptr @do_ssb_entry }, %struct.devtable { ptr @.str.55, i64 6, ptr @do_bcma_entry }, %struct.devtable { ptr @.str.56, i64 8, ptr @do_virtio_entry }, %struct.devtable { ptr @.str.57, i64 20, ptr @do_vmbus_entry }, %struct.devtable { ptr @.str.58, i64 36, ptr @do_rpmsg_entry }, %struct.devtable { ptr @.str.59, i64 24, ptr @do_i2c_entry }, %struct.devtable { ptr @.str.60, i64 12, ptr @do_i3c_entry }, %struct.devtable { ptr @.str.61, i64 36, ptr @do_spi_entry }, %struct.devtable { ptr @.str.62, i64 332, ptr @do_dmi_entry }, %struct.devtable { ptr @.str.63, i64 24, ptr @do_platform_entry }, %struct.devtable { ptr @.str.64, i64 8, ptr @do_mdio_entry }, %struct.devtable { ptr @.str.65, i64 8, ptr @do_zorro_entry }, %struct.devtable { ptr @.str.66, i64 12, ptr @do_isapnp_entry }, %struct.devtable { ptr @.str.67, i64 12, ptr @do_ipack_entry }, %struct.devtable { ptr @.str.68, i64 12, ptr @do_amba_entry }, %struct.devtable { ptr @.str.69, i64 1, ptr @do_mips_cdmm_entry }, %struct.devtable { ptr @.str.70, i64 16, ptr @do_x86cpu_entry }, %struct.devtable { ptr @.str.71, i64 2, ptr @do_cpu_entry }, %struct.devtable { ptr @.str.72, i64 56, ptr @do_mei_entry }, %struct.devtable { ptr @.str.73, i64 8, ptr @do_rio_entry }, %struct.devtable { ptr @.str.74, i64 8, ptr @do_ulpi_entry }, %struct.devtable { ptr @.str.75, i64 20, ptr @do_hda_entry }, %struct.devtable { ptr @.str.76, i64 12, ptr @do_sdw_entry }, %struct.devtable { ptr @.str.77, i64 18, ptr @do_fsl_mc_entry }, %struct.devtable { ptr @.str.78, i64 32, ptr @do_tbsvc_entry }, %struct.devtable { ptr @.str.79, i64 8, ptr @do_typec_entry }, %struct.devtable { ptr @.str.80, i64 16, ptr @do_tee_entry }, %struct.devtable { ptr @.str.81, i64 44, ptr @do_wmi_entry }, %struct.devtable { ptr @.str.82, i64 36, ptr @do_mhi_entry }, %struct.devtable { ptr @.str.83, i64 36, ptr @do_auxiliary_entry }, %struct.devtable { ptr @.str.84, i64 12, ptr @do_ssam_entry }, %struct.devtable { ptr @.str.85, i64 8, ptr @do_dfl_entry }, %struct.devtable { ptr @.str.86, i64 20, ptr @do_ishtp_entry }], align 16
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [176 x i8] c"%s: sizeof(struct %s_device_id)=%lu is not a modulo of the size of section __mod_%s__<identifier>_device_table=%lu.\0AFix definition of struct %s_device_id in mod_devicetable.h\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [60 x i8] c"%s: struct %s_device_id is %lu bytes.  The last of %lu is:\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"%s: struct %s_device_id is not terminated with a NULL entry!\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"usb:\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%04X\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%0*X\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%X\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"[%X-%X]\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"[%X-9\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"[%X\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"A-%X]\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%X]\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"ic\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"MODULE_ALIAS(\22%s\22);\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"of:N%sT%s\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"%sC%s\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"MODULE_ALIAS(\22pnp:d%s*\22);\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"MODULE_ALIAS(\22acpi*:%s:*\22);\0A\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"hid\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"ieee1394\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"ccw\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"ap\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"css\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"serio\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"acpi\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"pcmcia\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"vio\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"eisa\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"parisc\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"sdio\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"ssb\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"bcma\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"virtio\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"vmbus\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"rpmsg\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"i3c\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"dmi\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"zorro\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"isapnp\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"ipack\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"amba\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"mipscdmm\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"x86cpu\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"mei\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"rapidio\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"hdaudio\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"sdw\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"fslmc\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"tbsvc\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"typec\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"wmi\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"mhi\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"auxiliary\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"ssam\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"dfl\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"ishtp\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"hid:\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"ieee1394:\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"mo\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"pci:\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"vfio_pci:\00", align 1
@.str.98 = private unnamed_addr constant [40 x i8] c"Unknown PCI driver_override alias %08X\0A\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"Can't handle masks in %s:%04X\0A\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"sc\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"ccw:\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"dm\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"ap:t%02X*\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"css:t%01X\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"serio:\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"ty\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"pr\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"acpi*:%s:*\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"acpi*:\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c":*\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"pa\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"pb\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"vio:T%sS%s\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"input:\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"k*\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"r*\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"a*\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"m*\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"l*\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"s*\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"f*\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"w*\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"%X,*\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"eisa:s%s*\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"hv\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"sdio:\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"ssb:\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"bcma:\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"vmbus:\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"rpmsg:%s\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"i2c:%s\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"i3c:\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"manuf\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"spi:%s\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"dmi*\00", align 1
@dmi_fields = internal unnamed_addr constant [15 x %struct.dmifield] [%struct.dmifield { ptr @.str.165, i32 1 }, %struct.dmifield { ptr @.str.166, i32 2 }, %struct.dmifield { ptr @.str.167, i32 3 }, %struct.dmifield { ptr @.str.168, i32 4 }, %struct.dmifield { ptr @.str.169, i32 5 }, %struct.dmifield { ptr @.str.170, i32 6 }, %struct.dmifield { ptr @.str.171, i32 7 }, %struct.dmifield { ptr @.str.172, i32 8 }, %struct.dmifield { ptr @.str.173, i32 13 }, %struct.dmifield { ptr @.str.174, i32 14 }, %struct.dmifield { ptr @.str.175, i32 15 }, %struct.dmifield { ptr @.str.176, i32 18 }, %struct.dmifield { ptr @.str.177, i32 19 }, %struct.dmifield { ptr @.str.178, i32 20 }, %struct.dmifield zeroinitializer], align 16
@.str.163 = private unnamed_addr constant [5 x i8] c":%s*\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"bvn\00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"bvr\00", align 1
@.str.167 = private unnamed_addr constant [3 x i8] c"bd\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"efr\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"svn\00", align 1
@.str.171 = private unnamed_addr constant [3 x i8] c"pn\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"pvr\00", align 1
@.str.173 = private unnamed_addr constant [4 x i8] c"rvn\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"rn\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"rvr\00", align 1
@.str.176 = private unnamed_addr constant [4 x i8] c"cvn\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"ct\00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"cvr\00", align 1
@.str.179 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"mdio:\00", align 1
@.str.181 = private unnamed_addr constant [7 x i8] c"zorro:\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c"pnp:d%c%c%c%x%x%x%x*\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"ipack:\00", align 1
@.str.184 = private unnamed_addr constant [104 x i8] c"%s: Masked-off bit(s) of AMBA device ID are non-zero: id=0x%08X, mask=0x%08X.  Please fix this driver.\0A\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"amba:d\00", align 1
@.str.186 = private unnamed_addr constant [16 x i8] c"mipscdmm:t%02X*\00", align 1
@.str.187 = private unnamed_addr constant [14 x i8] c"cpu:type:x86,\00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c":feature:*\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"%04X*\00", align 1
@.str.192 = private unnamed_addr constant [26 x i8] c"cpu:type:*:feature:*%04X*\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"mei:\00", align 1
@.str.194 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.195 = private unnamed_addr constant [69 x i8] c"%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"rapidio:\00", align 1
@.str.197 = private unnamed_addr constant [3 x i8] c"av\00", align 1
@.str.198 = private unnamed_addr constant [3 x i8] c"ad\00", align 1
@.str.199 = private unnamed_addr constant [16 x i8] c"ulpi:v%04xp%04x\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"hdaudio:\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"sdw:\00", align 1
@.str.204 = private unnamed_addr constant [16 x i8] c"fsl-mc:v%08Xd%s\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"tbsvc:\00", align 1
@.str.206 = private unnamed_addr constant [4 x i8] c"k%s\00", align 1
@.str.207 = private unnamed_addr constant [13 x i8] c"typec:id%04X\00", align 1
@.str.208 = private unnamed_addr constant [73 x i8] c"tee:%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x\00", align 1
@.str.209 = private unnamed_addr constant [40 x i8] c"Invalid WMI device id 'wmi:%s' in '%s'\0A\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"wmi:%s\00", align 1
@.str.211 = private unnamed_addr constant [47 x i8] c"Could not generate all MODULE_ALIAS's in '%s'\0A\00", align 1
@.str.212 = private unnamed_addr constant [7 x i8] c"mhi:%s\00", align 1
@.str.213 = private unnamed_addr constant [13 x i8] c"auxiliary:%s\00", align 1
@.str.214 = private unnamed_addr constant [16 x i8] c"ssam:d%02Xc%02X\00", align 1
@.str.215 = private unnamed_addr constant [15 x i8] c"dfl:t%04Xf%04X\00", align 1
@.str.218 = private unnamed_addr constant [69 x i8] c"%02X%02X%02X%02X-%02X%02X-%02X%02X-%02X%02X-%02X%02X%02X%02X%02X%02X\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @handle_moddevtable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Elf32_Sym, ptr %2, i64 0, i32 5
  %6 = load i16, ptr %5, align 2, !tbaa !5
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %164, label %8

8:                                                ; preds = %4
  %9 = zext i16 %6 to i32
  %10 = add i16 %6, 1
  %11 = icmp ult i16 %10, -255
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = or i32 %9, -65536
  br label %27

14:                                               ; preds = %8
  %15 = icmp eq i16 %6, -1
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = ptrtoint ptr %2 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 4
  %25 = getelementptr inbounds i32, ptr %18, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !16
  br label %27

27:                                               ; preds = %16, %14, %12
  %28 = phi i32 [ %13, %12 ], [ %26, %16 ], [ %9, %14 ]
  %29 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 10
  %30 = load i32, ptr %29, align 4, !tbaa !17
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %164

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.Elf32_Sym, ptr %2, i64 0, i32 3
  %34 = load i8, ptr %33, align 4, !tbaa !18
  %35 = and i8 %34, 15
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %37, label %164

37:                                               ; preds = %32
  %38 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(7) @.str, i64 noundef 6) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %164

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, ptr %3, i64 6
  %42 = tail call i64 @strlen(ptr noundef nonnull %41) #16
  %43 = and i64 %42, 4294967295
  %44 = icmp ult i64 %43, 13
  br i1 %44, label %164, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds i8, ptr %41, i64 %43
  %47 = getelementptr inbounds i8, ptr %46, i64 -13
  %48 = tail call i32 @strcmp(ptr noundef nonnull %47, ptr noundef nonnull dereferenceable(14) @.str.1) #16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %164

50:                                               ; preds = %45
  %51 = tail call ptr @strstr(ptr noundef nonnull %41, ptr noundef nonnull @.str.2) #16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %164, label %53

53:                                               ; preds = %50
  %54 = ptrtoint ptr %51 to i64
  %55 = ptrtoint ptr %41 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !19
  br i1 %11, label %60, label %84

60:                                               ; preds = %53
  %61 = icmp eq i16 %6, -1
  br i1 %61, label %62, label %78

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 12
  %64 = load ptr, ptr %63, align 8, !tbaa !11
  %65 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !15
  %67 = ptrtoint ptr %2 to i64
  %68 = ptrtoint ptr %66 to i64
  %69 = sub i64 %67, %68
  %70 = ashr exact i64 %69, 4
  %71 = getelementptr inbounds i32, ptr %64, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !16
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.Elf32_Shdr, ptr %59, i64 %73, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !20
  %76 = and i32 %75, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %96, label %91

78:                                               ; preds = %60
  %79 = zext i16 %6 to i64
  %80 = getelementptr inbounds %struct.Elf32_Shdr, ptr %59, i64 %79, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !20
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %107, label %91

84:                                               ; preds = %53
  %85 = or i32 %9, -65536
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.Elf32_Shdr, ptr %59, i64 %86, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !20
  %89 = and i32 %88, 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %84, %78, %62
  %92 = getelementptr inbounds %struct.Elf32_Sym, ptr %2, i64 0, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !22
  %94 = zext i32 %93 to i64
  %95 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %94) #17
  br label %120

96:                                               ; preds = %62
  %97 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 12
  %98 = load ptr, ptr %97, align 8, !tbaa !11
  %99 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !15
  %101 = ptrtoint ptr %2 to i64
  %102 = ptrtoint ptr %100 to i64
  %103 = sub i64 %101, %102
  %104 = ashr exact i64 %103, 4
  %105 = getelementptr inbounds i32, ptr %98, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !16
  br label %107

107:                                              ; preds = %96, %84, %78
  %108 = phi i32 [ %106, %96 ], [ %9, %78 ], [ %85, %84 ]
  %109 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !23
  %111 = zext i32 %108 to i64
  %112 = getelementptr inbounds %struct.Elf32_Shdr, ptr %59, i64 %111, i32 4
  %113 = load i32, ptr %112, align 4, !tbaa !24
  %114 = zext i32 %113 to i64
  %115 = getelementptr i8, ptr %110, i64 %114
  %116 = getelementptr inbounds %struct.Elf32_Sym, ptr %2, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !25
  %118 = zext i32 %117 to i64
  %119 = getelementptr i8, ptr %115, i64 %118
  br label %120

120:                                              ; preds = %107, %91
  %121 = phi ptr [ %95, %91 ], [ null, %107 ]
  %122 = phi ptr [ %95, %91 ], [ %119, %107 ]
  %123 = tail call fastcc zeroext i1 @sym_is(ptr noundef nonnull %41, i32 noundef %57, ptr noundef nonnull @.str.3)
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.Elf32_Sym, ptr %2, i64 0, i32 2
  %126 = load i32, ptr %125, align 4, !tbaa !22
  %127 = zext i32 %126 to i64
  tail call fastcc void @do_usb_table(ptr noundef %122, i64 noundef %127, ptr noundef %0)
  br label %128

128:                                              ; preds = %124, %120
  %129 = tail call fastcc zeroext i1 @sym_is(ptr noundef nonnull %41, i32 noundef %57, ptr noundef nonnull @.str.4)
  br i1 %129, label %130, label %134

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.Elf32_Sym, ptr %2, i64 0, i32 2
  %132 = load i32, ptr %131, align 4, !tbaa !22
  %133 = zext i32 %132 to i64
  tail call fastcc void @do_of_table(ptr noundef %122, i64 noundef %133, ptr noundef %0)
  br label %163

134:                                              ; preds = %128
  %135 = tail call fastcc zeroext i1 @sym_is(ptr noundef nonnull %41, i32 noundef %57, ptr noundef nonnull @.str.5)
  br i1 %135, label %136, label %140

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.Elf32_Sym, ptr %2, i64 0, i32 2
  %138 = load i32, ptr %137, align 4, !tbaa !22
  %139 = zext i32 %138 to i64
  tail call fastcc void @do_pnp_device_entry(ptr noundef %122, i64 noundef %139, ptr noundef %0)
  br label %163

140:                                              ; preds = %134
  %141 = tail call fastcc zeroext i1 @sym_is(ptr noundef nonnull %41, i32 noundef %57, ptr noundef nonnull @.str.6)
  br i1 %141, label %142, label %146

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.Elf32_Sym, ptr %2, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !22
  %145 = zext i32 %144 to i64
  tail call fastcc void @do_pnp_card_entries(ptr noundef %122, i64 noundef %145, ptr noundef %0)
  br label %163

146:                                              ; preds = %160, %140
  %147 = phi i64 [ %161, %160 ], [ 0, %140 ]
  %148 = getelementptr inbounds [47 x %struct.devtable], ptr @devtable, i64 0, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !26
  %150 = tail call fastcc zeroext i1 @sym_is(ptr noundef nonnull %41, i32 noundef %57, ptr noundef %149)
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = and i64 %147, 4294967295
  %153 = getelementptr inbounds %struct.Elf32_Sym, ptr %2, i64 0, i32 2
  %154 = load i32, ptr %153, align 4, !tbaa !22
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [47 x %struct.devtable], ptr @devtable, i64 0, i64 %152, i32 1
  %157 = load i64, ptr %156, align 8, !tbaa !28
  %158 = getelementptr inbounds [47 x %struct.devtable], ptr @devtable, i64 0, i64 %152, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !29
  tail call fastcc void @do_table(ptr noundef %122, i64 noundef %155, i64 noundef %157, ptr noundef %149, ptr noundef %159, ptr noundef %0)
  br label %163

160:                                              ; preds = %146
  %161 = add nuw nsw i64 %147, 1
  %162 = icmp eq i64 %161, 47
  br i1 %162, label %163, label %146

163:                                              ; preds = %160, %151, %142, %136, %130
  tail call void @free(ptr noundef %121) #18
  br label %164

164:                                              ; preds = %163, %50, %45, %40, %37, %32, %27, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn uwtable
define internal fastcc zeroext i1 @sym_is(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = zext i32 %1 to i64
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %6 = icmp eq i64 %5, %4
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call i32 @bcmp(ptr %0, ptr %2, i64 %4)
  %9 = icmp eq i32 %8, 0
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i1 [ %9, %7 ], [ false, %3 ]
  ret i1 %11
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_usb_table(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.module, ptr %2, i64 0, i32 12
  tail call fastcc void @device_id_check(ptr noundef nonnull %4, ptr noundef nonnull @.str.3, i64 noundef %1, i64 noundef 24, ptr noundef %0)
  %5 = add i64 %1, -24
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %175, label %7

7:                                                ; preds = %171, %3
  %8 = phi i64 [ %173, %171 ], [ 0, %3 ]
  %9 = getelementptr i8, ptr %0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !30
  %11 = getelementptr i8, ptr %9, i64 2
  %12 = load i16, ptr %11, align 2, !tbaa !30
  %13 = getelementptr i8, ptr %9, i64 4
  %14 = load i16, ptr %13, align 2, !tbaa !30
  %15 = getelementptr i8, ptr %9, i64 6
  %16 = load i16, ptr %15, align 2, !tbaa !30
  %17 = getelementptr i8, ptr %9, i64 8
  %18 = load i16, ptr %17, align 2, !tbaa !30
  %19 = getelementptr i8, ptr %9, i64 10
  %20 = load i8, ptr %19, align 1, !tbaa !31
  %21 = getelementptr i8, ptr %9, i64 13
  %22 = load i8, ptr %21, align 1, !tbaa !31
  %23 = zext i16 %10 to i32
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i16 %16 to i32
  %27 = select i1 %25, i32 0, i32 %26
  %28 = and i32 %23, 8
  %29 = icmp eq i32 %28, 0
  %30 = zext i16 %18 to i32
  %31 = select i1 %29, i32 -1, i32 %30
  %32 = and i32 %27, 14
  %33 = icmp ugt i32 %32, 9
  br i1 %33, label %50, label %34

34:                                               ; preds = %7
  %35 = tail call i32 @llvm.umin.i32(i32 %31, i32 39321) #18
  %36 = insertelement <4 x i32> poison, i32 %27, i64 0
  %37 = insertelement <4 x i32> %36, i32 %35, i64 1
  %38 = shufflevector <4 x i32> %37, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %39 = freeze <4 x i32> %38
  %40 = and <4 x i32> %39, <i32 224, i32 14, i32 224, i32 3584>
  %41 = icmp ugt <4 x i32> %40, <i32 144, i32 9, i32 144, i32 2304>
  %42 = and i32 %35, 3584
  %43 = icmp ugt i32 %42, 2304
  %44 = icmp ugt i32 %27, 40959
  %45 = bitcast <4 x i1> %41 to i4
  %46 = icmp ne i4 %45, 0
  %47 = select i1 %46, i1 true, i1 %43
  %48 = select i1 %47, i1 true, i1 %44
  %49 = select i1 %48, i8 15, i8 9
  br label %50

50:                                               ; preds = %34, %7
  %51 = phi i1 [ true, %7 ], [ %48, %34 ]
  %52 = phi i8 [ 15, %7 ], [ %49, %34 ]
  %53 = or i16 %14, %12
  %54 = zext i16 %53 to i32
  %55 = zext i8 %20 to i32
  %56 = or i32 %55, %54
  %57 = zext i8 %22 to i32
  %58 = or i32 %56, %57
  %59 = icmp eq i32 %58, 0
  %60 = icmp ugt i32 %27, %31
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %171, label %62

62:                                               ; preds = %167, %50
  %63 = phi i32 [ %169, %167 ], [ 3, %50 ]
  %64 = phi i32 [ %168, %167 ], [ %31, %50 ]
  %65 = phi i32 [ %123, %167 ], [ %27, %50 ]
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 15
  %68 = trunc i32 %64 to i8
  %69 = and i8 %68, 15
  %70 = tail call i8 @llvm.umin.i8(i8 %69, i8 %52) #18
  %71 = lshr i32 %65, 4
  %72 = lshr i32 %64, 4
  %73 = icmp ne i32 %71, %72
  %74 = icmp ne i32 %63, 0
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %77, label %76

76:                                               ; preds = %62
  tail call fastcc void @do_usb_entry(ptr noundef nonnull %9, i32 noundef %71, i32 noundef %63, i8 noundef zeroext %67, i8 noundef zeroext %70, i8 noundef zeroext %52, ptr noundef %2) #18
  br label %171

77:                                               ; preds = %62
  %78 = icmp eq i8 %67, 0
  br i1 %78, label %122, label %79

79:                                               ; preds = %77
  br i1 %51, label %80, label %82

80:                                               ; preds = %79
  %81 = add nuw nsw i32 %71, 1
  br label %120

82:                                               ; preds = %79
  %83 = and i32 %71, 15
  %84 = tail call i32 @llvm.umin.i32(i32 %83, i32 9) #18
  %85 = lshr i32 %65, 8
  %86 = and i32 %85, 15
  %87 = tail call i32 @llvm.umin.i32(i32 %86, i32 9) #18
  %88 = mul nuw nsw i32 %87, 10
  %89 = lshr i32 %65, 12
  %90 = and i32 %89, 15
  %91 = tail call i32 @llvm.umin.i32(i32 %90, i32 9) #18
  %92 = mul nuw nsw i32 %91, 100
  %93 = lshr i32 %65, 16
  %94 = and i32 %93, 15
  %95 = tail call i32 @llvm.umin.i32(i32 %94, i32 9) #18
  %96 = mul nuw nsw i32 %95, 1000
  %97 = add nuw nsw i32 %84, 1
  %98 = add nuw nsw i32 %97, %88
  %99 = add nuw nsw i32 %98, %92
  %100 = add nuw nsw i32 %99, %96
  %101 = trunc i32 %100 to i16
  %102 = urem i16 %101, 10
  %103 = udiv i16 %101, 10
  %104 = urem i16 %103, 10
  %105 = shl nuw nsw i16 %104, 4
  %106 = or i16 %105, %102
  %107 = zext i16 %106 to i32
  %108 = udiv i16 %101, 100
  %109 = trunc i16 %108 to i8
  %110 = urem i8 %109, 10
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %111, 8
  %113 = or i32 %112, %107
  %114 = udiv i16 %101, 1000
  %115 = trunc i16 %114 to i8
  %116 = urem i8 %115, 10
  %117 = zext i8 %116 to i32
  %118 = shl nuw nsw i32 %117, 12
  %119 = or i32 %113, %118
  br label %120

120:                                              ; preds = %82, %80
  %121 = phi i32 [ %119, %82 ], [ %81, %80 ]
  tail call fastcc void @do_usb_entry(ptr noundef nonnull %9, i32 noundef %71, i32 noundef %63, i8 noundef zeroext %67, i8 noundef zeroext %52, i8 noundef zeroext %52, ptr noundef %2) #18
  br label %122

122:                                              ; preds = %120, %77
  %123 = phi i32 [ %71, %77 ], [ %121, %120 ]
  %124 = icmp ugt i8 %52, %69
  br i1 %124, label %125, label %167

125:                                              ; preds = %122
  br i1 %51, label %126, label %128

126:                                              ; preds = %125
  %127 = add nsw i32 %72, -1
  br label %165

128:                                              ; preds = %125
  %129 = and i32 %72, 15
  %130 = tail call i32 @llvm.umin.i32(i32 %129, i32 9) #18
  %131 = lshr i32 %64, 8
  %132 = and i32 %131, 15
  %133 = tail call i32 @llvm.umin.i32(i32 %132, i32 9) #18
  %134 = mul nuw nsw i32 %133, 10
  %135 = add nuw nsw i32 %134, %130
  %136 = lshr i32 %64, 12
  %137 = and i32 %136, 15
  %138 = tail call i32 @llvm.umin.i32(i32 %137, i32 9) #18
  %139 = mul nuw nsw i32 %138, 100
  %140 = add nuw nsw i32 %135, %139
  %141 = lshr i32 %64, 16
  %142 = and i32 %141, 15
  %143 = tail call i32 @llvm.umin.i32(i32 %142, i32 9) #18
  %144 = mul nuw nsw i32 %143, 1000
  %145 = add nuw nsw i32 %140, %144
  %146 = zext i32 %145 to i64
  %147 = add nsw i64 %146, -1
  %148 = urem i64 %147, 10
  %149 = trunc i64 %148 to i32
  %150 = udiv i64 %147, 10
  %151 = urem i64 %150, 10
  %152 = trunc i64 %151 to i32
  %153 = shl nuw nsw i32 %152, 4
  %154 = or i32 %153, %149
  %155 = udiv i64 %147, 100
  %156 = urem i64 %155, 10
  %157 = trunc i64 %156 to i32
  %158 = shl nuw nsw i32 %157, 8
  %159 = or i32 %154, %158
  %160 = udiv i64 %147, 1000
  %161 = urem i64 %160, 10
  %162 = trunc i64 %161 to i32
  %163 = shl nuw nsw i32 %162, 12
  %164 = or i32 %159, %163
  br label %165

165:                                              ; preds = %128, %126
  %166 = phi i32 [ %164, %128 ], [ %127, %126 ]
  tail call fastcc void @do_usb_entry(ptr noundef nonnull %9, i32 noundef %72, i32 noundef %63, i8 noundef zeroext 0, i8 noundef zeroext %70, i8 noundef zeroext %52, ptr noundef %2) #18
  br label %167

167:                                              ; preds = %165, %122
  %168 = phi i32 [ %166, %165 ], [ %72, %122 ]
  %169 = add nsw i32 %63, -1
  %170 = icmp ugt i32 %123, %168
  br i1 %170, label %171, label %62

171:                                              ; preds = %167, %76, %50
  %172 = add nuw nsw i64 %8, 24
  %173 = and i64 %172, 4294967295
  %174 = icmp ult i64 %173, %5
  br i1 %174, label %7, label %175

175:                                              ; preds = %171, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_of_table(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [500 x i8], align 16
  %5 = getelementptr inbounds %struct.module, ptr %2, i64 0, i32 12
  tail call fastcc void @device_id_check(ptr noundef nonnull %5, ptr noundef nonnull @.str.4, i64 noundef %1, i64 noundef 196, ptr noundef %0)
  %6 = add i64 %1, -196
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %69, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.module, ptr %2, i64 0, i32 8
  br label %10

10:                                               ; preds = %65, %8
  %11 = phi i64 [ 0, %8 ], [ %67, %65 ]
  %12 = getelementptr i8, ptr %0, i64 %11
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %4) #18
  %13 = getelementptr i8, ptr %12, i64 32
  %14 = getelementptr i8, ptr %12, i64 64
  %15 = load i8, ptr %12, align 1, !tbaa !31
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr @.str.15, ptr %12
  %18 = load i8, ptr %13, align 1, !tbaa !31
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, ptr @.str.15, ptr %13
  %21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.34, ptr noundef nonnull %17, ptr noundef nonnull %20) #18
  %22 = load i8, ptr %14, align 1, !tbaa !31
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %10
  %25 = sext i32 %21 to i64
  %26 = getelementptr inbounds [500 x i8], ptr %4, i64 0, i64 %25
  %27 = load i8, ptr %13, align 1, !tbaa !31
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, ptr @.str.36, ptr @.str.15
  %30 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %26, ptr noundef nonnull @.str.35, ptr noundef nonnull %29, ptr noundef nonnull %14) #18
  br label %31

31:                                               ; preds = %24, %10
  %32 = load i8, ptr %4, align 16, !tbaa !31
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %31
  %35 = tail call ptr @__ctype_b_loc() #19
  br label %36

36:                                               ; preds = %46, %34
  %37 = phi i8 [ %32, %34 ], [ %48, %46 ]
  %38 = phi ptr [ %4, %34 ], [ %47, %46 ]
  %39 = load ptr, ptr %35, align 8, !tbaa !32
  %40 = sext i8 %37 to i64
  %41 = getelementptr inbounds i16, ptr %39, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !30
  %43 = and i16 %42, 8192
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  store i8 95, ptr %38, align 1, !tbaa !31
  br label %46

46:                                               ; preds = %45, %36
  %47 = getelementptr inbounds i8, ptr %38, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !31
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %36

50:                                               ; preds = %46, %31
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %9, ptr noundef nonnull @.str.33, ptr noundef nonnull %4) #18
  %51 = call i64 @strlen(ptr nonnull %4) #18
  %52 = getelementptr i8, ptr %4, i64 %51
  store i16 67, ptr %52, align 1
  %53 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %54 = shl i64 %53, 32
  %55 = add i64 %54, -4294967296
  %56 = ashr exact i64 %55, 32
  %57 = getelementptr inbounds i8, ptr %4, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !31
  %59 = icmp eq i8 %58, 42
  br i1 %59, label %65, label %60

60:                                               ; preds = %50
  %61 = ashr exact i64 %54, 32
  %62 = getelementptr inbounds i8, ptr %4, i64 %61
  %63 = call i64 @strlen(ptr nonnull dereferenceable(1) %62) #18
  %64 = getelementptr i8, ptr %62, i64 %63
  store i16 42, ptr %64, align 1
  br label %65

65:                                               ; preds = %60, %50
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %9, ptr noundef nonnull @.str.33, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %4) #18
  %66 = add nuw nsw i64 %11, 196
  %67 = and i64 %66, 4294967295
  %68 = icmp ult i64 %67, %6
  br i1 %68, label %10, label %69

69:                                               ; preds = %65, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_pnp_device_entry(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [8 x i8], align 1
  %5 = udiv i64 %1, 12
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds %struct.module, ptr %2, i64 0, i32 12
  tail call fastcc void @device_id_check(ptr noundef nonnull %8, ptr noundef nonnull @.str.5, i64 noundef %1, i64 noundef 12, ptr noundef %0)
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %82, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.module, ptr %2, i64 0, i32 8
  %12 = zext i32 %7 to i64
  %13 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 1
  %14 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 2
  %15 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 3
  %16 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 4
  %17 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 5
  %18 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 6
  %19 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 7
  br label %20

20:                                               ; preds = %20, %10
  %21 = phi i64 [ 0, %10 ], [ %80, %20 ]
  %22 = mul nuw nsw i64 %21, 12
  %23 = getelementptr i8, ptr %0, i64 %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %11, ptr noundef nonnull @.str.38, ptr noundef %23) #18
  %24 = tail call ptr @__ctype_toupper_loc() #19
  %25 = load ptr, ptr %24, align 8, !tbaa !32
  %26 = load i8, ptr %23, align 1, !tbaa !31
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds i32, ptr %25, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !16
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %4, align 1, !tbaa !31
  %31 = load ptr, ptr %24, align 8, !tbaa !32
  %32 = getelementptr inbounds [8 x i8], ptr %23, i64 0, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !31
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i32, ptr %31, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !16
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %13, align 1, !tbaa !31
  %38 = load ptr, ptr %24, align 8, !tbaa !32
  %39 = getelementptr inbounds [8 x i8], ptr %23, i64 0, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !31
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i32, ptr %38, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !16
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %14, align 1, !tbaa !31
  %45 = load ptr, ptr %24, align 8, !tbaa !32
  %46 = getelementptr inbounds [8 x i8], ptr %23, i64 0, i64 3
  %47 = load i8, ptr %46, align 1, !tbaa !31
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i32, ptr %45, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !16
  %51 = trunc i32 %50 to i8
  store i8 %51, ptr %15, align 1, !tbaa !31
  %52 = load ptr, ptr %24, align 8, !tbaa !32
  %53 = getelementptr inbounds [8 x i8], ptr %23, i64 0, i64 4
  %54 = load i8, ptr %53, align 1, !tbaa !31
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i32, ptr %52, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !16
  %58 = trunc i32 %57 to i8
  store i8 %58, ptr %16, align 1, !tbaa !31
  %59 = load ptr, ptr %24, align 8, !tbaa !32
  %60 = getelementptr inbounds [8 x i8], ptr %23, i64 0, i64 5
  %61 = load i8, ptr %60, align 1, !tbaa !31
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds i32, ptr %59, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !16
  %65 = trunc i32 %64 to i8
  store i8 %65, ptr %17, align 1, !tbaa !31
  %66 = load ptr, ptr %24, align 8, !tbaa !32
  %67 = getelementptr inbounds [8 x i8], ptr %23, i64 0, i64 6
  %68 = load i8, ptr %67, align 1, !tbaa !31
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds i32, ptr %66, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !16
  %72 = trunc i32 %71 to i8
  store i8 %72, ptr %18, align 1, !tbaa !31
  %73 = load ptr, ptr %24, align 8, !tbaa !32
  %74 = getelementptr inbounds [8 x i8], ptr %23, i64 0, i64 7
  %75 = load i8, ptr %74, align 1, !tbaa !31
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds i32, ptr %73, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !16
  %79 = trunc i32 %78 to i8
  store i8 %79, ptr %19, align 1, !tbaa !31
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %11, ptr noundef nonnull @.str.39, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  %80 = add nuw nsw i64 %21, 1
  %81 = icmp eq i64 %80, %12
  br i1 %81, label %82, label %20

82:                                               ; preds = %20, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_pnp_card_entries(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [8 x i8], align 1
  %5 = udiv i64 %1, 76
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds %struct.module, ptr %2, i64 0, i32 12
  tail call fastcc void @device_id_check(ptr noundef nonnull %8, ptr noundef nonnull @.str.5, i64 noundef %1, i64 noundef 76, ptr noundef %0)
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %158, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.module, ptr %2, i64 0, i32 8
  %12 = zext i32 %7 to i64
  %13 = getelementptr i8, ptr %0, i64 12
  %14 = getelementptr i8, ptr %0, i64 12
  %15 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 1
  %16 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 2
  %17 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 3
  %18 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 4
  %19 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 5
  %20 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 6
  %21 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 7
  br label %22

22:                                               ; preds = %155, %10
  %23 = phi i64 [ 0, %10 ], [ %156, %155 ]
  %24 = mul nuw nsw i64 %23, 76
  %25 = getelementptr i8, ptr %13, i64 %24
  %26 = icmp eq i64 %23, 0
  br label %27

27:                                               ; preds = %152, %22
  %28 = phi i32 [ 0, %22 ], [ %153, %152 ]
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [8 x %struct.anon], ptr %25, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !31
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %155, label %33

33:                                               ; preds = %27
  br i1 %26, label %95, label %34

34:                                               ; preds = %92, %33
  %35 = phi i64 [ %93, %92 ], [ 0, %33 ]
  %36 = mul nuw nsw i64 %35, 76
  %37 = getelementptr i8, ptr %14, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !31
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %92, label %89

40:                                               ; preds = %89
  %41 = getelementptr inbounds [8 x %struct.anon], ptr %37, i64 0, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !31
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %92, label %44

44:                                               ; preds = %40
  %45 = call i32 @strcmp(ptr noundef nonnull %30, ptr noundef nonnull %41) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %152, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds [8 x %struct.anon], ptr %37, i64 0, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !31
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %92, label %51

51:                                               ; preds = %47
  %52 = call i32 @strcmp(ptr noundef nonnull %30, ptr noundef nonnull %48) #16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %152, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds [8 x %struct.anon], ptr %37, i64 0, i64 3
  %56 = load i8, ptr %55, align 1, !tbaa !31
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %92, label %58

58:                                               ; preds = %54
  %59 = call i32 @strcmp(ptr noundef nonnull %30, ptr noundef nonnull %55) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %152, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds [8 x %struct.anon], ptr %37, i64 0, i64 4
  %63 = load i8, ptr %62, align 1, !tbaa !31
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %92, label %65

65:                                               ; preds = %61
  %66 = call i32 @strcmp(ptr noundef nonnull %30, ptr noundef nonnull %62) #16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %152, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds [8 x %struct.anon], ptr %37, i64 0, i64 5
  %70 = load i8, ptr %69, align 1, !tbaa !31
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %68
  %73 = call i32 @strcmp(ptr noundef nonnull %30, ptr noundef nonnull %69) #16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %152, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds [8 x %struct.anon], ptr %37, i64 0, i64 6
  %77 = load i8, ptr %76, align 1, !tbaa !31
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %75
  %80 = call i32 @strcmp(ptr noundef nonnull %30, ptr noundef nonnull %76) #16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %152, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds [8 x %struct.anon], ptr %37, i64 0, i64 7
  %84 = load i8, ptr %83, align 1, !tbaa !31
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = call i32 @strcmp(ptr noundef nonnull %30, ptr noundef nonnull %83) #16
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %152, label %92

89:                                               ; preds = %34
  %90 = call i32 @strcmp(ptr noundef nonnull %30, ptr noundef nonnull %37) #16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %152, label %40

92:                                               ; preds = %86, %82, %75, %68, %61, %54, %47, %40, %34
  %93 = add nuw nsw i64 %35, 1
  %94 = icmp ult i64 %93, %23
  br i1 %94, label %34, label %95

95:                                               ; preds = %92, %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %11, ptr noundef nonnull @.str.38, ptr noundef nonnull %30) #18
  %96 = tail call ptr @__ctype_toupper_loc() #19
  %97 = load ptr, ptr %96, align 8, !tbaa !32
  %98 = load i8, ptr %30, align 1, !tbaa !31
  %99 = sext i8 %98 to i64
  %100 = getelementptr inbounds i32, ptr %97, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !16
  %102 = trunc i32 %101 to i8
  store i8 %102, ptr %4, align 1, !tbaa !31
  %103 = load ptr, ptr %96, align 8, !tbaa !32
  %104 = getelementptr inbounds i8, ptr %30, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !31
  %106 = sext i8 %105 to i64
  %107 = getelementptr inbounds i32, ptr %103, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !16
  %109 = trunc i32 %108 to i8
  store i8 %109, ptr %15, align 1, !tbaa !31
  %110 = load ptr, ptr %96, align 8, !tbaa !32
  %111 = getelementptr inbounds i8, ptr %30, i64 2
  %112 = load i8, ptr %111, align 1, !tbaa !31
  %113 = sext i8 %112 to i64
  %114 = getelementptr inbounds i32, ptr %110, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !16
  %116 = trunc i32 %115 to i8
  store i8 %116, ptr %16, align 1, !tbaa !31
  %117 = load ptr, ptr %96, align 8, !tbaa !32
  %118 = getelementptr inbounds i8, ptr %30, i64 3
  %119 = load i8, ptr %118, align 1, !tbaa !31
  %120 = sext i8 %119 to i64
  %121 = getelementptr inbounds i32, ptr %117, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !16
  %123 = trunc i32 %122 to i8
  store i8 %123, ptr %17, align 1, !tbaa !31
  %124 = load ptr, ptr %96, align 8, !tbaa !32
  %125 = getelementptr inbounds i8, ptr %30, i64 4
  %126 = load i8, ptr %125, align 1, !tbaa !31
  %127 = sext i8 %126 to i64
  %128 = getelementptr inbounds i32, ptr %124, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !16
  %130 = trunc i32 %129 to i8
  store i8 %130, ptr %18, align 1, !tbaa !31
  %131 = load ptr, ptr %96, align 8, !tbaa !32
  %132 = getelementptr inbounds i8, ptr %30, i64 5
  %133 = load i8, ptr %132, align 1, !tbaa !31
  %134 = sext i8 %133 to i64
  %135 = getelementptr inbounds i32, ptr %131, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !16
  %137 = trunc i32 %136 to i8
  store i8 %137, ptr %19, align 1, !tbaa !31
  %138 = load ptr, ptr %96, align 8, !tbaa !32
  %139 = getelementptr inbounds i8, ptr %30, i64 6
  %140 = load i8, ptr %139, align 1, !tbaa !31
  %141 = sext i8 %140 to i64
  %142 = getelementptr inbounds i32, ptr %138, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !16
  %144 = trunc i32 %143 to i8
  store i8 %144, ptr %20, align 1, !tbaa !31
  %145 = load ptr, ptr %96, align 8, !tbaa !32
  %146 = getelementptr inbounds i8, ptr %30, i64 7
  %147 = load i8, ptr %146, align 1, !tbaa !31
  %148 = sext i8 %147 to i64
  %149 = getelementptr inbounds i32, ptr %145, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !16
  %151 = trunc i32 %150 to i8
  store i8 %151, ptr %21, align 1, !tbaa !31
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %11, ptr noundef nonnull @.str.39, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %152

152:                                              ; preds = %95, %89, %86, %79, %72, %65, %58, %51, %44
  %153 = add nuw nsw i32 %28, 1
  %154 = icmp eq i32 %153, 8
  br i1 %154, label %155, label %27

155:                                              ; preds = %152, %27
  %156 = add nuw nsw i64 %23, 1
  %157 = icmp eq i64 %156, %12
  br i1 %157, label %158, label %22

158:                                              ; preds = %155, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_table(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [500 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %7) #18
  %8 = getelementptr inbounds %struct.module, ptr %5, i64 0, i32 12
  tail call fastcc void @device_id_check(ptr noundef nonnull %8, ptr noundef %3, i64 noundef %1, i64 noundef %2, ptr noundef %0)
  %9 = sub i64 %1, %2
  %10 = icmp eq i64 %1, %2
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.module, ptr %5, i64 0, i32 8
  br label %13

13:                                               ; preds = %19, %11
  %14 = phi i64 [ 0, %11 ], [ %21, %19 ]
  %15 = getelementptr i8, ptr %0, i64 %14
  %16 = call i32 %4(ptr noundef nonnull %8, ptr noundef %15, ptr noundef nonnull %7) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %12, ptr noundef nonnull @.str.33, ptr noundef nonnull %7) #18
  br label %19

19:                                               ; preds = %18, %13
  %20 = add i64 %14, %2
  %21 = and i64 %20, 4294967295
  %22 = icmp ult i64 %21, %9
  br i1 %22, label %13, label %23

23:                                               ; preds = %19, %6
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %7) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @add_moddevtable(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void (ptr, ptr, ...) @buf_printf(ptr noundef %0, ptr noundef nonnull @.str.7) #18
  %3 = getelementptr inbounds %struct.module, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.module, ptr %1, i64 0, i32 8, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !35
  tail call void @buf_write(ptr noundef %0, ptr noundef %4, i32 noundef %6) #18
  %7 = load ptr, ptr %3, align 8, !tbaa !33
  tail call void @free(ptr noundef %7) #18
  ret void
}

declare void @buf_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare void @buf_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @device_id_check(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = urem i64 %2, %3
  %7 = udiv i64 %2, %3
  %8 = icmp ne i64 %6, 0
  %9 = icmp ult i64 %2, %3
  %10 = or i1 %9, %8
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %0, ptr noundef %1, i64 noundef %3, ptr noundef %1, i64 noundef %2, ptr noundef %1) #18
  br label %12

12:                                               ; preds = %11, %5
  %13 = icmp eq i64 %3, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %12
  %15 = getelementptr i8, ptr %4, i64 %2
  %16 = sub i64 0, %3
  %17 = getelementptr i8, ptr %15, i64 %16
  %18 = trunc i64 %3 to i32
  br label %19

19:                                               ; preds = %40, %14
  %20 = phi i64 [ 0, %14 ], [ %43, %40 ]
  %21 = phi i32 [ 0, %14 ], [ %42, %40 ]
  %22 = getelementptr i8, ptr %17, i64 %20
  %23 = load i8, ptr %22, align 1, !tbaa !31
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr @stderr, align 8, !tbaa !32
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.9, ptr noundef %0, ptr noundef %1, i64 noundef %3, i64 noundef %7) #20
  br label %28

28:                                               ; preds = %28, %25
  %29 = phi i64 [ 0, %25 ], [ %35, %28 ]
  %30 = load ptr, ptr @stderr, align 8, !tbaa !32
  %31 = getelementptr i8, ptr %17, i64 %29
  %32 = load i8, ptr %31, align 1, !tbaa !31
  %33 = zext i8 %32 to i32
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.10, i32 noundef %33) #20
  %35 = add nuw i64 %29, 1
  %36 = icmp eq i64 %35, %3
  br i1 %36, label %37, label %28

37:                                               ; preds = %28
  %38 = load ptr, ptr @stderr, align 8, !tbaa !32
  %39 = tail call i32 @fputc(i32 10, ptr %38)
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.11, ptr noundef %0, ptr noundef %1) #18
  br label %40

40:                                               ; preds = %37, %19
  %41 = phi i32 [ %18, %37 ], [ %21, %19 ]
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, %3
  br i1 %44, label %19, label %45

45:                                               ; preds = %40, %12
  ret void
}

declare void @modpost_log(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @do_usb_entry(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [500 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %8) #18
  %9 = load i16, ptr %0, align 2, !tbaa !30
  %10 = getelementptr i8, ptr %0, i64 2
  %11 = load i16, ptr %10, align 2, !tbaa !30
  %12 = getelementptr i8, ptr %0, i64 4
  %13 = load i16, ptr %12, align 2, !tbaa !30
  %14 = getelementptr i8, ptr %0, i64 10
  %15 = load i8, ptr %14, align 1, !tbaa !31
  %16 = getelementptr i8, ptr %0, i64 11
  %17 = load i8, ptr %16, align 1, !tbaa !31
  %18 = getelementptr i8, ptr %0, i64 12
  %19 = load i8, ptr %18, align 1, !tbaa !31
  %20 = getelementptr i8, ptr %0, i64 13
  %21 = load i8, ptr %20, align 1, !tbaa !31
  %22 = getelementptr i8, ptr %0, i64 14
  %23 = load i8, ptr %22, align 1, !tbaa !31
  %24 = getelementptr i8, ptr %0, i64 15
  %25 = load i8, ptr %24, align 1, !tbaa !31
  %26 = getelementptr i8, ptr %0, i64 16
  %27 = load i8, ptr %26, align 1, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %8, ptr noundef nonnull align 1 dereferenceable(5) @.str.12, i64 5, i1 false) #18
  %28 = call i64 @strlen(ptr nonnull %8)
  %29 = getelementptr i8, ptr %8, i64 %28
  store i16 118, ptr %29, align 1
  %30 = zext i16 %9 to i32
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = call i64 @strlen(ptr noundef nonnull %8) #16
  %34 = getelementptr inbounds i8, ptr %8, i64 %33
  br i1 %32, label %38, label %35

35:                                               ; preds = %7
  %36 = zext i16 %11 to i32
  %37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %34, ptr noundef nonnull @.str.14, i32 noundef %36) #18
  br label %39

38:                                               ; preds = %7
  store i16 42, ptr %34, align 1
  br label %39

39:                                               ; preds = %38, %35
  %40 = call i64 @strlen(ptr nonnull %8)
  %41 = getelementptr i8, ptr %8, i64 %40
  store i16 112, ptr %41, align 1
  %42 = and i32 %30, 2
  %43 = icmp eq i32 %42, 0
  %44 = call i64 @strlen(ptr noundef nonnull %8) #16
  %45 = getelementptr inbounds i8, ptr %8, i64 %44
  br i1 %43, label %49, label %46

46:                                               ; preds = %39
  %47 = zext i16 %13 to i32
  %48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %45, ptr noundef nonnull @.str.14, i32 noundef %47) #18
  br label %50

49:                                               ; preds = %39
  store i16 42, ptr %45, align 1
  br label %50

50:                                               ; preds = %49, %46
  %51 = call i64 @strlen(ptr nonnull %8)
  %52 = getelementptr i8, ptr %8, i64 %51
  store i16 100, ptr %52, align 1
  %53 = icmp eq i32 %2, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = call i64 @strlen(ptr noundef nonnull %8) #16
  %56 = getelementptr inbounds i8, ptr %8, i64 %55
  %57 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %56, ptr noundef nonnull @.str.18, i32 noundef %2, i32 noundef %1) #18
  br label %58

58:                                               ; preds = %54, %50
  %59 = zext i8 %3 to i32
  %60 = zext i8 %4 to i32
  %61 = icmp eq i8 %3, %4
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = call i64 @strlen(ptr noundef nonnull %8) #16
  %64 = getelementptr inbounds i8, ptr %8, i64 %63
  %65 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %64, ptr noundef nonnull @.str.19, i32 noundef %59) #18
  br label %87

66:                                               ; preds = %58
  %67 = icmp ne i8 %3, 0
  %68 = icmp ult i8 %4, %5
  %69 = or i1 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %66
  %71 = icmp ugt i8 %3, 9
  %72 = icmp ult i8 %4, 10
  %73 = or i1 %71, %72
  %74 = call i64 @strlen(ptr noundef nonnull %8) #16
  %75 = getelementptr inbounds i8, ptr %8, i64 %74
  br i1 %73, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %75, ptr noundef nonnull @.str.20, i32 noundef %59, i32 noundef %60) #18
  br label %87

78:                                               ; preds = %70
  %79 = icmp ult i8 %3, 9
  %80 = select i1 %79, ptr @.str.21, ptr @.str.22
  %81 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %75, ptr noundef nonnull %80, i32 noundef %59) #18
  %82 = call i64 @strlen(ptr noundef nonnull %8) #16
  %83 = getelementptr inbounds i8, ptr %8, i64 %82
  %84 = icmp ugt i8 %4, 10
  %85 = select i1 %84, ptr @.str.23, ptr @.str.24
  %86 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %83, ptr noundef nonnull %85, i32 noundef %60) #18
  br label %87

87:                                               ; preds = %78, %76, %66, %62
  %88 = icmp ult i32 %2, 3
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = call i64 @strlen(ptr nonnull %8)
  %91 = getelementptr i8, ptr %8, i64 %90
  store i16 42, ptr %91, align 1
  br label %92

92:                                               ; preds = %89, %87
  %93 = call i64 @strlen(ptr nonnull %8)
  %94 = getelementptr i8, ptr %8, i64 %93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %94, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, i64 3, i1 false)
  %95 = and i32 %30, 16
  %96 = icmp eq i32 %95, 0
  %97 = call i64 @strlen(ptr noundef nonnull %8) #16
  %98 = getelementptr inbounds i8, ptr %8, i64 %97
  br i1 %96, label %102, label %99

99:                                               ; preds = %92
  %100 = zext i8 %15 to i32
  %101 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %98, ptr noundef nonnull @.str.26, i32 noundef %100) #18
  br label %103

102:                                              ; preds = %92
  store i16 42, ptr %98, align 1
  br label %103

103:                                              ; preds = %102, %99
  %104 = call i64 @strlen(ptr nonnull %8)
  %105 = getelementptr i8, ptr %8, i64 %104
  store i32 6517604, ptr %105, align 1
  %106 = and i32 %30, 32
  %107 = icmp eq i32 %106, 0
  %108 = call i64 @strlen(ptr noundef nonnull %8) #16
  %109 = getelementptr inbounds i8, ptr %8, i64 %108
  br i1 %107, label %113, label %110

110:                                              ; preds = %103
  %111 = zext i8 %17 to i32
  %112 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %109, ptr noundef nonnull @.str.26, i32 noundef %111) #18
  br label %114

113:                                              ; preds = %103
  store i16 42, ptr %109, align 1
  br label %114

114:                                              ; preds = %113, %110
  %115 = call i64 @strlen(ptr nonnull %8)
  %116 = getelementptr i8, ptr %8, i64 %115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %116, ptr noundef nonnull align 1 dereferenceable(3) @.str.28, i64 3, i1 false)
  %117 = and i32 %30, 64
  %118 = icmp eq i32 %117, 0
  %119 = call i64 @strlen(ptr noundef nonnull %8) #16
  %120 = getelementptr inbounds i8, ptr %8, i64 %119
  br i1 %118, label %124, label %121

121:                                              ; preds = %114
  %122 = zext i8 %19 to i32
  %123 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %120, ptr noundef nonnull @.str.26, i32 noundef %122) #18
  br label %125

124:                                              ; preds = %114
  store i16 42, ptr %120, align 1
  br label %125

125:                                              ; preds = %124, %121
  %126 = call i64 @strlen(ptr nonnull %8)
  %127 = getelementptr i8, ptr %8, i64 %126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %127, ptr noundef nonnull align 1 dereferenceable(3) @.str.29, i64 3, i1 false)
  %128 = and i32 %30, 128
  %129 = icmp eq i32 %128, 0
  %130 = call i64 @strlen(ptr noundef nonnull %8) #16
  %131 = getelementptr inbounds i8, ptr %8, i64 %130
  br i1 %129, label %135, label %132

132:                                              ; preds = %125
  %133 = zext i8 %21 to i32
  %134 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %131, ptr noundef nonnull @.str.26, i32 noundef %133) #18
  br label %136

135:                                              ; preds = %125
  store i16 42, ptr %131, align 1
  br label %136

136:                                              ; preds = %135, %132
  %137 = call i64 @strlen(ptr nonnull %8)
  %138 = getelementptr i8, ptr %8, i64 %137
  store i32 6517609, ptr %138, align 1
  %139 = and i32 %30, 256
  %140 = icmp eq i32 %139, 0
  %141 = call i64 @strlen(ptr noundef nonnull %8) #16
  %142 = getelementptr inbounds i8, ptr %8, i64 %141
  br i1 %140, label %146, label %143

143:                                              ; preds = %136
  %144 = zext i8 %23 to i32
  %145 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %142, ptr noundef nonnull @.str.26, i32 noundef %144) #18
  br label %147

146:                                              ; preds = %136
  store i16 42, ptr %142, align 1
  br label %147

147:                                              ; preds = %146, %143
  %148 = call i64 @strlen(ptr nonnull %8)
  %149 = getelementptr i8, ptr %8, i64 %148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %149, ptr noundef nonnull align 1 dereferenceable(3) @.str.31, i64 3, i1 false)
  %150 = and i32 %30, 512
  %151 = icmp eq i32 %150, 0
  %152 = call i64 @strlen(ptr noundef nonnull %8) #16
  %153 = getelementptr inbounds i8, ptr %8, i64 %152
  br i1 %151, label %157, label %154

154:                                              ; preds = %147
  %155 = zext i8 %25 to i32
  %156 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %153, ptr noundef nonnull @.str.26, i32 noundef %155) #18
  br label %158

157:                                              ; preds = %147
  store i16 42, ptr %153, align 1
  br label %158

158:                                              ; preds = %157, %154
  %159 = call i64 @strlen(ptr nonnull %8)
  %160 = getelementptr i8, ptr %8, i64 %159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %160, ptr noundef nonnull align 1 dereferenceable(3) @.str.32, i64 3, i1 false)
  %161 = and i32 %30, 1024
  %162 = icmp eq i32 %161, 0
  %163 = call i64 @strlen(ptr noundef nonnull %8) #16
  %164 = getelementptr inbounds i8, ptr %8, i64 %163
  br i1 %162, label %168, label %165

165:                                              ; preds = %158
  %166 = zext i8 %27 to i32
  %167 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %164, ptr noundef nonnull @.str.26, i32 noundef %166) #18
  br label %169

168:                                              ; preds = %158
  store i16 42, ptr %164, align 1
  br label %169

169:                                              ; preds = %168, %165
  %170 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #16
  %171 = shl i64 %170, 32
  %172 = add i64 %171, -4294967296
  %173 = ashr exact i64 %172, 32
  %174 = getelementptr inbounds i8, ptr %8, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !31
  %176 = icmp eq i8 %175, 42
  br i1 %176, label %182, label %177

177:                                              ; preds = %169
  %178 = ashr exact i64 %171, 32
  %179 = getelementptr inbounds i8, ptr %8, i64 %178
  %180 = call i64 @strlen(ptr nonnull dereferenceable(1) %179) #18
  %181 = getelementptr i8, ptr %179, i64 %180
  store i16 42, ptr %181, align 1
  br label %182

182:                                              ; preds = %177, %169
  %183 = getelementptr inbounds %struct.module, ptr %6, i64 0, i32 8
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %183, ptr noundef nonnull @.str.33, ptr noundef nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %8) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_hid_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = load i16, ptr %1, align 2, !tbaa !30
  %5 = getelementptr i8, ptr %1, i64 2
  %6 = load i16, ptr %5, align 2, !tbaa !30
  %7 = getelementptr i8, ptr %1, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !16
  %9 = getelementptr i8, ptr %1, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.87, i64 5, i1 false)
  %11 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %12 = getelementptr i8, ptr %2, i64 %11
  store i16 98, ptr %12, align 1
  %13 = icmp eq i16 %4, -1
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = zext i16 %4 to i32
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %17 = getelementptr inbounds i8, ptr %2, i64 %16
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull @.str.14, i32 noundef %15) #18
  br label %22

19:                                               ; preds = %3
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %21 = getelementptr inbounds i8, ptr %2, i64 %20
  store i16 42, ptr %21, align 1
  br label %22

22:                                               ; preds = %19, %14
  %23 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %24 = getelementptr i8, ptr %2, i64 %23
  store i16 103, ptr %24, align 1
  %25 = icmp eq i16 %6, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = zext i16 %6 to i32
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %29 = getelementptr inbounds i8, ptr %2, i64 %28
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull @.str.14, i32 noundef %27) #18
  br label %34

31:                                               ; preds = %22
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %33 = getelementptr inbounds i8, ptr %2, i64 %32
  store i16 42, ptr %33, align 1
  br label %34

34:                                               ; preds = %31, %26
  %35 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %36 = getelementptr i8, ptr %2, i64 %35
  store i16 118, ptr %36, align 1
  %37 = icmp eq i32 %8, -1
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %39 = getelementptr inbounds i8, ptr %2, i64 %38
  br i1 %37, label %42, label %40

40:                                               ; preds = %34
  %41 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull @.str.90, i32 noundef %8) #18
  br label %43

42:                                               ; preds = %34
  store i16 42, ptr %39, align 1
  br label %43

43:                                               ; preds = %42, %40
  %44 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %45 = getelementptr i8, ptr %2, i64 %44
  store i16 112, ptr %45, align 1
  %46 = icmp eq i32 %10, -1
  %47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %48 = getelementptr inbounds i8, ptr %2, i64 %47
  br i1 %46, label %51, label %49

49:                                               ; preds = %43
  %50 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull @.str.90, i32 noundef %10) #18
  br label %52

51:                                               ; preds = %43
  store i16 42, ptr %48, align 1
  br label %52

52:                                               ; preds = %51, %49
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ieee1394_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = load i32, ptr %1, align 4, !tbaa !16
  %5 = getelementptr i8, ptr %1, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !16
  %7 = getelementptr i8, ptr %1, i64 8
  %8 = load i32, ptr %7, align 4, !tbaa !16
  %9 = getelementptr i8, ptr %1, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !16
  %11 = getelementptr i8, ptr %1, i64 16
  %12 = load i32, ptr %11, align 4, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %2, ptr noundef nonnull align 1 dereferenceable(10) @.str.91, i64 10, i1 false) #18
  %13 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %14 = getelementptr i8, ptr %2, i64 %13
  store i32 7234934, ptr %14, align 1
  %15 = and i32 %4, 1
  %16 = icmp eq i32 %15, 0
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %18 = getelementptr inbounds i8, ptr %2, i64 %17
  br i1 %16, label %21, label %19

19:                                               ; preds = %3
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull @.str.90, i32 noundef %6) #18
  br label %22

21:                                               ; preds = %3
  store i16 42, ptr %18, align 1
  br label %22

22:                                               ; preds = %21, %19
  %23 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %24 = getelementptr i8, ptr %2, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %24, ptr noundef nonnull align 1 dereferenceable(3) @.str.93, i64 3, i1 false)
  %25 = and i32 %4, 2
  %26 = icmp eq i32 %25, 0
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %28 = getelementptr inbounds i8, ptr %2, i64 %27
  br i1 %26, label %31, label %29

29:                                               ; preds = %22
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull @.str.90, i32 noundef %8) #18
  br label %32

31:                                               ; preds = %22
  store i16 42, ptr %28, align 1
  br label %32

32:                                               ; preds = %31, %29
  %33 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %34 = getelementptr i8, ptr %2, i64 %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %34, ptr noundef nonnull align 1 dereferenceable(3) @.str.94, i64 3, i1 false)
  %35 = and i32 %4, 4
  %36 = icmp eq i32 %35, 0
  %37 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %38 = getelementptr inbounds i8, ptr %2, i64 %37
  br i1 %36, label %41, label %39

39:                                               ; preds = %32
  %40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull @.str.90, i32 noundef %10) #18
  br label %42

41:                                               ; preds = %32
  store i16 42, ptr %38, align 1
  br label %42

42:                                               ; preds = %41, %39
  %43 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %44 = getelementptr i8, ptr %2, i64 %43
  store i32 7497078, ptr %44, align 1
  %45 = and i32 %4, 8
  %46 = icmp eq i32 %45, 0
  %47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %48 = getelementptr inbounds i8, ptr %2, i64 %47
  br i1 %46, label %51, label %49

49:                                               ; preds = %42
  %50 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull @.str.90, i32 noundef %12) #18
  br label %52

51:                                               ; preds = %42
  store i16 42, ptr %48, align 1
  br label %52

52:                                               ; preds = %51, %49
  %53 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %54 = shl i64 %53, 32
  %55 = add i64 %54, -4294967296
  %56 = ashr exact i64 %55, 32
  %57 = getelementptr inbounds i8, ptr %2, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !31
  %59 = icmp eq i8 %58, 42
  br i1 %59, label %65, label %60

60:                                               ; preds = %52
  %61 = ashr exact i64 %54, 32
  %62 = getelementptr inbounds i8, ptr %2, i64 %61
  %63 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %62) #18
  %64 = getelementptr i8, ptr %62, i64 %63
  store i16 42, ptr %64, align 1
  br label %65

65:                                               ; preds = %60, %52
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @do_pci_entry(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %1, align 4, !tbaa !16
  %5 = getelementptr i8, ptr %1, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !16
  %7 = getelementptr i8, ptr %1, i64 8
  %8 = load i32, ptr %7, align 4, !tbaa !16
  %9 = getelementptr i8, ptr %1, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !16
  %11 = getelementptr i8, ptr %1, i64 16
  %12 = load i32, ptr %11, align 4, !tbaa !16
  %13 = getelementptr i8, ptr %1, i64 20
  %14 = load i32, ptr %13, align 4, !tbaa !16
  %15 = getelementptr i8, ptr %1, i64 28
  %16 = load i32, ptr %15, align 4, !tbaa !16
  switch i32 %16, label %19 [
    i32 0, label %17
    i32 1, label %18
  ]

17:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.96, i64 5, i1 false) #18
  br label %20

18:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %2, ptr noundef nonnull align 1 dereferenceable(10) @.str.97, i64 10, i1 false) #18
  br label %20

19:                                               ; preds = %3
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.98, i32 noundef %16) #18
  br label %113

20:                                               ; preds = %18, %17
  %21 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %22 = getelementptr i8, ptr %2, i64 %21
  store i16 118, ptr %22, align 1
  %23 = icmp eq i32 %4, -1
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %25 = getelementptr inbounds i8, ptr %2, i64 %24
  br i1 %23, label %28, label %26

26:                                               ; preds = %20
  %27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull @.str.90, i32 noundef %4) #18
  br label %29

28:                                               ; preds = %20
  store i16 42, ptr %25, align 1
  br label %29

29:                                               ; preds = %28, %26
  %30 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %31 = getelementptr i8, ptr %2, i64 %30
  store i16 100, ptr %31, align 1
  %32 = icmp eq i32 %6, -1
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %34 = getelementptr inbounds i8, ptr %2, i64 %33
  br i1 %32, label %37, label %35

35:                                               ; preds = %29
  %36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull @.str.90, i32 noundef %6) #18
  br label %38

37:                                               ; preds = %29
  store i16 42, ptr %34, align 1
  br label %38

38:                                               ; preds = %37, %35
  %39 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %40 = getelementptr i8, ptr %2, i64 %39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %40, ptr noundef nonnull align 1 dereferenceable(3) @.str.99, i64 3, i1 false)
  %41 = icmp eq i32 %8, -1
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %43 = getelementptr inbounds i8, ptr %2, i64 %42
  br i1 %41, label %46, label %44

44:                                               ; preds = %38
  %45 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull @.str.90, i32 noundef %8) #18
  br label %47

46:                                               ; preds = %38
  store i16 42, ptr %43, align 1
  br label %47

47:                                               ; preds = %46, %44
  %48 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %49 = getelementptr i8, ptr %2, i64 %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %49, ptr noundef nonnull align 1 dereferenceable(3) @.str.100, i64 3, i1 false)
  %50 = icmp eq i32 %10, -1
  %51 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %52 = getelementptr inbounds i8, ptr %2, i64 %51
  br i1 %50, label %55, label %53

53:                                               ; preds = %47
  %54 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull @.str.90, i32 noundef %10) #18
  br label %56

55:                                               ; preds = %47
  store i16 42, ptr %52, align 1
  br label %56

56:                                               ; preds = %55, %53
  %57 = lshr i32 %12, 16
  %58 = lshr i32 %14, 16
  %59 = lshr i32 %12, 8
  %60 = trunc i32 %58 to i8
  switch i8 %60, label %67 [
    i8 -1, label %61
    i8 0, label %61
  ]

61:                                               ; preds = %56, %56
  %62 = lshr i32 %14, 8
  %63 = trunc i32 %62 to i8
  switch i8 %63, label %67 [
    i8 -1, label %64
    i8 0, label %64
  ]

64:                                               ; preds = %61, %61
  %65 = and i32 %14, 255
  %66 = trunc i32 %14 to i8
  switch i8 %66, label %67 [
    i8 -1, label %68
    i8 0, label %68
  ]

67:                                               ; preds = %64, %61, %56
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.101, ptr noundef %0, i32 noundef %14) #18
  br label %113

68:                                               ; preds = %64, %64
  %69 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %70 = getelementptr i8, ptr %2, i64 %69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %70, ptr noundef nonnull align 1 dereferenceable(3) @.str.102, i64 3, i1 false)
  %71 = and i32 %14, 16711680
  %72 = icmp eq i32 %71, 16711680
  %73 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %74 = getelementptr inbounds i8, ptr %2, i64 %73
  br i1 %72, label %75, label %78

75:                                               ; preds = %68
  %76 = and i32 %57, 255
  %77 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %74, ptr noundef nonnull @.str.26, i32 noundef %76) #18
  br label %79

78:                                               ; preds = %68
  store i16 42, ptr %74, align 1
  br label %79

79:                                               ; preds = %78, %75
  %80 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %81 = getelementptr i8, ptr %2, i64 %80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %81, ptr noundef nonnull align 1 dereferenceable(3) @.str.103, i64 3, i1 false)
  %82 = and i32 %14, 65280
  %83 = icmp eq i32 %82, 65280
  %84 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %85 = getelementptr inbounds i8, ptr %2, i64 %84
  br i1 %83, label %86, label %89

86:                                               ; preds = %79
  %87 = and i32 %59, 255
  %88 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull @.str.26, i32 noundef %87) #18
  br label %90

89:                                               ; preds = %79
  store i16 42, ptr %85, align 1
  br label %90

90:                                               ; preds = %89, %86
  %91 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %92 = getelementptr i8, ptr %2, i64 %91
  store i16 105, ptr %92, align 1
  %93 = icmp eq i32 %65, 255
  %94 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %95 = getelementptr inbounds i8, ptr %2, i64 %94
  br i1 %93, label %96, label %99

96:                                               ; preds = %90
  %97 = and i32 %12, 255
  %98 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %95, ptr noundef nonnull @.str.26, i32 noundef %97) #18
  br label %100

99:                                               ; preds = %90
  store i16 42, ptr %95, align 1
  br label %100

100:                                              ; preds = %99, %96
  %101 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %102 = shl i64 %101, 32
  %103 = add i64 %102, -4294967296
  %104 = ashr exact i64 %103, 32
  %105 = getelementptr inbounds i8, ptr %2, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !31
  %107 = icmp eq i8 %106, 42
  br i1 %107, label %113, label %108

108:                                              ; preds = %100
  %109 = ashr exact i64 %102, 32
  %110 = getelementptr inbounds i8, ptr %2, i64 %109
  %111 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %110) #18
  %112 = getelementptr i8, ptr %110, i64 %111
  store i16 42, ptr %112, align 1
  br label %113

113:                                              ; preds = %108, %100, %67, %19
  %114 = phi i32 [ 0, %19 ], [ 0, %67 ], [ 1, %100 ], [ 1, %108 ]
  ret i32 %114
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ccw_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = load i16, ptr %1, align 2, !tbaa !30
  %5 = getelementptr i8, ptr %1, i64 2
  %6 = load i16, ptr %5, align 2, !tbaa !30
  %7 = getelementptr i8, ptr %1, i64 6
  %8 = load i8, ptr %7, align 1, !tbaa !31
  %9 = getelementptr i8, ptr %1, i64 4
  %10 = load i16, ptr %9, align 2, !tbaa !30
  %11 = getelementptr i8, ptr %1, i64 7
  %12 = load i8, ptr %11, align 1, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.105, i64 5, i1 false) #18
  %13 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %14 = getelementptr i8, ptr %2, i64 %13
  store i16 116, ptr %14, align 1
  %15 = zext i16 %4 to i32
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %19 = getelementptr inbounds i8, ptr %2, i64 %18
  br i1 %17, label %23, label %20

20:                                               ; preds = %3
  %21 = zext i16 %6 to i32
  %22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull @.str.14, i32 noundef %21) #18
  br label %24

23:                                               ; preds = %3
  store i16 42, ptr %19, align 1
  br label %24

24:                                               ; preds = %23, %20
  %25 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %26 = getelementptr i8, ptr %2, i64 %25
  store i16 109, ptr %26, align 1
  %27 = and i32 %15, 2
  %28 = icmp eq i32 %27, 0
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %30 = getelementptr inbounds i8, ptr %2, i64 %29
  br i1 %28, label %34, label %31

31:                                               ; preds = %24
  %32 = zext i8 %8 to i32
  %33 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull @.str.26, i32 noundef %32) #18
  br label %35

34:                                               ; preds = %24
  store i16 42, ptr %30, align 1
  br label %35

35:                                               ; preds = %34, %31
  %36 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %37 = getelementptr i8, ptr %2, i64 %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %37, ptr noundef nonnull align 1 dereferenceable(3) @.str.108, i64 3, i1 false)
  %38 = and i32 %15, 4
  %39 = icmp eq i32 %38, 0
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %41 = getelementptr inbounds i8, ptr %2, i64 %40
  br i1 %39, label %45, label %42

42:                                               ; preds = %35
  %43 = zext i16 %10 to i32
  %44 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull @.str.14, i32 noundef %43) #18
  br label %46

45:                                               ; preds = %35
  store i16 42, ptr %41, align 1
  br label %46

46:                                               ; preds = %45, %42
  %47 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %48 = getelementptr i8, ptr %2, i64 %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %48, ptr noundef nonnull align 1 dereferenceable(3) @.str.109, i64 3, i1 false)
  %49 = and i32 %15, 8
  %50 = icmp eq i32 %49, 0
  %51 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %52 = getelementptr inbounds i8, ptr %2, i64 %51
  br i1 %50, label %56, label %53

53:                                               ; preds = %46
  %54 = zext i8 %12 to i32
  %55 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull @.str.26, i32 noundef %54) #18
  br label %57

56:                                               ; preds = %46
  store i16 42, ptr %52, align 1
  br label %57

57:                                               ; preds = %56, %53
  %58 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %59 = shl i64 %58, 32
  %60 = add i64 %59, -4294967296
  %61 = ashr exact i64 %60, 32
  %62 = getelementptr inbounds i8, ptr %2, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !31
  %64 = icmp eq i8 %63, 42
  br i1 %64, label %70, label %65

65:                                               ; preds = %57
  %66 = ashr exact i64 %59, 32
  %67 = getelementptr inbounds i8, ptr %2, i64 %66
  %68 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %67) #18
  %69 = getelementptr i8, ptr %67, i64 %68
  store i16 42, ptr %69, align 1
  br label %70

70:                                               ; preds = %65, %57
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ap_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr i8, ptr %1, i64 2
  %5 = load i8, ptr %4, align 1, !tbaa !31
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.110, i32 noundef %6) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_css_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !31
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.111, i32 noundef %6) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_serio_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = load i8, ptr %1, align 1, !tbaa !31
  %5 = getelementptr i8, ptr %1, i64 3
  %6 = load i8, ptr %5, align 1, !tbaa !31
  %7 = getelementptr i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !31
  %9 = getelementptr i8, ptr %1, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @.str.112, i64 7, i1 false) #18
  %11 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %12 = getelementptr i8, ptr %2, i64 %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %12, ptr noundef nonnull align 1 dereferenceable(3) @.str.113, i64 3, i1 false)
  %13 = icmp eq i8 %4, -1
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = zext i8 %4 to i32
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %17 = getelementptr inbounds i8, ptr %2, i64 %16
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull @.str.26, i32 noundef %15) #18
  br label %22

19:                                               ; preds = %3
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %21 = getelementptr inbounds i8, ptr %2, i64 %20
  store i16 42, ptr %21, align 1
  br label %22

22:                                               ; preds = %19, %14
  %23 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %24 = getelementptr i8, ptr %2, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %24, ptr noundef nonnull align 1 dereferenceable(3) @.str.114, i64 3, i1 false)
  %25 = icmp eq i8 %6, -1
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = zext i8 %6 to i32
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %29 = getelementptr inbounds i8, ptr %2, i64 %28
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull @.str.26, i32 noundef %27) #18
  br label %34

31:                                               ; preds = %22
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %33 = getelementptr inbounds i8, ptr %2, i64 %32
  store i16 42, ptr %33, align 1
  br label %34

34:                                               ; preds = %31, %26
  %35 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %36 = getelementptr i8, ptr %2, i64 %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %36, ptr noundef nonnull align 1 dereferenceable(3) @.str.115, i64 3, i1 false)
  %37 = icmp eq i8 %8, -1
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = zext i8 %8 to i32
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %41 = getelementptr inbounds i8, ptr %2, i64 %40
  %42 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull @.str.26, i32 noundef %39) #18
  br label %46

43:                                               ; preds = %34
  %44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %45 = getelementptr inbounds i8, ptr %2, i64 %44
  store i16 42, ptr %45, align 1
  br label %46

46:                                               ; preds = %43, %38
  %47 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %48 = getelementptr i8, ptr %2, i64 %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %48, ptr noundef nonnull align 1 dereferenceable(3) @.str.116, i64 3, i1 false)
  %49 = icmp eq i8 %10, -1
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = zext i8 %10 to i32
  %52 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %53 = getelementptr inbounds i8, ptr %2, i64 %52
  %54 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull @.str.26, i32 noundef %51) #18
  br label %58

55:                                               ; preds = %46
  %56 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %57 = getelementptr inbounds i8, ptr %2, i64 %56
  store i16 42, ptr %57, align 1
  br label %58

58:                                               ; preds = %55, %50
  %59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %60 = shl i64 %59, 32
  %61 = add i64 %60, -4294967296
  %62 = ashr exact i64 %61, 32
  %63 = getelementptr inbounds i8, ptr %2, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !31
  %65 = icmp eq i8 %64, 42
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = ashr exact i64 %60, 32
  %68 = getelementptr inbounds i8, ptr %2, i64 %67
  %69 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %68) #18
  %70 = getelementptr i8, ptr %68, i64 %69
  store i16 42, ptr %70, align 1
  br label %71

71:                                               ; preds = %66, %58
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_acpi_entry(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr i8, ptr %1, i64 16
  %5 = getelementptr i8, ptr %1, i64 20
  %6 = icmp eq ptr %1, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i8, ptr %1, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.117, ptr noundef nonnull %1) #18
  br label %48

12:                                               ; preds = %7, %3
  %13 = icmp eq ptr %4, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @.str.118, i64 7, i1 false)
  %15 = load i32, ptr %5, align 4, !tbaa !16
  %16 = and i32 %15, 16711680
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds i8, ptr %2, i64 6
  br i1 %17, label %24, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %4, align 4, !tbaa !16
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %18, ptr noundef nonnull @.str.119, i32 noundef %22) #18
  br label %25

24:                                               ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %18, ptr noundef nonnull align 1 dereferenceable(3) @.str.120, i64 3, i1 false)
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, ptr %5, align 4, !tbaa !16
  %27 = and i32 %26, 65280
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds i8, ptr %2, i64 8
  br i1 %28, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %4, align 4, !tbaa !16
  %32 = lshr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.119, i32 noundef %33) #18
  br label %36

35:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %29, ptr noundef nonnull align 1 dereferenceable(3) @.str.120, i64 3, i1 false)
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, ptr %5, align 4, !tbaa !16
  %38 = and i32 %37, 255
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds i8, ptr %2, i64 10
  br i1 %39, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %4, align 4, !tbaa !16
  %43 = and i32 %42, 255
  %44 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %40, ptr noundef nonnull @.str.119, i32 noundef %43) #18
  br label %46

45:                                               ; preds = %36
  store i16 16191, ptr %40, align 1
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds i8, ptr %2, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %47, ptr noundef nonnull align 1 dereferenceable(3) @.str.121, i64 3, i1 false)
  br label %48

48:                                               ; preds = %46, %12, %10
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_pcmcia_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = load i16, ptr %1, align 2, !tbaa !30
  %5 = getelementptr i8, ptr %1, i64 2
  %6 = load i16, ptr %5, align 2, !tbaa !30
  %7 = getelementptr i8, ptr %1, i64 4
  %8 = load i16, ptr %7, align 2, !tbaa !30
  %9 = getelementptr i8, ptr %1, i64 6
  %10 = load i8, ptr %9, align 1, !tbaa !31
  %11 = getelementptr i8, ptr %1, i64 7
  %12 = load i8, ptr %11, align 1, !tbaa !31
  %13 = getelementptr i8, ptr %1, i64 8
  %14 = load i8, ptr %13, align 1, !tbaa !31
  %15 = getelementptr i8, ptr %1, i64 12
  store i64 16432653916791664, ptr %2, align 1
  %16 = tail call i64 @strlen(ptr nonnull %2)
  %17 = getelementptr i8, ptr %2, i64 %16
  store i16 109, ptr %17, align 1
  %18 = zext i16 %4 to i32
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  %21 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %22 = getelementptr inbounds i8, ptr %2, i64 %21
  br i1 %20, label %26, label %23

23:                                               ; preds = %3
  %24 = zext i16 %6 to i32
  %25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.14, i32 noundef %24) #18
  br label %27

26:                                               ; preds = %3
  store i16 42, ptr %22, align 1
  br label %27

27:                                               ; preds = %26, %23
  %28 = tail call i64 @strlen(ptr nonnull %2)
  %29 = getelementptr i8, ptr %2, i64 %28
  store i16 99, ptr %29, align 1
  %30 = and i32 %18, 2
  %31 = icmp eq i32 %30, 0
  %32 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %33 = getelementptr inbounds i8, ptr %2, i64 %32
  br i1 %31, label %37, label %34

34:                                               ; preds = %27
  %35 = zext i16 %8 to i32
  %36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %33, ptr noundef nonnull @.str.14, i32 noundef %35) #18
  br label %38

37:                                               ; preds = %27
  store i16 42, ptr %33, align 1
  br label %38

38:                                               ; preds = %37, %34
  %39 = tail call i64 @strlen(ptr nonnull %2)
  %40 = getelementptr i8, ptr %2, i64 %39
  store i16 102, ptr %40, align 1
  %41 = and i32 %18, 4
  %42 = icmp eq i32 %41, 0
  %43 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %44 = getelementptr inbounds i8, ptr %2, i64 %43
  br i1 %42, label %48, label %45

45:                                               ; preds = %38
  %46 = zext i8 %10 to i32
  %47 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.26, i32 noundef %46) #18
  br label %49

48:                                               ; preds = %38
  store i16 42, ptr %44, align 1
  br label %49

49:                                               ; preds = %48, %45
  %50 = tail call i64 @strlen(ptr nonnull %2)
  %51 = getelementptr i8, ptr %2, i64 %50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %51, ptr noundef nonnull align 1 dereferenceable(3) @.str.125, i64 3, i1 false)
  %52 = and i32 %18, 8
  %53 = icmp eq i32 %52, 0
  %54 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %55 = getelementptr inbounds i8, ptr %2, i64 %54
  br i1 %53, label %59, label %56

56:                                               ; preds = %49
  %57 = zext i8 %12 to i32
  %58 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %55, ptr noundef nonnull @.str.26, i32 noundef %57) #18
  br label %60

59:                                               ; preds = %49
  store i16 42, ptr %55, align 1
  br label %60

60:                                               ; preds = %59, %56
  %61 = tail call i64 @strlen(ptr nonnull %2)
  %62 = getelementptr i8, ptr %2, i64 %61
  store i32 7235184, ptr %62, align 1
  %63 = and i32 %18, 256
  %64 = icmp eq i32 %63, 0
  %65 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %66 = getelementptr inbounds i8, ptr %2, i64 %65
  br i1 %64, label %70, label %67

67:                                               ; preds = %60
  %68 = zext i8 %14 to i32
  %69 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %66, ptr noundef nonnull @.str.26, i32 noundef %68) #18
  br label %71

70:                                               ; preds = %60
  store i16 42, ptr %66, align 1
  br label %71

71:                                               ; preds = %70, %67
  %72 = tail call i64 @strlen(ptr nonnull %2)
  %73 = getelementptr i8, ptr %2, i64 %72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %73, ptr noundef nonnull align 1 dereferenceable(3) @.str.127, i64 3, i1 false)
  %74 = and i32 %18, 16
  %75 = icmp eq i32 %74, 0
  %76 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %77 = getelementptr inbounds i8, ptr %2, i64 %76
  br i1 %75, label %81, label %78

78:                                               ; preds = %71
  %79 = load i32, ptr %15, align 4, !tbaa !16
  %80 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %77, ptr noundef nonnull @.str.90, i32 noundef %79) #18
  br label %82

81:                                               ; preds = %71
  store i16 42, ptr %77, align 1
  br label %82

82:                                               ; preds = %81, %78
  %83 = tail call i64 @strlen(ptr nonnull %2)
  %84 = getelementptr i8, ptr %2, i64 %83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %84, ptr noundef nonnull align 1 dereferenceable(3) @.str.128, i64 3, i1 false)
  %85 = and i32 %18, 32
  %86 = icmp eq i32 %85, 0
  %87 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %88 = getelementptr inbounds i8, ptr %2, i64 %87
  br i1 %86, label %93, label %89

89:                                               ; preds = %82
  %90 = getelementptr i8, ptr %1, i64 16
  %91 = load i32, ptr %90, align 4, !tbaa !16
  %92 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %88, ptr noundef nonnull @.str.90, i32 noundef %91) #18
  br label %94

93:                                               ; preds = %82
  store i16 42, ptr %88, align 1
  br label %94

94:                                               ; preds = %93, %89
  %95 = tail call i64 @strlen(ptr nonnull %2)
  %96 = getelementptr i8, ptr %2, i64 %95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %96, ptr noundef nonnull align 1 dereferenceable(3) @.str.129, i64 3, i1 false)
  %97 = and i32 %18, 64
  %98 = icmp eq i32 %97, 0
  %99 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %100 = getelementptr inbounds i8, ptr %2, i64 %99
  br i1 %98, label %105, label %101

101:                                              ; preds = %94
  %102 = getelementptr i8, ptr %1, i64 20
  %103 = load i32, ptr %102, align 4, !tbaa !16
  %104 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %100, ptr noundef nonnull @.str.90, i32 noundef %103) #18
  br label %106

105:                                              ; preds = %94
  store i16 42, ptr %100, align 1
  br label %106

106:                                              ; preds = %105, %101
  %107 = tail call i64 @strlen(ptr nonnull %2)
  %108 = getelementptr i8, ptr %2, i64 %107
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %108, ptr noundef nonnull align 1 dereferenceable(3) @.str.130, i64 3, i1 false)
  %109 = and i32 %18, 128
  %110 = icmp eq i32 %109, 0
  %111 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %112 = getelementptr inbounds i8, ptr %2, i64 %111
  br i1 %110, label %117, label %113

113:                                              ; preds = %106
  %114 = getelementptr i8, ptr %1, i64 24
  %115 = load i32, ptr %114, align 4, !tbaa !16
  %116 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %112, ptr noundef nonnull @.str.90, i32 noundef %115) #18
  br label %118

117:                                              ; preds = %106
  store i16 42, ptr %112, align 1
  br label %118

118:                                              ; preds = %117, %113
  %119 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %120 = shl i64 %119, 32
  %121 = add i64 %120, -4294967296
  %122 = ashr exact i64 %121, 32
  %123 = getelementptr inbounds i8, ptr %2, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !31
  %125 = icmp eq i8 %124, 42
  br i1 %125, label %131, label %126

126:                                              ; preds = %118
  %127 = ashr exact i64 %120, 32
  %128 = getelementptr inbounds i8, ptr %2, i64 %127
  %129 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %128) #18
  %130 = getelementptr i8, ptr %128, i64 %129
  store i16 42, ptr %130, align 1
  br label %131

131:                                              ; preds = %126, %118
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_vio_entry(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #10 {
  %4 = getelementptr i8, ptr %1, i64 32
  %5 = load i8, ptr %1, align 1, !tbaa !31
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr @.str.15, ptr %1
  %8 = load i8, ptr %4, align 1, !tbaa !31
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @.str.15, ptr %4
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.131, ptr noundef nonnull %7, ptr noundef nonnull %10) #18
  %12 = icmp eq ptr %2, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %3
  %14 = load i8, ptr %2, align 1, !tbaa !31
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @__ctype_b_loc() #19
  br label %18

18:                                               ; preds = %28, %16
  %19 = phi i8 [ %30, %28 ], [ %14, %16 ]
  %20 = phi ptr [ %29, %28 ], [ %2, %16 ]
  %21 = load ptr, ptr %17, align 8, !tbaa !32
  %22 = sext i8 %19 to i64
  %23 = getelementptr inbounds i16, ptr %21, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !30
  %25 = and i16 %24, 8192
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  store i8 95, ptr %20, align 1, !tbaa !31
  br label %28

28:                                               ; preds = %27, %18
  %29 = getelementptr inbounds i8, ptr %20, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !31
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %18

32:                                               ; preds = %28, %13, %3
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %34 = shl i64 %33, 32
  %35 = add i64 %34, -4294967296
  %36 = ashr exact i64 %35, 32
  %37 = getelementptr inbounds i8, ptr %2, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !31
  %39 = icmp eq i8 %38, 42
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = ashr exact i64 %34, 32
  %42 = getelementptr inbounds i8, ptr %2, i64 %41
  %43 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %42) #18
  %44 = getelementptr i8, ptr %42, i64 %43
  store i16 42, ptr %44, align 1
  br label %45

45:                                               ; preds = %40, %32
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_input_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = load i32, ptr %1, align 4, !tbaa !16
  %5 = getelementptr i8, ptr %1, i64 4
  %6 = load i16, ptr %5, align 2, !tbaa !30
  %7 = getelementptr i8, ptr %1, i64 6
  %8 = load i16, ptr %7, align 2, !tbaa !30
  %9 = getelementptr i8, ptr %1, i64 8
  %10 = load i16, ptr %9, align 2, !tbaa !30
  %11 = getelementptr i8, ptr %1, i64 10
  %12 = load i16, ptr %11, align 2, !tbaa !30
  %13 = getelementptr i8, ptr %1, i64 12
  %14 = getelementptr i8, ptr %1, i64 16
  %15 = getelementptr i8, ptr %1, i64 112
  %16 = getelementptr i8, ptr %1, i64 116
  %17 = getelementptr i8, ptr %1, i64 124
  %18 = getelementptr i8, ptr %1, i64 128
  %19 = getelementptr i8, ptr %1, i64 132
  %20 = getelementptr i8, ptr %1, i64 136
  %21 = getelementptr i8, ptr %1, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @.str.132, i64 7, i1 false)
  %22 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %23 = getelementptr i8, ptr %2, i64 %22
  store i16 98, ptr %23, align 1
  %24 = and i32 %4, 1
  %25 = icmp eq i32 %24, 0
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %27 = getelementptr inbounds i8, ptr %2, i64 %26
  br i1 %25, label %31, label %28

28:                                               ; preds = %3
  %29 = zext i16 %6 to i32
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull @.str.14, i32 noundef %29) #18
  br label %32

31:                                               ; preds = %3
  store i16 42, ptr %27, align 1
  br label %32

32:                                               ; preds = %31, %28
  %33 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %34 = getelementptr i8, ptr %2, i64 %33
  store i16 118, ptr %34, align 1
  %35 = and i32 %4, 2
  %36 = icmp eq i32 %35, 0
  %37 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %38 = getelementptr inbounds i8, ptr %2, i64 %37
  br i1 %36, label %42, label %39

39:                                               ; preds = %32
  %40 = zext i16 %8 to i32
  %41 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull @.str.14, i32 noundef %40) #18
  br label %43

42:                                               ; preds = %32
  store i16 42, ptr %38, align 1
  br label %43

43:                                               ; preds = %42, %39
  %44 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %45 = getelementptr i8, ptr %2, i64 %44
  store i16 112, ptr %45, align 1
  %46 = and i32 %4, 4
  %47 = icmp eq i32 %46, 0
  %48 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %49 = getelementptr inbounds i8, ptr %2, i64 %48
  br i1 %47, label %53, label %50

50:                                               ; preds = %43
  %51 = zext i16 %10 to i32
  %52 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull @.str.14, i32 noundef %51) #18
  br label %54

53:                                               ; preds = %43
  store i16 42, ptr %49, align 1
  br label %54

54:                                               ; preds = %53, %50
  %55 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %56 = getelementptr i8, ptr %2, i64 %55
  store i16 101, ptr %56, align 1
  %57 = and i32 %4, 8
  %58 = icmp eq i32 %57, 0
  %59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %60 = getelementptr inbounds i8, ptr %2, i64 %59
  br i1 %58, label %64, label %61

61:                                               ; preds = %54
  %62 = zext i16 %12 to i32
  %63 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull @.str.14, i32 noundef %62) #18
  br label %65

64:                                               ; preds = %54
  store i16 42, ptr %60, align 1
  br label %65

65:                                               ; preds = %64, %61
  %66 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %67 = getelementptr inbounds i8, ptr %2, i64 %66
  store i32 2778413, ptr %67, align 1
  %68 = and i32 %4, 16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %85, %65
  %71 = phi i64 [ %86, %85 ], [ 0, %65 ]
  %72 = lshr i64 %71, 5
  %73 = and i64 %72, 134217727
  %74 = getelementptr inbounds i32, ptr %13, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !16
  %76 = zext i32 %75 to i64
  %77 = shl nuw nsw i64 1, %71
  %78 = and i64 %77, %76
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %70
  %81 = trunc i64 %71 to i32
  %82 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %83 = getelementptr inbounds i8, ptr %2, i64 %82
  %84 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %83, ptr noundef nonnull @.str.143, i32 noundef %81) #18
  br label %85

85:                                               ; preds = %80, %70
  %86 = add nuw nsw i64 %71, 1
  %87 = icmp eq i64 %86, 31
  br i1 %87, label %88, label %70

88:                                               ; preds = %85, %65
  %89 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %90 = getelementptr inbounds i8, ptr %2, i64 %89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %90, ptr noundef nonnull align 1 dereferenceable(3) @.str.135, i64 3, i1 false)
  %91 = and i32 %4, 32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %109, %88
  %94 = phi i32 [ %110, %109 ], [ 113, %88 ]
  %95 = lshr i32 %94, 5
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %14, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !16
  %99 = zext i32 %98 to i64
  %100 = and i32 %94, 31
  %101 = zext i32 %100 to i64
  %102 = shl nuw nsw i64 1, %101
  %103 = and i64 %102, %99
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %93
  %106 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %107 = getelementptr inbounds i8, ptr %2, i64 %106
  %108 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %107, ptr noundef nonnull @.str.143, i32 noundef %94) #18
  br label %109

109:                                              ; preds = %105, %93
  %110 = add nuw nsw i32 %94, 1
  %111 = icmp eq i32 %110, 767
  br i1 %111, label %112, label %93

112:                                              ; preds = %109, %88
  %113 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %114 = getelementptr inbounds i8, ptr %2, i64 %113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %114, ptr noundef nonnull align 1 dereferenceable(3) @.str.136, i64 3, i1 false)
  %115 = and i32 %4, 64
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %135, label %117

117:                                              ; preds = %132, %112
  %118 = phi i64 [ %133, %132 ], [ 0, %112 ]
  %119 = lshr i64 %118, 5
  %120 = and i64 %119, 134217727
  %121 = getelementptr inbounds i32, ptr %15, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !16
  %123 = zext i32 %122 to i64
  %124 = shl nuw nsw i64 1, %118
  %125 = and i64 %124, %123
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %117
  %128 = trunc i64 %118 to i32
  %129 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %130 = getelementptr inbounds i8, ptr %2, i64 %129
  %131 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %130, ptr noundef nonnull @.str.143, i32 noundef %128) #18
  br label %132

132:                                              ; preds = %127, %117
  %133 = add nuw nsw i64 %118, 1
  %134 = icmp eq i64 %133, 15
  br i1 %134, label %135, label %117

135:                                              ; preds = %132, %112
  %136 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %137 = getelementptr inbounds i8, ptr %2, i64 %136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %137, ptr noundef nonnull align 1 dereferenceable(3) @.str.137, i64 3, i1 false)
  %138 = and i32 %4, 128
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %159, label %140

140:                                              ; preds = %156, %135
  %141 = phi i32 [ %157, %156 ], [ 0, %135 ]
  %142 = lshr i32 %141, 5
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, ptr %16, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !16
  %146 = zext i32 %145 to i64
  %147 = and i32 %141, 31
  %148 = zext i32 %147 to i64
  %149 = shl nuw nsw i64 1, %148
  %150 = and i64 %149, %146
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %140
  %153 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %154 = getelementptr inbounds i8, ptr %2, i64 %153
  %155 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %154, ptr noundef nonnull @.str.143, i32 noundef %141) #18
  br label %156

156:                                              ; preds = %152, %140
  %157 = add nuw nsw i32 %141, 1
  %158 = icmp eq i32 %157, 63
  br i1 %158, label %159, label %140

159:                                              ; preds = %156, %135
  %160 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %161 = getelementptr inbounds i8, ptr %2, i64 %160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %161, ptr noundef nonnull align 1 dereferenceable(3) @.str.138, i64 3, i1 false)
  %162 = and i32 %4, 256
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %233, label %164

164:                                              ; preds = %159
  %165 = load i32, ptr %17, align 4, !tbaa !16
  %166 = zext i32 %165 to i64
  %167 = and i64 %166, 1
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %164
  %170 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %171 = getelementptr inbounds i8, ptr %2, i64 %170
  %172 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %171, ptr noundef nonnull @.str.143, i32 noundef 0) #18
  %173 = load i32, ptr %17, align 4, !tbaa !16
  %174 = zext i32 %173 to i64
  br label %175

175:                                              ; preds = %169, %164
  %176 = phi i64 [ %174, %169 ], [ %166, %164 ]
  %177 = and i64 %176, 2
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %175
  %180 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %181 = getelementptr inbounds i8, ptr %2, i64 %180
  %182 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %181, ptr noundef nonnull @.str.143, i32 noundef 1) #18
  %183 = load i32, ptr %17, align 4, !tbaa !16
  %184 = zext i32 %183 to i64
  br label %185

185:                                              ; preds = %179, %175
  %186 = phi i64 [ %184, %179 ], [ %176, %175 ]
  %187 = and i64 %186, 4
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %185
  %190 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %191 = getelementptr inbounds i8, ptr %2, i64 %190
  %192 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %191, ptr noundef nonnull @.str.143, i32 noundef 2) #18
  %193 = load i32, ptr %17, align 4, !tbaa !16
  %194 = zext i32 %193 to i64
  br label %195

195:                                              ; preds = %189, %185
  %196 = phi i64 [ %194, %189 ], [ %186, %185 ]
  %197 = and i64 %196, 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %205, label %199

199:                                              ; preds = %195
  %200 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %201 = getelementptr inbounds i8, ptr %2, i64 %200
  %202 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %201, ptr noundef nonnull @.str.143, i32 noundef 3) #18
  %203 = load i32, ptr %17, align 4, !tbaa !16
  %204 = zext i32 %203 to i64
  br label %205

205:                                              ; preds = %199, %195
  %206 = phi i64 [ %204, %199 ], [ %196, %195 ]
  %207 = and i64 %206, 16
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %205
  %210 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %211 = getelementptr inbounds i8, ptr %2, i64 %210
  %212 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %211, ptr noundef nonnull @.str.143, i32 noundef 4) #18
  %213 = load i32, ptr %17, align 4, !tbaa !16
  %214 = zext i32 %213 to i64
  br label %215

215:                                              ; preds = %209, %205
  %216 = phi i64 [ %214, %209 ], [ %206, %205 ]
  %217 = and i64 %216, 32
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %215
  %220 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %221 = getelementptr inbounds i8, ptr %2, i64 %220
  %222 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %221, ptr noundef nonnull @.str.143, i32 noundef 5) #18
  %223 = load i32, ptr %17, align 4, !tbaa !16
  %224 = zext i32 %223 to i64
  br label %225

225:                                              ; preds = %219, %215
  %226 = phi i64 [ %224, %219 ], [ %216, %215 ]
  %227 = and i64 %226, 64
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %231 = getelementptr inbounds i8, ptr %2, i64 %230
  %232 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %231, ptr noundef nonnull @.str.143, i32 noundef 6) #18
  br label %233

233:                                              ; preds = %229, %225, %159
  %234 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %235 = getelementptr inbounds i8, ptr %2, i64 %234
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %235, ptr noundef nonnull align 1 dereferenceable(3) @.str.139, i64 3, i1 false)
  %236 = and i32 %4, 512
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %256, label %238

238:                                              ; preds = %253, %233
  %239 = phi i64 [ %254, %253 ], [ 0, %233 ]
  %240 = lshr i64 %239, 5
  %241 = and i64 %240, 134217727
  %242 = getelementptr inbounds i32, ptr %18, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !16
  %244 = zext i32 %243 to i64
  %245 = shl nuw nsw i64 1, %239
  %246 = and i64 %245, %244
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %238
  %249 = trunc i64 %239 to i32
  %250 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %251 = getelementptr inbounds i8, ptr %2, i64 %250
  %252 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %251, ptr noundef nonnull @.str.143, i32 noundef %249) #18
  br label %253

253:                                              ; preds = %248, %238
  %254 = add nuw nsw i64 %239, 1
  %255 = icmp eq i64 %254, 15
  br i1 %255, label %256, label %238

256:                                              ; preds = %253, %233
  %257 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %258 = getelementptr inbounds i8, ptr %2, i64 %257
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %258, ptr noundef nonnull align 1 dereferenceable(3) @.str.140, i64 3, i1 false)
  %259 = and i32 %4, 1024
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %330, label %261

261:                                              ; preds = %256
  %262 = load i32, ptr %19, align 4, !tbaa !16
  %263 = zext i32 %262 to i64
  %264 = and i64 %263, 1
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %272, label %266

266:                                              ; preds = %261
  %267 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %268 = getelementptr inbounds i8, ptr %2, i64 %267
  %269 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %268, ptr noundef nonnull @.str.143, i32 noundef 0) #18
  %270 = load i32, ptr %19, align 4, !tbaa !16
  %271 = zext i32 %270 to i64
  br label %272

272:                                              ; preds = %266, %261
  %273 = phi i64 [ %271, %266 ], [ %263, %261 ]
  %274 = and i64 %273, 2
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %282, label %276

276:                                              ; preds = %272
  %277 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %278 = getelementptr inbounds i8, ptr %2, i64 %277
  %279 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %278, ptr noundef nonnull @.str.143, i32 noundef 1) #18
  %280 = load i32, ptr %19, align 4, !tbaa !16
  %281 = zext i32 %280 to i64
  br label %282

282:                                              ; preds = %276, %272
  %283 = phi i64 [ %281, %276 ], [ %273, %272 ]
  %284 = and i64 %283, 4
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %292, label %286

286:                                              ; preds = %282
  %287 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %288 = getelementptr inbounds i8, ptr %2, i64 %287
  %289 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %288, ptr noundef nonnull @.str.143, i32 noundef 2) #18
  %290 = load i32, ptr %19, align 4, !tbaa !16
  %291 = zext i32 %290 to i64
  br label %292

292:                                              ; preds = %286, %282
  %293 = phi i64 [ %291, %286 ], [ %283, %282 ]
  %294 = and i64 %293, 8
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %302, label %296

296:                                              ; preds = %292
  %297 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %298 = getelementptr inbounds i8, ptr %2, i64 %297
  %299 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %298, ptr noundef nonnull @.str.143, i32 noundef 3) #18
  %300 = load i32, ptr %19, align 4, !tbaa !16
  %301 = zext i32 %300 to i64
  br label %302

302:                                              ; preds = %296, %292
  %303 = phi i64 [ %301, %296 ], [ %293, %292 ]
  %304 = and i64 %303, 16
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %312, label %306

306:                                              ; preds = %302
  %307 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %308 = getelementptr inbounds i8, ptr %2, i64 %307
  %309 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %308, ptr noundef nonnull @.str.143, i32 noundef 4) #18
  %310 = load i32, ptr %19, align 4, !tbaa !16
  %311 = zext i32 %310 to i64
  br label %312

312:                                              ; preds = %306, %302
  %313 = phi i64 [ %311, %306 ], [ %303, %302 ]
  %314 = and i64 %313, 32
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %322, label %316

316:                                              ; preds = %312
  %317 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %318 = getelementptr inbounds i8, ptr %2, i64 %317
  %319 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %318, ptr noundef nonnull @.str.143, i32 noundef 5) #18
  %320 = load i32, ptr %19, align 4, !tbaa !16
  %321 = zext i32 %320 to i64
  br label %322

322:                                              ; preds = %316, %312
  %323 = phi i64 [ %321, %316 ], [ %313, %312 ]
  %324 = and i64 %323, 64
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %330, label %326

326:                                              ; preds = %322
  %327 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %328 = getelementptr inbounds i8, ptr %2, i64 %327
  %329 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %328, ptr noundef nonnull @.str.143, i32 noundef 6) #18
  br label %330

330:                                              ; preds = %326, %322, %256
  %331 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %332 = getelementptr inbounds i8, ptr %2, i64 %331
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %332, ptr noundef nonnull align 1 dereferenceable(3) @.str.141, i64 3, i1 false)
  %333 = and i32 %4, 2048
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %354, label %335

335:                                              ; preds = %351, %330
  %336 = phi i32 [ %352, %351 ], [ 0, %330 ]
  %337 = lshr i32 %336, 5
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds i32, ptr %20, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !16
  %341 = zext i32 %340 to i64
  %342 = and i32 %336, 31
  %343 = zext i32 %342 to i64
  %344 = shl nuw nsw i64 1, %343
  %345 = and i64 %344, %341
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %351, label %347

347:                                              ; preds = %335
  %348 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %349 = getelementptr inbounds i8, ptr %2, i64 %348
  %350 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %349, ptr noundef nonnull @.str.143, i32 noundef %336) #18
  br label %351

351:                                              ; preds = %347, %335
  %352 = add nuw nsw i32 %336, 1
  %353 = icmp eq i32 %352, 127
  br i1 %353, label %354, label %335

354:                                              ; preds = %351, %330
  %355 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %356 = getelementptr inbounds i8, ptr %2, i64 %355
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %356, ptr noundef nonnull align 1 dereferenceable(3) @.str.142, i64 3, i1 false)
  %357 = and i32 %4, 4096
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %377, label %359

359:                                              ; preds = %374, %354
  %360 = phi i64 [ %375, %374 ], [ 0, %354 ]
  %361 = lshr i64 %360, 5
  %362 = and i64 %361, 134217727
  %363 = getelementptr inbounds i32, ptr %21, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !16
  %365 = zext i32 %364 to i64
  %366 = shl nuw nsw i64 1, %360
  %367 = and i64 %366, %365
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %374, label %369

369:                                              ; preds = %359
  %370 = trunc i64 %360 to i32
  %371 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %372 = getelementptr inbounds i8, ptr %2, i64 %371
  %373 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %372, ptr noundef nonnull @.str.143, i32 noundef %370) #18
  br label %374

374:                                              ; preds = %369, %359
  %375 = add nuw nsw i64 %360, 1
  %376 = icmp eq i64 %375, 16
  br i1 %376, label %377, label %359

377:                                              ; preds = %374, %354
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_eisa_entry(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #10 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.144, ptr noundef nonnull %1) #18
  br label %10

7:                                                ; preds = %3
  %8 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %9 = getelementptr i8, ptr %2, i64 %8
  store i16 42, ptr %9, align 1
  br label %10

10:                                               ; preds = %7, %5
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_parisc_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = load i8, ptr %1, align 1, !tbaa !31
  %5 = getelementptr i8, ptr %1, i64 2
  %6 = load i16, ptr %5, align 2, !tbaa !30
  %7 = getelementptr i8, ptr %1, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !31
  %9 = getelementptr i8, ptr %1, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa !16
  store i64 16434895990710640, ptr %2, align 1
  %11 = tail call i64 @strlen(ptr nonnull %2)
  %12 = getelementptr i8, ptr %2, i64 %11
  store i16 116, ptr %12, align 1
  %13 = icmp eq i8 %4, -1
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = zext i8 %4 to i32
  %16 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %17 = getelementptr inbounds i8, ptr %2, i64 %16
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %17, ptr noundef nonnull @.str.26, i32 noundef %15) #18
  br label %22

19:                                               ; preds = %3
  %20 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %21 = getelementptr inbounds i8, ptr %2, i64 %20
  store i16 42, ptr %21, align 1
  br label %22

22:                                               ; preds = %19, %14
  %23 = tail call i64 @strlen(ptr nonnull %2)
  %24 = getelementptr i8, ptr %2, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %24, ptr noundef nonnull align 1 dereferenceable(3) @.str.146, i64 3, i1 false)
  %25 = icmp eq i16 %6, -1
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = zext i16 %6 to i32
  %28 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %29 = getelementptr inbounds i8, ptr %2, i64 %28
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.14, i32 noundef %27) #18
  br label %34

31:                                               ; preds = %22
  %32 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %33 = getelementptr inbounds i8, ptr %2, i64 %32
  store i16 42, ptr %33, align 1
  br label %34

34:                                               ; preds = %31, %26
  %35 = tail call i64 @strlen(ptr nonnull %2)
  %36 = getelementptr i8, ptr %2, i64 %35
  store i32 7759218, ptr %36, align 1
  %37 = icmp eq i8 %8, -1
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = zext i8 %8 to i32
  %40 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %41 = getelementptr inbounds i8, ptr %2, i64 %40
  %42 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %41, ptr noundef nonnull @.str.26, i32 noundef %39) #18
  br label %46

43:                                               ; preds = %34
  %44 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %45 = getelementptr inbounds i8, ptr %2, i64 %44
  store i16 42, ptr %45, align 1
  br label %46

46:                                               ; preds = %43, %38
  %47 = tail call i64 @strlen(ptr nonnull %2)
  %48 = getelementptr i8, ptr %2, i64 %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %48, ptr noundef nonnull align 1 dereferenceable(3) @.str.99, i64 3, i1 false)
  %49 = icmp eq i32 %10, -1
  %50 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %51 = getelementptr inbounds i8, ptr %2, i64 %50
  br i1 %49, label %54, label %52

52:                                               ; preds = %46
  %53 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %51, ptr noundef nonnull @.str.90, i32 noundef %10) #18
  br label %55

54:                                               ; preds = %46
  store i16 42, ptr %51, align 1
  br label %55

55:                                               ; preds = %54, %52
  %56 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %57 = shl i64 %56, 32
  %58 = add i64 %57, -4294967296
  %59 = ashr exact i64 %58, 32
  %60 = getelementptr inbounds i8, ptr %2, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !31
  %62 = icmp eq i8 %61, 42
  br i1 %62, label %68, label %63

63:                                               ; preds = %55
  %64 = ashr exact i64 %57, 32
  %65 = getelementptr inbounds i8, ptr %2, i64 %64
  %66 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %65) #18
  %67 = getelementptr i8, ptr %65, i64 %66
  store i16 42, ptr %67, align 1
  br label %68

68:                                               ; preds = %63, %55
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_sdio_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = load i8, ptr %1, align 1, !tbaa !31
  %5 = getelementptr i8, ptr %1, i64 2
  %6 = load i16, ptr %5, align 2, !tbaa !30
  %7 = getelementptr i8, ptr %1, i64 4
  %8 = load i16, ptr %7, align 2, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.148, i64 6, i1 false) #18
  %9 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %10 = getelementptr i8, ptr %2, i64 %9
  store i16 99, ptr %10, align 1
  %11 = icmp eq i8 %4, -1
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = zext i8 %4 to i32
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %15 = getelementptr inbounds i8, ptr %2, i64 %14
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull @.str.26, i32 noundef %13) #18
  br label %20

17:                                               ; preds = %3
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %19 = getelementptr inbounds i8, ptr %2, i64 %18
  store i16 42, ptr %19, align 1
  br label %20

20:                                               ; preds = %17, %12
  %21 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %22 = getelementptr i8, ptr %2, i64 %21
  store i16 118, ptr %22, align 1
  %23 = icmp eq i16 %6, -1
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = zext i16 %6 to i32
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %27 = getelementptr inbounds i8, ptr %2, i64 %26
  %28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull @.str.14, i32 noundef %25) #18
  br label %32

29:                                               ; preds = %20
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %31 = getelementptr inbounds i8, ptr %2, i64 %30
  store i16 42, ptr %31, align 1
  br label %32

32:                                               ; preds = %29, %24
  %33 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %34 = getelementptr i8, ptr %2, i64 %33
  store i16 100, ptr %34, align 1
  %35 = icmp eq i16 %8, -1
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = zext i16 %8 to i32
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %39 = getelementptr inbounds i8, ptr %2, i64 %38
  %40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull @.str.14, i32 noundef %37) #18
  br label %44

41:                                               ; preds = %32
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %43 = getelementptr inbounds i8, ptr %2, i64 %42
  store i16 42, ptr %43, align 1
  br label %44

44:                                               ; preds = %41, %36
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %46 = shl i64 %45, 32
  %47 = add i64 %46, -4294967296
  %48 = ashr exact i64 %47, 32
  %49 = getelementptr inbounds i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !31
  %51 = icmp eq i8 %50, 42
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = ashr exact i64 %46, 32
  %54 = getelementptr inbounds i8, ptr %2, i64 %53
  %55 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %54) #18
  %56 = getelementptr i8, ptr %54, i64 %55
  store i16 42, ptr %56, align 1
  br label %57

57:                                               ; preds = %52, %44
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ssb_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = load i16, ptr %1, align 2, !tbaa !30
  %5 = getelementptr i8, ptr %1, i64 2
  %6 = load i16, ptr %5, align 2, !tbaa !30
  %7 = getelementptr i8, ptr %1, i64 4
  %8 = load i8, ptr %7, align 1, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.149, i64 5, i1 false) #18
  %9 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %10 = getelementptr i8, ptr %2, i64 %9
  store i16 118, ptr %10, align 1
  %11 = icmp eq i16 %4, -1
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = zext i16 %4 to i32
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %15 = getelementptr inbounds i8, ptr %2, i64 %14
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull @.str.14, i32 noundef %13) #18
  br label %20

17:                                               ; preds = %3
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %19 = getelementptr inbounds i8, ptr %2, i64 %18
  store i16 42, ptr %19, align 1
  br label %20

20:                                               ; preds = %17, %12
  %21 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %22 = getelementptr i8, ptr %2, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %22, ptr noundef nonnull align 1 dereferenceable(3) @.str.115, i64 3, i1 false)
  %23 = icmp eq i16 %6, -1
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = zext i16 %6 to i32
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %27 = getelementptr inbounds i8, ptr %2, i64 %26
  %28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull @.str.14, i32 noundef %25) #18
  br label %32

29:                                               ; preds = %20
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %31 = getelementptr inbounds i8, ptr %2, i64 %30
  store i16 42, ptr %31, align 1
  br label %32

32:                                               ; preds = %29, %24
  %33 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %34 = getelementptr i8, ptr %2, i64 %33
  store i32 7759218, ptr %34, align 1
  %35 = icmp eq i8 %8, -1
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = zext i8 %8 to i32
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %39 = getelementptr inbounds i8, ptr %2, i64 %38
  %40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull @.str.26, i32 noundef %37) #18
  br label %44

41:                                               ; preds = %32
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %43 = getelementptr inbounds i8, ptr %2, i64 %42
  store i16 42, ptr %43, align 1
  br label %44

44:                                               ; preds = %41, %36
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %46 = shl i64 %45, 32
  %47 = add i64 %46, -4294967296
  %48 = ashr exact i64 %47, 32
  %49 = getelementptr inbounds i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !31
  %51 = icmp eq i8 %50, 42
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = ashr exact i64 %46, 32
  %54 = getelementptr inbounds i8, ptr %2, i64 %53
  %55 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %54) #18
  %56 = getelementptr i8, ptr %54, i64 %55
  store i16 42, ptr %56, align 1
  br label %57

57:                                               ; preds = %52, %44
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_bcma_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = load i16, ptr %1, align 2, !tbaa !30
  %5 = getelementptr i8, ptr %1, i64 2
  %6 = load i16, ptr %5, align 2, !tbaa !30
  %7 = getelementptr i8, ptr %1, i64 4
  %8 = load i8, ptr %7, align 1, !tbaa !31
  %9 = getelementptr i8, ptr %1, i64 5
  %10 = load i8, ptr %9, align 1, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.150, i64 6, i1 false) #18
  %11 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %12 = getelementptr i8, ptr %2, i64 %11
  store i16 109, ptr %12, align 1
  %13 = icmp eq i16 %4, -1
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = zext i16 %4 to i32
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %17 = getelementptr inbounds i8, ptr %2, i64 %16
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull @.str.14, i32 noundef %15) #18
  br label %22

19:                                               ; preds = %3
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %21 = getelementptr inbounds i8, ptr %2, i64 %20
  store i16 42, ptr %21, align 1
  br label %22

22:                                               ; preds = %19, %14
  %23 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %24 = getelementptr i8, ptr %2, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %24, ptr noundef nonnull align 1 dereferenceable(3) @.str.115, i64 3, i1 false)
  %25 = icmp eq i16 %6, -1
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = zext i16 %6 to i32
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %29 = getelementptr inbounds i8, ptr %2, i64 %28
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull @.str.14, i32 noundef %27) #18
  br label %34

31:                                               ; preds = %22
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %33 = getelementptr inbounds i8, ptr %2, i64 %32
  store i16 42, ptr %33, align 1
  br label %34

34:                                               ; preds = %31, %26
  %35 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %36 = getelementptr i8, ptr %2, i64 %35
  store i32 7759218, ptr %36, align 1
  %37 = icmp eq i8 %8, -1
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = zext i8 %8 to i32
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %41 = getelementptr inbounds i8, ptr %2, i64 %40
  %42 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull @.str.26, i32 noundef %39) #18
  br label %46

43:                                               ; preds = %34
  %44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %45 = getelementptr inbounds i8, ptr %2, i64 %44
  store i16 42, ptr %45, align 1
  br label %46

46:                                               ; preds = %43, %38
  %47 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %48 = getelementptr i8, ptr %2, i64 %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %48, ptr noundef nonnull align 1 dereferenceable(3) @.str.151, i64 3, i1 false)
  %49 = icmp eq i8 %10, -1
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = zext i8 %10 to i32
  %52 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %53 = getelementptr inbounds i8, ptr %2, i64 %52
  %54 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull @.str.26, i32 noundef %51) #18
  br label %58

55:                                               ; preds = %46
  %56 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %57 = getelementptr inbounds i8, ptr %2, i64 %56
  store i16 42, ptr %57, align 1
  br label %58

58:                                               ; preds = %55, %50
  %59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %60 = shl i64 %59, 32
  %61 = add i64 %60, -4294967296
  %62 = ashr exact i64 %61, 32
  %63 = getelementptr inbounds i8, ptr %2, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !31
  %65 = icmp eq i8 %64, 42
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = ashr exact i64 %60, 32
  %68 = getelementptr inbounds i8, ptr %2, i64 %67
  %69 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %68) #18
  %70 = getelementptr i8, ptr %68, i64 %69
  store i16 42, ptr %70, align 1
  br label %71

71:                                               ; preds = %66, %58
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_virtio_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #10 {
  %4 = load i32, ptr %1, align 4, !tbaa !16
  %5 = getelementptr i8, ptr %1, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !16
  store i64 16448047365122422, ptr %2, align 1
  %7 = tail call i64 @strlen(ptr nonnull %2)
  %8 = getelementptr i8, ptr %2, i64 %7
  store i16 100, ptr %8, align 1
  %9 = icmp eq i32 %4, -1
  %10 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  br i1 %9, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.90, i32 noundef %4) #18
  br label %15

14:                                               ; preds = %3
  store i16 42, ptr %11, align 1
  br label %15

15:                                               ; preds = %14, %12
  %16 = tail call i64 @strlen(ptr nonnull %2)
  %17 = getelementptr i8, ptr %2, i64 %16
  store i16 118, ptr %17, align 1
  %18 = icmp eq i32 %6, -1
  %19 = tail call i64 @strlen(ptr noundef nonnull %2) #16
  %20 = getelementptr inbounds i8, ptr %2, i64 %19
  br i1 %18, label %23, label %21

21:                                               ; preds = %15
  %22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.90, i32 noundef %6) #18
  br label %24

23:                                               ; preds = %15
  store i16 42, ptr %20, align 1
  br label %24

24:                                               ; preds = %23, %21
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %26 = shl i64 %25, 32
  %27 = add i64 %26, -4294967296
  %28 = ashr exact i64 %27, 32
  %29 = getelementptr inbounds i8, ptr %2, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !31
  %31 = icmp eq i8 %30, 42
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = ashr exact i64 %26, 32
  %34 = getelementptr inbounds i8, ptr %2, i64 %33
  %35 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %34) #18
  %36 = getelementptr i8, ptr %34, i64 %35
  store i16 42, ptr %36, align 1
  br label %37

37:                                               ; preds = %32, %24
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_vmbus_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = alloca [34 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #18
  %5 = load i8, ptr %1, align 1, !tbaa !31
  %6 = zext i8 %5 to i32
  %7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.119, i32 noundef %6) #18
  %8 = getelementptr inbounds [34 x i8], ptr %4, i64 0, i64 2
  %9 = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !31
  %11 = zext i8 %10 to i32
  %12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.119, i32 noundef %11) #18
  %13 = getelementptr inbounds [34 x i8], ptr %4, i64 0, i64 4
  %14 = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !31
  %16 = zext i8 %15 to i32
  %17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.119, i32 noundef %16) #18
  %18 = getelementptr inbounds [34 x i8], ptr %4, i64 0, i64 6
  %19 = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !31
  %21 = zext i8 %20 to i32
  %22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %18, ptr noundef nonnull @.str.119, i32 noundef %21) #18
  %23 = getelementptr inbounds [34 x i8], ptr %4, i64 0, i64 8
  %24 = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 4
  %25 = load i8, ptr %24, align 1, !tbaa !31
  %26 = zext i8 %25 to i32
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %23, ptr noundef nonnull @.str.119, i32 noundef %26) #18
  %28 = getelementptr inbounds [34 x i8], ptr %4, i64 0, i64 10
  %29 = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 5
  %30 = load i8, ptr %29, align 1, !tbaa !31
  %31 = zext i8 %30 to i32
  %32 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %28, ptr noundef nonnull @.str.119, i32 noundef %31) #18
  %33 = getelementptr inbounds [34 x i8], ptr %4, i64 0, i64 12
  %34 = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 6
  %35 = load i8, ptr %34, align 1, !tbaa !31
  %36 = zext i8 %35 to i32
  %37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %33, ptr noundef nonnull @.str.119, i32 noundef %36) #18
  %38 = getelementptr inbounds [34 x i8], ptr %4, i64 0, i64 14
  %39 = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 7
  %40 = load i8, ptr %39, align 1, !tbaa !31
  %41 = zext i8 %40 to i32
  %42 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %38, ptr noundef nonnull @.str.119, i32 noundef %41) #18
  %43 = getelementptr inbounds [34 x i8], ptr %4, i64 0, i64 16
  %44 = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 8
  %45 = load i8, ptr %44, align 1, !tbaa !31
  %46 = zext i8 %45 to i32
  %47 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %43, ptr noundef nonnull @.str.119, i32 noundef %46) #18
  %48 = getelementptr inbounds [34 x i8], ptr %4, i64 0, i64 18
  %49 = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 9
  %50 = load i8, ptr %49, align 1, !tbaa !31
  %51 = zext i8 %50 to i32
  %52 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %48, ptr noundef nonnull @.str.119, i32 noundef %51) #18
  %53 = getelementptr inbounds [34 x i8], ptr %4, i64 0, i64 20
  %54 = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 10
  %55 = load i8, ptr %54, align 1, !tbaa !31
  %56 = zext i8 %55 to i32
  %57 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %53, ptr noundef nonnull @.str.119, i32 noundef %56) #18
  %58 = getelementptr inbounds [34 x i8], ptr %4, i64 0, i64 22
  %59 = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 11
  %60 = load i8, ptr %59, align 1, !tbaa !31
  %61 = zext i8 %60 to i32
  %62 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %58, ptr noundef nonnull @.str.119, i32 noundef %61) #18
  %63 = getelementptr inbounds [34 x i8], ptr %4, i64 0, i64 24
  %64 = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 12
  %65 = load i8, ptr %64, align 1, !tbaa !31
  %66 = zext i8 %65 to i32
  %67 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %63, ptr noundef nonnull @.str.119, i32 noundef %66) #18
  %68 = getelementptr inbounds [34 x i8], ptr %4, i64 0, i64 26
  %69 = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 13
  %70 = load i8, ptr %69, align 1, !tbaa !31
  %71 = zext i8 %70 to i32
  %72 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %68, ptr noundef nonnull @.str.119, i32 noundef %71) #18
  %73 = getelementptr inbounds [34 x i8], ptr %4, i64 0, i64 28
  %74 = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 14
  %75 = load i8, ptr %74, align 1, !tbaa !31
  %76 = zext i8 %75 to i32
  %77 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %73, ptr noundef nonnull @.str.119, i32 noundef %76) #18
  %78 = getelementptr inbounds [34 x i8], ptr %4, i64 0, i64 30
  %79 = getelementptr inbounds [16 x i8], ptr %1, i64 0, i64 15
  %80 = load i8, ptr %79, align 1, !tbaa !31
  %81 = zext i8 %80 to i32
  %82 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %78, ptr noundef nonnull @.str.119, i32 noundef %81) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @.str.153, i64 7, i1 false) #18
  %83 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_rpmsg_entry(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.154, ptr noundef %1) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_i2c_entry(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.155, ptr noundef %1) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_i3c_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = load i8, ptr %1, align 1, !tbaa !31
  %5 = getelementptr i8, ptr %1, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !31
  %7 = getelementptr i8, ptr %1, i64 2
  %8 = load i16, ptr %7, align 2, !tbaa !30
  %9 = getelementptr i8, ptr %1, i64 4
  %10 = load i16, ptr %9, align 2, !tbaa !30
  %11 = getelementptr i8, ptr %1, i64 6
  %12 = load i16, ptr %11, align 2, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.156, i64 5, i1 false) #18
  %13 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %14 = getelementptr i8, ptr %2, i64 %13
  store i32 7496548, ptr %14, align 1
  %15 = zext i8 %4 to i32
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %19 = getelementptr inbounds i8, ptr %2, i64 %18
  br i1 %17, label %23, label %20

20:                                               ; preds = %3
  %21 = zext i8 %6 to i32
  %22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull @.str.26, i32 noundef %21) #18
  br label %24

23:                                               ; preds = %3
  store i16 42, ptr %19, align 1
  br label %24

24:                                               ; preds = %23, %20
  %25 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %26 = getelementptr i8, ptr %2, i64 %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %26, ptr noundef nonnull align 1 dereferenceable(6) @.str.158, i64 6, i1 false)
  %27 = and i32 %15, 2
  %28 = icmp eq i32 %27, 0
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %30 = getelementptr inbounds i8, ptr %2, i64 %29
  br i1 %28, label %34, label %31

31:                                               ; preds = %24
  %32 = zext i16 %8 to i32
  %33 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull @.str.14, i32 noundef %32) #18
  br label %35

34:                                               ; preds = %24
  store i16 42, ptr %30, align 1
  br label %35

35:                                               ; preds = %34, %31
  %36 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %37 = getelementptr i8, ptr %2, i64 %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %37, ptr noundef nonnull align 1 dereferenceable(5) @.str.159, i64 5, i1 false)
  %38 = and i32 %15, 4
  %39 = icmp eq i32 %38, 0
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %41 = getelementptr inbounds i8, ptr %2, i64 %40
  br i1 %39, label %45, label %42

42:                                               ; preds = %35
  %43 = zext i16 %10 to i32
  %44 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull @.str.14, i32 noundef %43) #18
  br label %46

45:                                               ; preds = %35
  store i16 42, ptr %41, align 1
  br label %46

46:                                               ; preds = %45, %42
  %47 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %48 = getelementptr i8, ptr %2, i64 %47
  store i32 7632997, ptr %48, align 1
  %49 = and i32 %15, 8
  %50 = icmp eq i32 %49, 0
  %51 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %52 = getelementptr inbounds i8, ptr %2, i64 %51
  br i1 %50, label %56, label %53

53:                                               ; preds = %46
  %54 = zext i16 %12 to i32
  %55 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull @.str.14, i32 noundef %54) #18
  br label %57

56:                                               ; preds = %46
  store i16 42, ptr %52, align 1
  br label %57

57:                                               ; preds = %56, %53
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_spi_entry(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.161, ptr noundef %1) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_dmi_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #10 {
  %4 = getelementptr i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.162, i64 5, i1 false)
  br label %5

5:                                                ; preds = %50, %3
  %6 = phi i64 [ 0, %3 ], [ %51, %50 ]
  %7 = getelementptr inbounds [15 x %struct.dmifield], ptr @dmi_fields, i64 0, i64 %6, i32 1
  %8 = getelementptr inbounds [15 x %struct.dmifield], ptr @dmi_fields, i64 0, i64 %6
  br label %9

9:                                                ; preds = %47, %5
  %10 = phi i64 [ 0, %5 ], [ %48, %47 ]
  %11 = getelementptr inbounds [4 x %struct.dmi_strmatch], ptr %4, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 127
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %9
  %16 = zext i8 %13 to i32
  %17 = load i32, ptr %7, align 8, !tbaa !36
  %18 = icmp eq i32 %17, %16
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %21 = getelementptr inbounds i8, ptr %2, i64 %20
  %22 = load ptr, ptr %8, align 16, !tbaa !38
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull @.str.163, ptr noundef %22) #18
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %25 = getelementptr inbounds i8, ptr %2, i64 %24
  %26 = getelementptr inbounds %struct.dmi_strmatch, ptr %11, i64 0, i32 1
  %27 = load i8, ptr %26, align 1, !tbaa !31
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %38, %19
  %30 = phi i8 [ %41, %38 ], [ %27, %19 ]
  %31 = phi ptr [ %40, %38 ], [ %26, %19 ]
  %32 = phi ptr [ %39, %38 ], [ %25, %19 ]
  %33 = freeze i8 %30
  %34 = icmp slt i8 %33, 33
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  switch i8 %33, label %36 [
    i8 127, label %38
    i8 58, label %38
  ]

36:                                               ; preds = %35
  %37 = getelementptr inbounds i8, ptr %32, i64 1
  store i8 %33, ptr %32, align 1, !tbaa !31
  br label %38

38:                                               ; preds = %36, %35, %35, %29
  %39 = phi ptr [ %37, %36 ], [ %32, %35 ], [ %32, %29 ], [ %32, %35 ]
  %40 = getelementptr inbounds i8, ptr %31, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !31
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %29

43:                                               ; preds = %38, %19
  %44 = phi ptr [ %25, %19 ], [ %39, %38 ]
  store i8 0, ptr %44, align 1, !tbaa !31
  %45 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %46 = getelementptr i8, ptr %2, i64 %45
  store i16 42, ptr %46, align 1
  br label %47

47:                                               ; preds = %43, %15, %9
  %48 = add nuw nsw i64 %10, 1
  %49 = icmp eq i64 %48, 4
  br i1 %49, label %50, label %9

50:                                               ; preds = %47
  %51 = add nuw nsw i64 %6, 1
  %52 = icmp eq i64 %51, 15
  br i1 %52, label %53, label %5

53:                                               ; preds = %50
  %54 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %55 = getelementptr i8, ptr %2, i64 %54
  store i16 58, ptr %55, align 1
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_platform_entry(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.179, ptr noundef %1) #18
  ret i32 1
}

; Function Attrs: nofree nosync nounwind uwtable
define internal i32 @do_mdio_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = load i32, ptr %1, align 4, !tbaa !16
  %5 = getelementptr i8, ptr %1, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.180, i64 6, i1 false)
  %7 = insertelement <16 x i32> poison, i32 %4, i64 0
  %8 = shufflevector <16 x i32> %7, <16 x i32> poison, <16 x i32> zeroinitializer
  %9 = insertelement <16 x i32> poison, i32 %6, i64 0
  %10 = shufflevector <16 x i32> %9, <16 x i32> poison, <16 x i32> zeroinitializer
  %11 = getelementptr inbounds i8, ptr %2, i64 5
  %12 = and <16 x i32> %10, <i32 -2147483648, i32 1073741824, i32 536870912, i32 268435456, i32 134217728, i32 67108864, i32 33554432, i32 16777216, i32 8388608, i32 4194304, i32 2097152, i32 1048576, i32 524288, i32 262144, i32 131072, i32 65536>
  %13 = icmp eq <16 x i32> %12, zeroinitializer
  %14 = and <16 x i32> %8, <i32 -2147483648, i32 1073741824, i32 536870912, i32 268435456, i32 134217728, i32 67108864, i32 33554432, i32 16777216, i32 8388608, i32 4194304, i32 2097152, i32 1048576, i32 524288, i32 262144, i32 131072, i32 65536>
  %15 = icmp eq <16 x i32> %14, zeroinitializer
  %16 = select <16 x i1> %15, <16 x i8> <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>, <16 x i8> <i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49>
  %17 = select <16 x i1> %13, <16 x i8> <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>, <16 x i8> %16
  store <16 x i8> %17, ptr %11, align 1, !tbaa !31
  %18 = getelementptr i8, ptr %2, i64 21
  %19 = and <16 x i32> %10, <i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1>
  %20 = icmp eq <16 x i32> %19, zeroinitializer
  %21 = and <16 x i32> %8, <i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1>
  %22 = icmp eq <16 x i32> %21, zeroinitializer
  %23 = select <16 x i1> %22, <16 x i8> <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>, <16 x i8> <i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49>
  %24 = select <16 x i1> %20, <16 x i8> <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>, <16 x i8> %23
  store <16 x i8> %24, ptr %18, align 1, !tbaa !31
  %25 = getelementptr i8, ptr %2, i64 37
  store i8 0, ptr %25, align 1, !tbaa !31
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_zorro_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #10 {
  %4 = load i32, ptr %1, align 4, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @.str.181, i64 7, i1 false) #18
  %5 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %6 = getelementptr i8, ptr %2, i64 %5
  store i16 105, ptr %6, align 1
  %7 = icmp eq i32 %4, -1
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %9 = getelementptr inbounds i8, ptr %2, i64 %8
  br i1 %7, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull @.str.90, i32 noundef %4) #18
  br label %13

12:                                               ; preds = %3
  store i16 42, ptr %9, align 1
  br label %13

13:                                               ; preds = %12, %10
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_isapnp_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr i8, ptr %1, i64 4
  %5 = load i16, ptr %4, align 2, !tbaa !30
  %6 = getelementptr i8, ptr %1, i64 6
  %7 = load i16, ptr %6, align 2, !tbaa !30
  %8 = zext i16 %5 to i32
  %9 = lshr i32 %8, 2
  %10 = and i32 %9, 63
  %11 = or i32 %10, 64
  %12 = shl nuw nsw i32 %8, 3
  %13 = and i32 %12, 24
  %14 = lshr i32 %8, 13
  %15 = or i32 %14, %13
  %16 = or i32 %15, 64
  %17 = lshr i32 %8, 8
  %18 = and i32 %17, 31
  %19 = or i32 %18, 64
  %20 = zext i16 %7 to i32
  %21 = lshr i32 %20, 4
  %22 = and i32 %21, 15
  %23 = and i32 %20, 15
  %24 = lshr i32 %20, 12
  %25 = lshr i32 %20, 8
  %26 = and i32 %25, 15
  %27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.182, i32 noundef %11, i32 noundef %16, i32 noundef %19, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %26) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ipack_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = load i8, ptr %1, align 1, !tbaa !31
  %5 = getelementptr i8, ptr %1, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !16
  %7 = getelementptr i8, ptr %1, i64 8
  %8 = load i32, ptr %7, align 4, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @.str.183, i64 7, i1 false) #18
  %9 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %10 = getelementptr i8, ptr %2, i64 %9
  store i16 102, ptr %10, align 1
  %11 = icmp eq i8 %4, -1
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = zext i8 %4 to i32
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %15 = getelementptr inbounds i8, ptr %2, i64 %14
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull @.str.26, i32 noundef %13) #18
  br label %20

17:                                               ; preds = %3
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %19 = getelementptr inbounds i8, ptr %2, i64 %18
  store i16 42, ptr %19, align 1
  br label %20

20:                                               ; preds = %17, %12
  %21 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %22 = getelementptr i8, ptr %2, i64 %21
  store i16 118, ptr %22, align 1
  %23 = icmp eq i32 %6, -1
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %25 = getelementptr inbounds i8, ptr %2, i64 %24
  br i1 %23, label %28, label %26

26:                                               ; preds = %20
  %27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull @.str.90, i32 noundef %6) #18
  br label %29

28:                                               ; preds = %20
  store i16 42, ptr %25, align 1
  br label %29

29:                                               ; preds = %28, %26
  %30 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %31 = getelementptr i8, ptr %2, i64 %30
  store i16 100, ptr %31, align 1
  %32 = icmp eq i32 %8, -1
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %34 = getelementptr inbounds i8, ptr %2, i64 %33
  br i1 %32, label %37, label %35

35:                                               ; preds = %29
  %36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull @.str.90, i32 noundef %8) #18
  br label %38

37:                                               ; preds = %29
  store i16 42, ptr %34, align 1
  br label %38

38:                                               ; preds = %37, %35
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %40 = shl i64 %39, 32
  %41 = add i64 %40, -4294967296
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !31
  %45 = icmp eq i8 %44, 42
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = ashr exact i64 %40, 32
  %48 = getelementptr inbounds i8, ptr %2, i64 %47
  %49 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %48) #18
  %50 = getelementptr i8, ptr %48, i64 %49
  store i16 42, ptr %50, align 1
  br label %51

51:                                               ; preds = %46, %38
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @do_amba_entry(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %1, align 4, !tbaa !16
  %5 = getelementptr i8, ptr %1, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !16
  %7 = and i32 %6, %4
  %8 = icmp eq i32 %7, %4
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.184, ptr noundef %0, i32 noundef %4, i32 noundef %6) #18
  br label %10

10:                                               ; preds = %9, %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @.str.185, i64 7, i1 false)
  %11 = getelementptr inbounds i8, ptr %2, i64 6
  br label %12

12:                                               ; preds = %156, %10
  %13 = phi i32 [ 0, %10 ], [ %158, %156 ]
  %14 = phi ptr [ %11, %10 ], [ %157, %156 ]
  %15 = mul nsw i32 %13, -4
  %16 = add nsw i32 %15, 28
  %17 = lshr i32 %4, %16
  %18 = and i32 %17, 15
  %19 = lshr i32 %6, %16
  %20 = and i32 %19, 15
  switch i32 %20, label %27 [
    i32 0, label %21
    i32 15, label %23
  ]

21:                                               ; preds = %12
  %22 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 63, ptr %14, align 1, !tbaa !31
  br label %156

23:                                               ; preds = %12
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull @.str.19, i32 noundef %18) #18
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %14, i64 %25
  br label %156

27:                                               ; preds = %12
  %28 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 91, ptr %14, align 1, !tbaa !31
  %29 = icmp eq i32 %18, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull @.str.19, i32 noundef 0) #18
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %28, i64 %32
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi ptr [ %33, %30 ], [ %28, %27 ]
  %36 = and i32 %19, 1
  %37 = icmp eq i32 %36, %18
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull @.str.19, i32 noundef 1) #18
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %35, i64 %40
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi ptr [ %41, %38 ], [ %35, %34 ]
  %44 = and i32 %19, 2
  %45 = icmp eq i32 %44, %18
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull @.str.19, i32 noundef 2) #18
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %43, i64 %48
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi ptr [ %49, %46 ], [ %43, %42 ]
  %52 = and i32 %19, 3
  %53 = icmp eq i32 %52, %18
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull @.str.19, i32 noundef 3) #18
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %51, i64 %56
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi ptr [ %57, %54 ], [ %51, %50 ]
  %60 = and i32 %19, 4
  %61 = icmp eq i32 %60, %18
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull @.str.19, i32 noundef 4) #18
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %59, i64 %64
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi ptr [ %65, %62 ], [ %59, %58 ]
  %68 = and i32 %19, 5
  %69 = icmp eq i32 %68, %18
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %67, ptr noundef nonnull @.str.19, i32 noundef 5) #18
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %67, i64 %72
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi ptr [ %73, %70 ], [ %67, %66 ]
  %76 = and i32 %19, 6
  %77 = icmp eq i32 %76, %18
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull @.str.19, i32 noundef 6) #18
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %75, i64 %80
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi ptr [ %81, %78 ], [ %75, %74 ]
  %84 = and i32 %19, 7
  %85 = icmp eq i32 %84, %18
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %83, ptr noundef nonnull @.str.19, i32 noundef 7) #18
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, ptr %83, i64 %88
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi ptr [ %89, %86 ], [ %83, %82 ]
  %92 = and i32 %19, 8
  %93 = icmp eq i32 %92, %18
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %91, ptr noundef nonnull @.str.19, i32 noundef 8) #18
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, ptr %91, i64 %96
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi ptr [ %97, %94 ], [ %91, %90 ]
  %100 = and i32 %19, 9
  %101 = icmp eq i32 %100, %18
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %99, ptr noundef nonnull @.str.19, i32 noundef 9) #18
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, ptr %99, i64 %104
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi ptr [ %105, %102 ], [ %99, %98 ]
  %108 = and i32 %19, 10
  %109 = icmp eq i32 %108, %18
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %107, ptr noundef nonnull @.str.19, i32 noundef 10) #18
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, ptr %107, i64 %112
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi ptr [ %113, %110 ], [ %107, %106 ]
  %116 = and i32 %19, 11
  %117 = icmp eq i32 %116, %18
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %115, ptr noundef nonnull @.str.19, i32 noundef 11) #18
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, ptr %115, i64 %120
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi ptr [ %121, %118 ], [ %115, %114 ]
  %124 = and i32 %19, 12
  %125 = icmp eq i32 %124, %18
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %123, ptr noundef nonnull @.str.19, i32 noundef 12) #18
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %123, i64 %128
  br label %130

130:                                              ; preds = %126, %122
  %131 = phi ptr [ %129, %126 ], [ %123, %122 ]
  %132 = and i32 %19, 13
  %133 = icmp eq i32 %132, %18
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %131, ptr noundef nonnull @.str.19, i32 noundef 13) #18
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, ptr %131, i64 %136
  br label %138

138:                                              ; preds = %134, %130
  %139 = phi ptr [ %137, %134 ], [ %131, %130 ]
  %140 = and i32 %19, 14
  %141 = icmp eq i32 %140, %18
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %139, ptr noundef nonnull @.str.19, i32 noundef 14) #18
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, ptr %139, i64 %144
  br label %146

146:                                              ; preds = %142, %138
  %147 = phi ptr [ %145, %142 ], [ %139, %138 ]
  %148 = icmp eq i32 %20, %18
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %147, ptr noundef nonnull @.str.19, i32 noundef 15) #18
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, ptr %147, i64 %151
  br label %153

153:                                              ; preds = %149, %146
  %154 = phi ptr [ %152, %149 ], [ %147, %146 ]
  %155 = getelementptr inbounds i8, ptr %154, i64 1
  store i8 93, ptr %154, align 1, !tbaa !31
  br label %156

156:                                              ; preds = %153, %23, %21
  %157 = phi ptr [ %155, %153 ], [ %26, %23 ], [ %22, %21 ]
  store i8 0, ptr %157, align 1, !tbaa !31
  %158 = add nuw nsw i32 %13, 1
  %159 = icmp eq i32 %158, 8
  br i1 %159, label %160, label %12

160:                                              ; preds = %156
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_mips_cdmm_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = load i8, ptr %1, align 1, !tbaa !31
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.186, i32 noundef %5) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_x86cpu_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = getelementptr i8, ptr %1, i64 8
  %5 = load i16, ptr %4, align 2, !tbaa !30
  %6 = getelementptr i8, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !30
  %8 = getelementptr i8, ptr %1, i64 4
  %9 = load i16, ptr %8, align 2, !tbaa !30
  %10 = load i16, ptr %1, align 2, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %2, ptr noundef nonnull align 1 dereferenceable(14) @.str.187, i64 14, i1 false) #18
  %11 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %12 = getelementptr i8, ptr %2, i64 %11
  store i32 7234934, ptr %12, align 1
  %13 = icmp eq i16 %10, -1
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = zext i16 %10 to i32
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %17 = getelementptr inbounds i8, ptr %2, i64 %16
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull @.str.14, i32 noundef %15) #18
  br label %22

19:                                               ; preds = %3
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %21 = getelementptr inbounds i8, ptr %2, i64 %20
  store i16 42, ptr %21, align 1
  br label %22

22:                                               ; preds = %19, %14
  %23 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %24 = getelementptr i8, ptr %2, i64 %23
  store i32 7168358, ptr %24, align 1
  %25 = icmp eq i16 %7, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = zext i16 %7 to i32
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %29 = getelementptr inbounds i8, ptr %2, i64 %28
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull @.str.14, i32 noundef %27) #18
  br label %34

31:                                               ; preds = %22
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %33 = getelementptr inbounds i8, ptr %2, i64 %32
  store i16 42, ptr %33, align 1
  br label %34

34:                                               ; preds = %31, %26
  %35 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %36 = getelementptr i8, ptr %2, i64 %35
  store i32 6582125, ptr %36, align 1
  %37 = icmp eq i16 %9, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = zext i16 %9 to i32
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %41 = getelementptr inbounds i8, ptr %2, i64 %40
  %42 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull @.str.14, i32 noundef %39) #18
  br label %46

43:                                               ; preds = %34
  %44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %45 = getelementptr inbounds i8, ptr %2, i64 %44
  store i16 42, ptr %45, align 1
  br label %46

46:                                               ; preds = %43, %38
  %47 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %48 = getelementptr i8, ptr %2, i64 %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %48, ptr noundef nonnull align 1 dereferenceable(11) @.str.190, i64 11, i1 false)
  %49 = icmp eq i16 %5, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = zext i16 %5 to i32
  %52 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %53 = getelementptr inbounds i8, ptr %2, i64 %52
  %54 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull @.str.191, i32 noundef %51) #18
  br label %55

55:                                               ; preds = %50, %46
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_cpu_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = load i16, ptr %1, align 2, !tbaa !30
  %5 = zext i16 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.192, i32 noundef %5) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_mei_entry(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #10 {
  %4 = getelementptr i8, ptr %1, i64 32
  %5 = getelementptr i8, ptr %1, i64 48
  %6 = load i8, ptr %5, align 1, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.193, i64 5, i1 false)
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %8 = getelementptr inbounds i8, ptr %2, i64 %7
  %9 = load i8, ptr %1, align 1, !tbaa !31
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, ptr @.str.15, ptr %1
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull @.str.194, ptr noundef nonnull %11) #18
  %13 = load i64, ptr %4, align 1
  %14 = getelementptr i8, ptr %1, i64 40
  %15 = load i64, ptr %14, align 1
  %16 = trunc i64 %13 to i32
  %17 = lshr i32 %16, 8
  %18 = lshr i32 %16, 16
  %19 = lshr i32 %16, 24
  %20 = lshr i64 %13, 32
  %21 = trunc i64 %20 to i32
  %22 = lshr i64 %13, 40
  %23 = trunc i64 %22 to i32
  %24 = lshr i64 %13, 48
  %25 = trunc i64 %24 to i32
  %26 = lshr i64 %13, 56
  %27 = trunc i64 %26 to i32
  %28 = trunc i64 %15 to i32
  %29 = lshr i32 %28, 8
  %30 = lshr i32 %28, 16
  %31 = lshr i32 %28, 24
  %32 = lshr i64 %15, 32
  %33 = trunc i64 %32 to i32
  %34 = lshr i64 %15, 40
  %35 = trunc i64 %34 to i32
  %36 = lshr i64 %15, 48
  %37 = trunc i64 %36 to i32
  %38 = lshr i64 %15, 56
  %39 = trunc i64 %38 to i32
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %41 = shl i64 %40, 32
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds i8, ptr %2, i64 %42
  %44 = and i32 %18, 255
  %45 = and i32 %17, 255
  %46 = and i32 %16, 255
  %47 = and i32 %23, 255
  %48 = and i32 %21, 255
  %49 = and i32 %25, 255
  %50 = and i32 %28, 255
  %51 = and i32 %29, 255
  %52 = and i32 %30, 255
  %53 = and i32 %33, 255
  %54 = and i32 %35, 255
  %55 = and i32 %37, 255
  %56 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull @.str.195, i32 noundef %19, i32 noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef %27, i32 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %31, i32 noundef %53, i32 noundef %54, i32 noundef %55, i32 noundef %39) #18
  %57 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %58 = getelementptr i8, ptr %2, i64 %57
  store i16 58, ptr %58, align 1
  %59 = icmp eq i8 %6, -1
  br i1 %59, label %65, label %60

60:                                               ; preds = %3
  %61 = zext i8 %6 to i32
  %62 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %63 = getelementptr inbounds i8, ptr %2, i64 %62
  %64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %63, ptr noundef nonnull @.str.26, i32 noundef %61) #18
  br label %68

65:                                               ; preds = %3
  %66 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %67 = getelementptr inbounds i8, ptr %2, i64 %66
  store i16 42, ptr %67, align 1
  br label %68

68:                                               ; preds = %65, %60
  %69 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %70 = getelementptr i8, ptr %2, i64 %69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %70, ptr noundef nonnull align 1 dereferenceable(3) @.str.121, i64 3, i1 false)
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_rio_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = load i16, ptr %1, align 2, !tbaa !30
  %5 = getelementptr i8, ptr %1, i64 2
  %6 = load i16, ptr %5, align 2, !tbaa !30
  %7 = getelementptr i8, ptr %1, i64 4
  %8 = load i16, ptr %7, align 2, !tbaa !30
  %9 = getelementptr i8, ptr %1, i64 6
  %10 = load i16, ptr %9, align 2, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.196, i64 9, i1 false) #18
  %11 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %12 = getelementptr i8, ptr %2, i64 %11
  store i16 118, ptr %12, align 1
  %13 = icmp eq i16 %6, -1
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = zext i16 %6 to i32
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %17 = getelementptr inbounds i8, ptr %2, i64 %16
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull @.str.14, i32 noundef %15) #18
  br label %22

19:                                               ; preds = %3
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %21 = getelementptr inbounds i8, ptr %2, i64 %20
  store i16 42, ptr %21, align 1
  br label %22

22:                                               ; preds = %19, %14
  %23 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %24 = getelementptr i8, ptr %2, i64 %23
  store i16 100, ptr %24, align 1
  %25 = icmp eq i16 %4, -1
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = zext i16 %4 to i32
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %29 = getelementptr inbounds i8, ptr %2, i64 %28
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull @.str.14, i32 noundef %27) #18
  br label %34

31:                                               ; preds = %22
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %33 = getelementptr inbounds i8, ptr %2, i64 %32
  store i16 42, ptr %33, align 1
  br label %34

34:                                               ; preds = %31, %26
  %35 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %36 = getelementptr i8, ptr %2, i64 %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %36, ptr noundef nonnull align 1 dereferenceable(3) @.str.197, i64 3, i1 false)
  %37 = icmp eq i16 %10, -1
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = zext i16 %10 to i32
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %41 = getelementptr inbounds i8, ptr %2, i64 %40
  %42 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull @.str.14, i32 noundef %39) #18
  br label %46

43:                                               ; preds = %34
  %44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %45 = getelementptr inbounds i8, ptr %2, i64 %44
  store i16 42, ptr %45, align 1
  br label %46

46:                                               ; preds = %43, %38
  %47 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %48 = getelementptr i8, ptr %2, i64 %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %48, ptr noundef nonnull align 1 dereferenceable(3) @.str.198, i64 3, i1 false)
  %49 = icmp eq i16 %8, -1
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = zext i16 %8 to i32
  %52 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %53 = getelementptr inbounds i8, ptr %2, i64 %52
  %54 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull @.str.14, i32 noundef %51) #18
  br label %58

55:                                               ; preds = %46
  %56 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %57 = getelementptr inbounds i8, ptr %2, i64 %56
  store i16 42, ptr %57, align 1
  br label %58

58:                                               ; preds = %55, %50
  %59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %60 = shl i64 %59, 32
  %61 = add i64 %60, -4294967296
  %62 = ashr exact i64 %61, 32
  %63 = getelementptr inbounds i8, ptr %2, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !31
  %65 = icmp eq i8 %64, 42
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = ashr exact i64 %60, 32
  %68 = getelementptr inbounds i8, ptr %2, i64 %67
  %69 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %68) #18
  %70 = getelementptr i8, ptr %68, i64 %69
  store i16 42, ptr %70, align 1
  br label %71

71:                                               ; preds = %66, %58
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ulpi_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = load i16, ptr %1, align 2, !tbaa !30
  %5 = getelementptr i8, ptr %1, i64 2
  %6 = load i16, ptr %5, align 2, !tbaa !30
  %7 = zext i16 %4 to i32
  %8 = zext i16 %6 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.199, i32 noundef %7, i32 noundef %8) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_hda_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = load i32, ptr %1, align 4, !tbaa !16
  %5 = getelementptr i8, ptr %1, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !16
  %7 = getelementptr i8, ptr %1, i64 8
  %8 = load i8, ptr %7, align 1, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.200, i64 9, i1 false) #18
  %9 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %10 = getelementptr i8, ptr %2, i64 %9
  store i16 118, ptr %10, align 1
  %11 = icmp eq i32 %4, 0
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %13 = getelementptr inbounds i8, ptr %2, i64 %12
  br i1 %11, label %16, label %14

14:                                               ; preds = %3
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull @.str.90, i32 noundef %4) #18
  br label %17

16:                                               ; preds = %3
  store i16 42, ptr %13, align 1
  br label %17

17:                                               ; preds = %16, %14
  %18 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %19 = getelementptr i8, ptr %2, i64 %18
  store i16 114, ptr %19, align 1
  %20 = icmp eq i32 %6, 0
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %22 = getelementptr inbounds i8, ptr %2, i64 %21
  br i1 %20, label %25, label %23

23:                                               ; preds = %17
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull @.str.90, i32 noundef %6) #18
  br label %26

25:                                               ; preds = %17
  store i16 42, ptr %22, align 1
  br label %26

26:                                               ; preds = %25, %23
  %27 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %28 = getelementptr i8, ptr %2, i64 %27
  store i16 97, ptr %28, align 1
  %29 = icmp eq i8 %8, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = zext i8 %8 to i32
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %33 = getelementptr inbounds i8, ptr %2, i64 %32
  %34 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull @.str.26, i32 noundef %31) #18
  br label %38

35:                                               ; preds = %26
  %36 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %37 = getelementptr inbounds i8, ptr %2, i64 %36
  store i16 42, ptr %37, align 1
  br label %38

38:                                               ; preds = %35, %30
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %40 = shl i64 %39, 32
  %41 = add i64 %40, -4294967296
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !31
  %45 = icmp eq i8 %44, 42
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = ashr exact i64 %40, 32
  %48 = getelementptr inbounds i8, ptr %2, i64 %47
  %49 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %48) #18
  %50 = getelementptr i8, ptr %48, i64 %49
  store i16 42, ptr %50, align 1
  br label %51

51:                                               ; preds = %46, %38
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_sdw_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #10 {
  %4 = load i16, ptr %1, align 2, !tbaa !30
  %5 = getelementptr i8, ptr %1, i64 2
  %6 = load i16, ptr %5, align 2, !tbaa !30
  %7 = getelementptr i8, ptr %1, i64 4
  %8 = load i8, ptr %7, align 1, !tbaa !31
  %9 = getelementptr i8, ptr %1, i64 5
  %10 = load i8, ptr %9, align 1, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.203, i64 5, i1 false) #18
  %11 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %12 = getelementptr i8, ptr %2, i64 %11
  store i16 109, ptr %12, align 1
  %13 = icmp eq i16 %4, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = zext i16 %4 to i32
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %17 = getelementptr inbounds i8, ptr %2, i64 %16
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull @.str.14, i32 noundef %15) #18
  br label %22

19:                                               ; preds = %3
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %21 = getelementptr inbounds i8, ptr %2, i64 %20
  store i16 42, ptr %21, align 1
  br label %22

22:                                               ; preds = %19, %14
  %23 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %24 = getelementptr i8, ptr %2, i64 %23
  store i16 112, ptr %24, align 1
  %25 = icmp eq i16 %6, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = zext i16 %6 to i32
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %29 = getelementptr inbounds i8, ptr %2, i64 %28
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull @.str.14, i32 noundef %27) #18
  br label %34

31:                                               ; preds = %22
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %33 = getelementptr inbounds i8, ptr %2, i64 %32
  store i16 42, ptr %33, align 1
  br label %34

34:                                               ; preds = %31, %26
  %35 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %36 = getelementptr i8, ptr %2, i64 %35
  store i16 118, ptr %36, align 1
  %37 = icmp eq i8 %8, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = zext i8 %8 to i32
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %41 = getelementptr inbounds i8, ptr %2, i64 %40
  %42 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull @.str.26, i32 noundef %39) #18
  br label %46

43:                                               ; preds = %34
  %44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %45 = getelementptr inbounds i8, ptr %2, i64 %44
  store i16 42, ptr %45, align 1
  br label %46

46:                                               ; preds = %43, %38
  %47 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %48 = getelementptr i8, ptr %2, i64 %47
  store i16 99, ptr %48, align 1
  %49 = icmp eq i8 %10, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = zext i8 %10 to i32
  %52 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %53 = getelementptr inbounds i8, ptr %2, i64 %52
  %54 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull @.str.26, i32 noundef %51) #18
  br label %58

55:                                               ; preds = %46
  %56 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %57 = getelementptr inbounds i8, ptr %2, i64 %56
  store i16 42, ptr %57, align 1
  br label %58

58:                                               ; preds = %55, %50
  %59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %60 = shl i64 %59, 32
  %61 = add i64 %60, -4294967296
  %62 = ashr exact i64 %61, 32
  %63 = getelementptr inbounds i8, ptr %2, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !31
  %65 = icmp eq i8 %64, 42
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = ashr exact i64 %60, 32
  %68 = getelementptr inbounds i8, ptr %2, i64 %67
  %69 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %68) #18
  %70 = getelementptr i8, ptr %68, i64 %69
  store i16 42, ptr %70, align 1
  br label %71

71:                                               ; preds = %66, %58
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_fsl_mc_entry(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = load i16, ptr %1, align 2, !tbaa !30
  %5 = getelementptr i8, ptr %1, i64 2
  %6 = zext i16 %4 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.204, i32 noundef %6, ptr noundef %5) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_tbsvc_entry(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #10 {
  %4 = load i32, ptr %1, align 4, !tbaa !16
  %5 = getelementptr i8, ptr %1, i64 16
  %6 = load i32, ptr %5, align 4, !tbaa !16
  %7 = getelementptr i8, ptr %1, i64 20
  %8 = load i32, ptr %7, align 4, !tbaa !16
  %9 = getelementptr i8, ptr %1, i64 24
  %10 = load i32, ptr %9, align 4, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @.str.205, i64 7, i1 false) #18
  %11 = and i32 %4, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %1, i64 4
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %16 = getelementptr inbounds i8, ptr %2, i64 %15
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull @.str.206, ptr noundef %14) #18
  br label %23

18:                                               ; preds = %3
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %20 = getelementptr inbounds i8, ptr %2, i64 %19
  %21 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %20)
  %22 = getelementptr i8, ptr %20, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %22, ptr noundef nonnull align 1 dereferenceable(3) @.str.135, i64 3, i1 false)
  br label %23

23:                                               ; preds = %18, %13
  %24 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %25 = getelementptr i8, ptr %2, i64 %24
  store i16 112, ptr %25, align 1
  %26 = and i32 %4, 2
  %27 = icmp eq i32 %26, 0
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %29 = getelementptr inbounds i8, ptr %2, i64 %28
  br i1 %27, label %32, label %30

30:                                               ; preds = %23
  %31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull @.str.90, i32 noundef %6) #18
  br label %33

32:                                               ; preds = %23
  store i16 42, ptr %29, align 1
  br label %33

33:                                               ; preds = %32, %30
  %34 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %35 = getelementptr i8, ptr %2, i64 %34
  store i16 118, ptr %35, align 1
  %36 = and i32 %4, 4
  %37 = icmp eq i32 %36, 0
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %39 = getelementptr inbounds i8, ptr %2, i64 %38
  br i1 %37, label %42, label %40

40:                                               ; preds = %33
  %41 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull @.str.90, i32 noundef %8) #18
  br label %43

42:                                               ; preds = %33
  store i16 42, ptr %39, align 1
  br label %43

43:                                               ; preds = %42, %40
  %44 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %45 = getelementptr i8, ptr %2, i64 %44
  store i16 114, ptr %45, align 1
  %46 = and i32 %4, 8
  %47 = icmp eq i32 %46, 0
  %48 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %49 = getelementptr inbounds i8, ptr %2, i64 %48
  br i1 %47, label %52, label %50

50:                                               ; preds = %43
  %51 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull @.str.90, i32 noundef %10) #18
  br label %53

52:                                               ; preds = %43
  store i16 42, ptr %49, align 1
  br label %53

53:                                               ; preds = %52, %50
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %55 = shl i64 %54, 32
  %56 = add i64 %55, -4294967296
  %57 = ashr exact i64 %56, 32
  %58 = getelementptr inbounds i8, ptr %2, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !31
  %60 = icmp eq i8 %59, 42
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = ashr exact i64 %55, 32
  %63 = getelementptr inbounds i8, ptr %2, i64 %62
  %64 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %63) #18
  %65 = getelementptr i8, ptr %63, i64 %64
  store i16 42, ptr %65, align 1
  br label %66

66:                                               ; preds = %61, %53
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_typec_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #10 {
  %4 = load i16, ptr %1, align 2, !tbaa !30
  %5 = getelementptr i8, ptr %1, i64 2
  %6 = load i8, ptr %5, align 1, !tbaa !31
  %7 = zext i16 %4 to i32
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.207, i32 noundef %7) #18
  %9 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %10 = getelementptr i8, ptr %2, i64 %9
  store i16 109, ptr %10, align 1
  %11 = icmp eq i8 %6, 7
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = zext i8 %6 to i32
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %15 = getelementptr inbounds i8, ptr %2, i64 %14
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull @.str.26, i32 noundef %13) #18
  br label %20

17:                                               ; preds = %3
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %19 = getelementptr inbounds i8, ptr %2, i64 %18
  store i16 42, ptr %19, align 1
  br label %20

20:                                               ; preds = %17, %12
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_tee_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #10 {
  %4 = load i8, ptr %1, align 1, !tbaa.struct !39
  %5 = getelementptr inbounds i8, ptr %1, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa.struct !40
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa.struct !41
  %9 = getelementptr inbounds i8, ptr %1, i64 3
  %10 = load i8, ptr %9, align 1, !tbaa.struct !42
  %11 = getelementptr inbounds i8, ptr %1, i64 4
  %12 = load i8, ptr %11, align 1, !tbaa.struct !43
  %13 = getelementptr inbounds i8, ptr %1, i64 5
  %14 = load i8, ptr %13, align 1, !tbaa.struct !44
  %15 = getelementptr inbounds i8, ptr %1, i64 6
  %16 = load i8, ptr %15, align 1, !tbaa.struct !45
  %17 = getelementptr inbounds i8, ptr %1, i64 7
  %18 = load i8, ptr %17, align 1, !tbaa.struct !46
  %19 = getelementptr inbounds i8, ptr %1, i64 8
  %20 = load i8, ptr %19, align 1, !tbaa.struct !47
  %21 = getelementptr inbounds i8, ptr %1, i64 9
  %22 = load i8, ptr %21, align 1, !tbaa.struct !48
  %23 = getelementptr inbounds i8, ptr %1, i64 10
  %24 = load i8, ptr %23, align 1, !tbaa.struct !49
  %25 = getelementptr inbounds i8, ptr %1, i64 11
  %26 = load i8, ptr %25, align 1, !tbaa.struct !50
  %27 = getelementptr inbounds i8, ptr %1, i64 12
  %28 = load i8, ptr %27, align 1, !tbaa.struct !51
  %29 = getelementptr inbounds i8, ptr %1, i64 13
  %30 = load i8, ptr %29, align 1, !tbaa.struct !52
  %31 = getelementptr inbounds i8, ptr %1, i64 14
  %32 = load i8, ptr %31, align 1, !tbaa.struct !53
  %33 = getelementptr inbounds i8, ptr %1, i64 15
  %34 = load i8, ptr %33, align 1, !tbaa.struct !54
  %35 = zext i8 %4 to i32
  %36 = zext i8 %6 to i32
  %37 = zext i8 %8 to i32
  %38 = zext i8 %10 to i32
  %39 = zext i8 %12 to i32
  %40 = zext i8 %14 to i32
  %41 = zext i8 %16 to i32
  %42 = zext i8 %18 to i32
  %43 = zext i8 %20 to i32
  %44 = zext i8 %22 to i32
  %45 = zext i8 %24 to i32
  %46 = zext i8 %26 to i32
  %47 = zext i8 %28 to i32
  %48 = zext i8 %30 to i32
  %49 = zext i8 %32 to i32
  %50 = zext i8 %34 to i32
  %51 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.208, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef %50) #18
  %52 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %53 = shl i64 %52, 32
  %54 = add i64 %53, -4294967296
  %55 = ashr exact i64 %54, 32
  %56 = getelementptr inbounds i8, ptr %2, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !31
  %58 = icmp eq i8 %57, 42
  br i1 %58, label %64, label %59

59:                                               ; preds = %3
  %60 = ashr exact i64 %53, 32
  %61 = getelementptr inbounds i8, ptr %2, i64 %60
  %62 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %61) #18
  %63 = getelementptr i8, ptr %61, i64 %62
  store i16 42, ptr %63, align 1
  br label %64

64:                                               ; preds = %59, %3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @do_wmi_entry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %5 = icmp eq i64 %4, 36
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.209, ptr noundef %1, ptr noundef %0) #18
  br label %11

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 500, ptr noundef nonnull @.str.210, ptr noundef %1) #18
  %9 = icmp ugt i32 %8, 499
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.211, ptr noundef %0) #18
  br label %11

11:                                               ; preds = %10, %7, %6
  %12 = phi i32 [ 0, %6 ], [ 0, %10 ], [ 1, %7 ]
  ret i32 %12
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_mhi_entry(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.212, ptr noundef %1) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_auxiliary_entry(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.213, ptr noundef %1) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ssam_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #10 {
  %4 = load i8, ptr %1, align 1, !tbaa !31
  %5 = getelementptr i8, ptr %1, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !31
  %7 = getelementptr i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !31
  %9 = getelementptr i8, ptr %1, i64 3
  %10 = load i8, ptr %9, align 1, !tbaa !31
  %11 = getelementptr i8, ptr %1, i64 4
  %12 = load i8, ptr %11, align 1, !tbaa !31
  %13 = getelementptr i8, ptr %1, i64 5
  %14 = load i8, ptr %13, align 1, !tbaa !31
  %15 = zext i8 %6 to i32
  %16 = zext i8 %8 to i32
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.214, i32 noundef %15, i32 noundef %16) #18
  %18 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %19 = getelementptr i8, ptr %2, i64 %18
  store i16 116, ptr %19, align 1
  %20 = zext i8 %4 to i32
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %24 = getelementptr inbounds i8, ptr %2, i64 %23
  br i1 %22, label %28, label %25

25:                                               ; preds = %3
  %26 = zext i8 %10 to i32
  %27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull @.str.26, i32 noundef %26) #18
  br label %29

28:                                               ; preds = %3
  store i16 42, ptr %24, align 1
  br label %29

29:                                               ; preds = %28, %25
  %30 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %31 = getelementptr i8, ptr %2, i64 %30
  store i16 105, ptr %31, align 1
  %32 = and i32 %20, 2
  %33 = icmp eq i32 %32, 0
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %35 = getelementptr inbounds i8, ptr %2, i64 %34
  br i1 %33, label %39, label %36

36:                                               ; preds = %29
  %37 = zext i8 %12 to i32
  %38 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull @.str.26, i32 noundef %37) #18
  br label %40

39:                                               ; preds = %29
  store i16 42, ptr %35, align 1
  br label %40

40:                                               ; preds = %39, %36
  %41 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %42 = getelementptr i8, ptr %2, i64 %41
  store i16 102, ptr %42, align 1
  %43 = and i32 %20, 4
  %44 = icmp eq i32 %43, 0
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %46 = getelementptr inbounds i8, ptr %2, i64 %45
  br i1 %44, label %50, label %47

47:                                               ; preds = %40
  %48 = zext i8 %14 to i32
  %49 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull @.str.26, i32 noundef %48) #18
  br label %51

50:                                               ; preds = %40
  store i16 42, ptr %46, align 1
  br label %51

51:                                               ; preds = %50, %47
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_dfl_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #10 {
  %4 = load i16, ptr %1, align 2, !tbaa !30
  %5 = getelementptr i8, ptr %1, i64 2
  %6 = load i16, ptr %5, align 2, !tbaa !30
  %7 = zext i16 %4 to i32
  %8 = zext i16 %6 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull @.str.215, i32 noundef %7, i32 noundef %8) #18
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %11 = shl i64 %10, 32
  %12 = add i64 %11, -4294967296
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds i8, ptr %2, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !31
  %16 = icmp eq i8 %15, 42
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = ashr exact i64 %11, 32
  %19 = getelementptr inbounds i8, ptr %2, i64 %18
  %20 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %19) #18
  %21 = getelementptr i8, ptr %19, i64 %20
  store i16 42, ptr %21, align 1
  br label %22

22:                                               ; preds = %17, %3
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ishtp_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #10 {
  %4 = load i64, ptr %1, align 1, !tbaa.struct !39
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 1, !tbaa.struct !47
  store i64 34685676799161193, ptr %2, align 1
  %7 = trunc i64 %4 to i32
  %8 = lshr i32 %7, 8
  %9 = lshr i32 %7, 16
  %10 = lshr i32 %7, 24
  %11 = lshr i64 %4, 32
  %12 = trunc i64 %11 to i32
  %13 = lshr i64 %4, 40
  %14 = trunc i64 %13 to i32
  %15 = lshr i64 %4, 48
  %16 = trunc i64 %15 to i32
  %17 = lshr i64 %4, 56
  %18 = trunc i64 %17 to i32
  %19 = trunc i64 %6 to i32
  %20 = lshr i32 %19, 8
  %21 = lshr i32 %19, 16
  %22 = lshr i32 %19, 24
  %23 = lshr i64 %6, 32
  %24 = trunc i64 %23 to i32
  %25 = lshr i64 %6, 40
  %26 = trunc i64 %25 to i32
  %27 = lshr i64 %6, 48
  %28 = trunc i64 %27 to i32
  %29 = lshr i64 %6, 56
  %30 = trunc i64 %29 to i32
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %32 = shl i64 %31, 32
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds i8, ptr %2, i64 %33
  %35 = and i32 %9, 255
  %36 = and i32 %8, 255
  %37 = and i32 %7, 255
  %38 = and i32 %14, 255
  %39 = and i32 %12, 255
  %40 = and i32 %16, 255
  %41 = and i32 %19, 255
  %42 = and i32 %20, 255
  %43 = and i32 %21, 255
  %44 = and i32 %24, 255
  %45 = and i32 %26, 255
  %46 = and i32 %28, 255
  %47 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull @.str.218, i32 noundef %10, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39, i32 noundef %18, i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %22, i32 noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %30) #18
  %48 = tail call i64 @strlen(ptr nonnull %2)
  %49 = getelementptr i8, ptr %2, i64 %48
  store i16 125, ptr %49, align 1
  ret i32 1
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #14

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { argmemonly nofree nounwind willreturn }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { nounwind }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !10, i64 14}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 12, !8, i64 13, !10, i64 14}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!12, !14, i64 80}
!12 = !{!"elf_info", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !10, i64 40, !10, i64 42, !14, i64 48, !14, i64 56, !7, i64 64, !7, i64 68, !7, i64 72, !14, i64 80, !14, i64 88}
!13 = !{!"long", !8, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!12, !14, i64 24}
!16 = !{!7, !7, i64 0}
!17 = !{!12, !7, i64 68}
!18 = !{!6, !8, i64 12}
!19 = !{!12, !14, i64 16}
!20 = !{!21, !7, i64 4}
!21 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36}
!22 = !{!6, !7, i64 8}
!23 = !{!12, !14, i64 8}
!24 = !{!21, !7, i64 16}
!25 = !{!6, !7, i64 4}
!26 = !{!27, !14, i64 0}
!27 = !{!"devtable", !14, i64 0, !13, i64 8, !14, i64 16}
!28 = !{!27, !13, i64 8}
!29 = !{!27, !14, i64 16}
!30 = !{!10, !10, i64 0}
!31 = !{!8, !8, i64 0}
!32 = !{!14, !14, i64 0}
!33 = !{!34, !14, i64 0}
!34 = !{!"buffer", !14, i64 0, !7, i64 8, !7, i64 12}
!35 = !{!34, !7, i64 8}
!36 = !{!37, !7, i64 8}
!37 = !{!"dmifield", !14, i64 0, !7, i64 8}
!38 = !{!37, !14, i64 0}
!39 = !{i64 0, i64 16, !31}
!40 = !{i64 0, i64 15, !31}
!41 = !{i64 0, i64 14, !31}
!42 = !{i64 0, i64 13, !31}
!43 = !{i64 0, i64 12, !31}
!44 = !{i64 0, i64 11, !31}
!45 = !{i64 0, i64 10, !31}
!46 = !{i64 0, i64 9, !31}
!47 = !{i64 0, i64 8, !31}
!48 = !{i64 0, i64 7, !31}
!49 = !{i64 0, i64 6, !31}
!50 = !{i64 0, i64 5, !31}
!51 = !{i64 0, i64 4, !31}
!52 = !{i64 0, i64 3, !31}
!53 = !{i64 0, i64 2, !31}
!54 = !{i64 0, i64 1, !31}
