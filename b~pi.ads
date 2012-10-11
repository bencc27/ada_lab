pragma Ada_95;
with System;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 4.4.3" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_pi" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure Break_Start;
   pragma Import (C, Break_Start, "__gnat_break_start");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#9155dc21#;
   u00002 : constant Version_32 := 16#4b33036a#;
   u00003 : constant Version_32 := 16#03570e27#;
   u00004 : constant Version_32 := 16#9c7dd3ea#;
   u00005 : constant Version_32 := 16#352d93cc#;
   u00006 : constant Version_32 := 16#eaa55474#;
   u00007 : constant Version_32 := 16#9201cee0#;
   u00008 : constant Version_32 := 16#e3d85f73#;
   u00009 : constant Version_32 := 16#df55302f#;
   u00010 : constant Version_32 := 16#b6c89fbe#;
   u00011 : constant Version_32 := 16#430a8d84#;
   u00012 : constant Version_32 := 16#2ea84b20#;
   u00013 : constant Version_32 := 16#2c7b66c6#;
   u00014 : constant Version_32 := 16#6ad13d41#;
   u00015 : constant Version_32 := 16#496d6bfd#;
   u00016 : constant Version_32 := 16#55ef7c79#;
   u00017 : constant Version_32 := 16#32c35ddc#;
   u00018 : constant Version_32 := 16#e1e7b9d6#;
   u00019 : constant Version_32 := 16#17b86634#;
   u00020 : constant Version_32 := 16#fcfb2939#;
   u00021 : constant Version_32 := 16#d1fec254#;
   u00022 : constant Version_32 := 16#1a63fe0c#;
   u00023 : constant Version_32 := 16#a9f5773f#;
   u00024 : constant Version_32 := 16#5b8b9839#;
   u00025 : constant Version_32 := 16#cfea76ef#;
   u00026 : constant Version_32 := 16#b871c253#;
   u00027 : constant Version_32 := 16#5b0a42fd#;
   u00028 : constant Version_32 := 16#9e37526b#;
   u00029 : constant Version_32 := 16#ad9b204c#;
   u00030 : constant Version_32 := 16#9c49ee35#;
   u00031 : constant Version_32 := 16#b53be4c7#;
   u00032 : constant Version_32 := 16#1faccaca#;
   u00033 : constant Version_32 := 16#743d3d0d#;
   u00034 : constant Version_32 := 16#7457b7b6#;
   u00035 : constant Version_32 := 16#ccde3404#;
   u00036 : constant Version_32 := 16#f020f847#;
   u00037 : constant Version_32 := 16#2c57c517#;
   u00038 : constant Version_32 := 16#ffc4bcd0#;
   u00039 : constant Version_32 := 16#a69cad5c#;
   u00040 : constant Version_32 := 16#300a43f3#;
   u00041 : constant Version_32 := 16#d4ede0a0#;
   u00042 : constant Version_32 := 16#99c8a881#;
   u00043 : constant Version_32 := 16#620a177c#;
   u00044 : constant Version_32 := 16#808e35e2#;
   u00045 : constant Version_32 := 16#f6ee8365#;
   u00046 : constant Version_32 := 16#111efa70#;
   u00047 : constant Version_32 := 16#5056e8dd#;
   u00048 : constant Version_32 := 16#e3f7d8cd#;
   u00049 : constant Version_32 := 16#8213b492#;
   u00050 : constant Version_32 := 16#857b4d43#;
   u00051 : constant Version_32 := 16#44c7af1b#;
   u00052 : constant Version_32 := 16#4ecf232b#;
   u00053 : constant Version_32 := 16#96ac68ca#;
   u00054 : constant Version_32 := 16#17b3b4c9#;
   u00055 : constant Version_32 := 16#a8d17654#;
   u00056 : constant Version_32 := 16#62e56d2b#;
   u00057 : constant Version_32 := 16#de0efd54#;
   u00058 : constant Version_32 := 16#b5095267#;
   u00059 : constant Version_32 := 16#6c2c3694#;
   u00060 : constant Version_32 := 16#f7ba4e54#;
   u00061 : constant Version_32 := 16#fcec4850#;
   u00062 : constant Version_32 := 16#16dfe486#;
   u00063 : constant Version_32 := 16#6d0998e1#;
   u00064 : constant Version_32 := 16#ae11f1b2#;
   u00065 : constant Version_32 := 16#31db65a3#;
   u00066 : constant Version_32 := 16#e362cd34#;
   u00067 : constant Version_32 := 16#293ff6f7#;
   u00068 : constant Version_32 := 16#d1a8db44#;
   u00069 : constant Version_32 := 16#2461b049#;
   u00070 : constant Version_32 := 16#0aa29e81#;
   u00071 : constant Version_32 := 16#2274d34a#;
   u00072 : constant Version_32 := 16#59507545#;
   u00073 : constant Version_32 := 16#e98c0dd7#;
   u00074 : constant Version_32 := 16#6a4966d7#;
   u00075 : constant Version_32 := 16#756d8fec#;
   u00076 : constant Version_32 := 16#3f280002#;
   u00077 : constant Version_32 := 16#07c1a032#;
   u00078 : constant Version_32 := 16#18dd447c#;
   u00079 : constant Version_32 := 16#923573c8#;
   u00080 : constant Version_32 := 16#183b4446#;
   u00081 : constant Version_32 := 16#3a4fe8af#;
   u00082 : constant Version_32 := 16#30a049ba#;
   u00083 : constant Version_32 := 16#b8ac4cbc#;
   u00084 : constant Version_32 := 16#2f3f02be#;
   u00085 : constant Version_32 := 16#8d02aab0#;
   u00086 : constant Version_32 := 16#05dd82d0#;
   u00087 : constant Version_32 := 16#3f8868cc#;
   u00088 : constant Version_32 := 16#3e7d115b#;
   u00089 : constant Version_32 := 16#d2063e17#;
   u00090 : constant Version_32 := 16#9b936ce6#;
   u00091 : constant Version_32 := 16#ebb981e3#;
   u00092 : constant Version_32 := 16#ff8ad92b#;
   u00093 : constant Version_32 := 16#c9db2a5e#;
   u00094 : constant Version_32 := 16#3b930a7c#;
   u00095 : constant Version_32 := 16#e0683b80#;
   u00096 : constant Version_32 := 16#9887b724#;
   u00097 : constant Version_32 := 16#aca0f2c0#;
   u00098 : constant Version_32 := 16#a71c6951#;
   u00099 : constant Version_32 := 16#e16fd72a#;
   u00100 : constant Version_32 := 16#69cfe151#;
   u00101 : constant Version_32 := 16#aa31e0d9#;
   u00102 : constant Version_32 := 16#82bd3c91#;
   u00103 : constant Version_32 := 16#842c78ec#;
   u00104 : constant Version_32 := 16#db027b4b#;

   pragma Export (C, u00001, "piB");
   pragma Export (C, u00002, "system__standard_libraryB");
   pragma Export (C, u00003, "system__standard_libraryS");
   pragma Export (C, u00004, "adaS");
   pragma Export (C, u00005, "ada__exceptionsB");
   pragma Export (C, u00006, "ada__exceptionsS");
   pragma Export (C, u00007, "ada__exceptions__last_chance_handlerB");
   pragma Export (C, u00008, "ada__exceptions__last_chance_handlerS");
   pragma Export (C, u00009, "systemS");
   pragma Export (C, u00010, "system__soft_linksB");
   pragma Export (C, u00011, "system__soft_linksS");
   pragma Export (C, u00012, "system__parametersB");
   pragma Export (C, u00013, "system__parametersS");
   pragma Export (C, u00014, "system__secondary_stackB");
   pragma Export (C, u00015, "system__secondary_stackS");
   pragma Export (C, u00016, "system__storage_elementsB");
   pragma Export (C, u00017, "system__storage_elementsS");
   pragma Export (C, u00018, "system__stack_checkingB");
   pragma Export (C, u00019, "system__stack_checkingS");
   pragma Export (C, u00020, "system__exception_tableB");
   pragma Export (C, u00021, "system__exception_tableS");
   pragma Export (C, u00022, "system__htableB");
   pragma Export (C, u00023, "system__htableS");
   pragma Export (C, u00024, "system__exceptionsB");
   pragma Export (C, u00025, "system__exceptionsS");
   pragma Export (C, u00026, "system__string_opsB");
   pragma Export (C, u00027, "system__string_opsS");
   pragma Export (C, u00028, "system__string_ops_concat_3B");
   pragma Export (C, u00029, "system__string_ops_concat_3S");
   pragma Export (C, u00030, "system__tracebackB");
   pragma Export (C, u00031, "system__tracebackS");
   pragma Export (C, u00032, "system__unsigned_typesS");
   pragma Export (C, u00033, "system__wch_conB");
   pragma Export (C, u00034, "system__wch_conS");
   pragma Export (C, u00035, "system__wch_stwB");
   pragma Export (C, u00036, "system__wch_stwS");
   pragma Export (C, u00037, "system__wch_cnvB");
   pragma Export (C, u00038, "system__wch_cnvS");
   pragma Export (C, u00039, "interfacesS");
   pragma Export (C, u00040, "system__wch_jisB");
   pragma Export (C, u00041, "system__wch_jisS");
   pragma Export (C, u00042, "system__traceback_entriesB");
   pragma Export (C, u00043, "system__traceback_entriesS");
   pragma Export (C, u00044, "ada__numericsS");
   pragma Export (C, u00045, "ada__tagsB");
   pragma Export (C, u00046, "ada__tagsS");
   pragma Export (C, u00047, "system__val_lluB");
   pragma Export (C, u00048, "system__val_lluS");
   pragma Export (C, u00049, "system__val_utilB");
   pragma Export (C, u00050, "system__val_utilS");
   pragma Export (C, u00051, "system__case_utilB");
   pragma Export (C, u00052, "system__case_utilS");
   pragma Export (C, u00053, "ada__text_ioB");
   pragma Export (C, u00054, "ada__text_ioS");
   pragma Export (C, u00055, "ada__streamsS");
   pragma Export (C, u00056, "interfaces__c_streamsB");
   pragma Export (C, u00057, "interfaces__c_streamsS");
   pragma Export (C, u00058, "system__crtlS");
   pragma Export (C, u00059, "system__file_ioB");
   pragma Export (C, u00060, "system__file_ioS");
   pragma Export (C, u00061, "ada__finalizationB");
   pragma Export (C, u00062, "ada__finalizationS");
   pragma Export (C, u00063, "system__finalization_rootB");
   pragma Export (C, u00064, "system__finalization_rootS");
   pragma Export (C, u00065, "system__finalization_implementationB");
   pragma Export (C, u00066, "system__finalization_implementationS");
   pragma Export (C, u00067, "system__restrictionsB");
   pragma Export (C, u00068, "system__restrictionsS");
   pragma Export (C, u00069, "system__stream_attributesB");
   pragma Export (C, u00070, "system__stream_attributesS");
   pragma Export (C, u00071, "ada__io_exceptionsS");
   pragma Export (C, u00072, "interfaces__cB");
   pragma Export (C, u00073, "interfaces__cS");
   pragma Export (C, u00074, "system__os_libB");
   pragma Export (C, u00075, "system__os_libS");
   pragma Export (C, u00076, "system__stringsB");
   pragma Export (C, u00077, "system__stringsS");
   pragma Export (C, u00078, "system__file_control_blockS");
   pragma Export (C, u00079, "ada__finalization__list_controllerB");
   pragma Export (C, u00080, "ada__finalization__list_controllerS");
   pragma Export (C, u00081, "ada__text_io__float_auxB");
   pragma Export (C, u00082, "ada__text_io__float_auxS");
   pragma Export (C, u00083, "ada__text_io__generic_auxB");
   pragma Export (C, u00084, "ada__text_io__generic_auxS");
   pragma Export (C, u00085, "system__img_realB");
   pragma Export (C, u00086, "system__img_realS");
   pragma Export (C, u00087, "system__fat_llfS");
   pragma Export (C, u00088, "system__img_lluB");
   pragma Export (C, u00089, "system__img_lluS");
   pragma Export (C, u00090, "system__img_unsB");
   pragma Export (C, u00091, "system__img_unsS");
   pragma Export (C, u00092, "system__powten_tableS");
   pragma Export (C, u00093, "system__val_realB");
   pragma Export (C, u00094, "system__val_realS");
   pragma Export (C, u00095, "system__exn_llfB");
   pragma Export (C, u00096, "system__exn_llfS");
   pragma Export (C, u00097, "system__arith_64B");
   pragma Export (C, u00098, "system__arith_64S");
   pragma Export (C, u00099, "system__exp_lliB");
   pragma Export (C, u00100, "system__exp_lliS");
   pragma Export (C, u00101, "system__fat_fltS");
   pragma Export (C, u00102, "text_ioS");
   pragma Export (C, u00103, "system__memoryB");
   pragma Export (C, u00104, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  system.arith_64%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.exn_llf%s
   --  system.exn_llf%b
   --  system.exp_lli%s
   --  system.exp_lli%b
   --  system.htable%s
   --  system.htable%b
   --  system.img_real%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_table%s
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.standard_library%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.secondary_stack%s
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_ops%s
   --  system.string_ops%b
   --  system.string_ops_concat_3%s
   --  system.string_ops_concat_3%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.arith_64%b
   --  ada.exceptions.last_chance_handler%s
   --  system.soft_links%s
   --  system.soft_links%b
   --  ada.exceptions.last_chance_handler%b
   --  system.secondary_stack%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.numerics%s
   --  ada.tags%s
   --  ada.streams%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.os_lib%s
   --  system.os_lib%b
   --  system.unsigned_types%s
   --  system.fat_flt%s
   --  system.fat_llf%s
   --  system.img_llu%s
   --  system.img_llu%b
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.img_real%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.finalization_implementation%s
   --  system.finalization_implementation%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  ada.finalization.list_controller%s
   --  ada.finalization.list_controller%b
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.file_io%b
   --  system.val_llu%s
   --  system.val_real%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_real%b
   --  system.val_llu%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.tags%b
   --  ada.exceptions%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.text_io.float_aux%s
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.float_aux%b
   --  text_io%s
   --  pi%b
   --  END ELABORATION ORDER

end ada_main;
