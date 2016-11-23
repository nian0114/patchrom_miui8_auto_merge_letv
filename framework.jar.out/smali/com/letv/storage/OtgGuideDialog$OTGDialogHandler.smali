.class Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;
.super Landroid/os/Handler;
.source "OtgGuideDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/storage/OtgGuideDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OTGDialogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/storage/OtgGuideDialog;


# direct methods
.method constructor <init>(Lcom/letv/storage/OtgGuideDialog;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    .line 94
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 95
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 99
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 100
    new-instance v4, Lcom/letv/storage/OtgGuideDialog$mountStorageListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3}, Lcom/letv/storage/OtgGuideDialog$mountStorageListener;-><init>(Lcom/letv/storage/OtgGuideDialog;Lcom/letv/storage/OtgGuideDialog$1;)V

    .line 101
    .local v4, "okButton":Lcom/letv/storage/OtgGuideDialog$mountStorageListener;
    new-instance v5, Lcom/letv/storage/OtgGuideDialog$cancelListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3}, Lcom/letv/storage/OtgGuideDialog$cancelListener;-><init>(Lcom/letv/storage/OtgGuideDialog;Lcom/letv/storage/OtgGuideDialog$1;)V

    .line 102
    .local v5, "cancelButton":Lcom/letv/storage/OtgGuideDialog$cancelListener;
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .line 103
    .local v7, "ButtonText":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    # getter for: Lcom/letv/storage/OtgGuideDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/letv/storage/OtgGuideDialog;->access$200(Lcom/letv/storage/OtgGuideDialog;)Landroid/content/Context;

    move-result-object v3

    const v6, 0x10406de

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 104
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    # getter for: Lcom/letv/storage/OtgGuideDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/letv/storage/OtgGuideDialog;->access$200(Lcom/letv/storage/OtgGuideDialog;)Landroid/content/Context;

    move-result-object v3

    const v6, 0x10406df

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    iget-boolean v2, v2, Lcom/letv/storage/OtgGuideDialog;->OtgStorage:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    # getter for: Lcom/letv/storage/OtgGuideDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/letv/storage/OtgGuideDialog;->access$200(Lcom/letv/storage/OtgGuideDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x10406e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, "browseStorageText":Ljava/lang/String;
    :goto_0
    const v13, -0xdc6a12

    .line 107
    .local v13, "COLOR_BLUE":I
    move v11, v13

    .line 108
    .local v11, "TextColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    new-instance v3, Lcom/letv/leui/widget/LeBottomSheet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    # getter for: Lcom/letv/storage/OtgGuideDialog;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/letv/storage/OtgGuideDialog;->access$200(Lcom/letv/storage/OtgGuideDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;
    invoke-static {v2, v3}, Lcom/letv/storage/OtgGuideDialog;->access$302(Lcom/letv/storage/OtgGuideDialog;Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet;

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    # getter for: Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;
    invoke-static {v2}, Lcom/letv/storage/OtgGuideDialog;->access$300(Lcom/letv/storage/OtgGuideDialog;)Lcom/letv/leui/widget/LeBottomSheet;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IZ)V

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    # getter for: Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;
    invoke-static {v2}, Lcom/letv/storage/OtgGuideDialog;->access$300(Lcom/letv/storage/OtgGuideDialog;)Lcom/letv/leui/widget/LeBottomSheet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->getmDialog()Landroid/app/Dialog;

    move-result-object v17

    .line 112
    .local v17, "mDialog":Landroid/app/Dialog;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 113
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 114
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x20000

    const/high16 v6, 0x20000

    invoke-virtual {v2, v3, v6}, Landroid/view/Window;->setFlags(II)V

    .line 116
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 117
    .local v14, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x110

    iput v2, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 119
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    # invokes: Lcom/letv/storage/OtgGuideDialog;->appear()V
    invoke-static {v2}, Lcom/letv/storage/OtgGuideDialog;->access$400(Lcom/letv/storage/OtgGuideDialog;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    iget-object v2, v2, Lcom/letv/storage/OtgGuideDialog;->mHandler:Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    iget-object v3, v3, Lcom/letv/storage/OtgGuideDialog;->mHandler:Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v18, 0x1b58

    move-wide/from16 v0, v18

    invoke-virtual {v2, v3, v0, v1}, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 152
    .end local v4    # "okButton":Lcom/letv/storage/OtgGuideDialog$mountStorageListener;
    .end local v5    # "cancelButton":Lcom/letv/storage/OtgGuideDialog$cancelListener;
    .end local v7    # "ButtonText":[Ljava/lang/String;
    .end local v9    # "browseStorageText":Ljava/lang/String;
    .end local v11    # "TextColor":I
    .end local v13    # "COLOR_BLUE":I
    .end local v14    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v17    # "mDialog":Landroid/app/Dialog;
    :goto_1
    return-void

    .line 105
    .restart local v4    # "okButton":Lcom/letv/storage/OtgGuideDialog$mountStorageListener;
    .restart local v5    # "cancelButton":Lcom/letv/storage/OtgGuideDialog$cancelListener;
    .restart local v7    # "ButtonText":[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    # getter for: Lcom/letv/storage/OtgGuideDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/letv/storage/OtgGuideDialog;->access$200(Lcom/letv/storage/OtgGuideDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x10406e0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 124
    .end local v4    # "okButton":Lcom/letv/storage/OtgGuideDialog$mountStorageListener;
    .end local v5    # "cancelButton":Lcom/letv/storage/OtgGuideDialog$cancelListener;
    .end local v7    # "ButtonText":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    # invokes: Lcom/letv/storage/OtgGuideDialog;->disappear()V
    invoke-static {v2}, Lcom/letv/storage/OtgGuideDialog;->access$500(Lcom/letv/storage/OtgGuideDialog;)V

    goto :goto_1

    .line 126
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    # invokes: Lcom/letv/storage/OtgGuideDialog;->disappear()V
    invoke-static {v2}, Lcom/letv/storage/OtgGuideDialog;->access$500(Lcom/letv/storage/OtgGuideDialog;)V

    goto :goto_1

    .line 128
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    iget-object v2, v2, Lcom/letv/storage/OtgGuideDialog;->mHandler:Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->sendEmptyMessage(I)Z

    .line 130
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v16, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.letv.android.filemanager"

    const-string v6, "com.letv.android.filemanager.activities.MainActivity"

    invoke-direct {v2, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    # getter for: Lcom/letv/storage/OtgGuideDialog;->PATH:Ljava/lang/String;
    invoke-static {v2}, Lcom/letv/storage/OtgGuideDialog;->access$600(Lcom/letv/storage/OtgGuideDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 133
    const/high16 v2, 0x10000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    # getter for: Lcom/letv/storage/OtgGuideDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/letv/storage/OtgGuideDialog;->access$200(Lcom/letv/storage/OtgGuideDialog;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 139
    const-string v2, "StorageDefaultPathDialog"

    const-string v3, "OtgGuideDialog startActivity start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->this$0:Lcom/letv/storage/OtgGuideDialog;

    # getter for: Lcom/letv/storage/OtgGuideDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/letv/storage/OtgGuideDialog;->access$200(Lcom/letv/storage/OtgGuideDialog;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 141
    const-string v2, "StorageDefaultPathDialog"

    const-string v3, "OtgGuideDialog startActivity end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 145
    :catch_0
    move-exception v15

    .line 146
    .local v15, "e":Ljava/lang/Exception;
    const-string v2, "StorageDefaultPathDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OtgGuideDialog startActivity : Exception"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 143
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string v2, "StorageDefaultPathDialog"

    const-string v3, "OtgGuideDialog startActivity failed: mContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 150
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v2, "StorageDefaultPathDialog"

    const-string v3, "OtgGuideDialog : unknow action"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
