.class public Lcom/letv/leui/widget/LeLicenceDialog;
.super Ljava/lang/Object;
.source "LeLicenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;,
        Lcom/letv/leui/widget/LeLicenceDialog$KEY;
    }
.end annotation


# static fields
.field public static final OVER_SEA_FEATURE:Ljava/lang/String; = "shared.widget.reference_to_oversea_libs"

.field public static final TYPE1_CONTACT_LOCATION_NET:I = 0xf

.field public static final TYPE1_CONTACT_LOCATION_NET_CALLLOG:I = 0x10

.field public static final TYPE1_CONTACT_NET:I = 0xe

.field public static final TYPE1_LOCATION_NET:I = 0xd

.field public static final TYPE1_NET:I = 0xc

.field public static final TYPE_CONTACTS_NET:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_NET:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_POSITION_NET:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PRIVACY_LOCATION_NET:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PRIVACY_NET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_USER_LOCATION_NET:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_USER_NET:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_USER_PRIVACY_CONTACTS_CALLLOG_LOCATION_NET:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_USER_PRIVACY_CONTACTS_LOCATION_NET:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_USER_PRIVACY_LOCATION_NET:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_USER_PRIVACY_NET:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private btnAgree:Landroid/widget/Button;

.field private btnCancel:Landroid/widget/Button;

.field private checked:Z

.field private mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->checked:Z

    .line 85
    iput-object p1, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    .line 87
    invoke-direct {p0, p2, p3}, Lcom/letv/leui/widget/LeLicenceDialog;->initDialog(Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method static synthetic access$002(Lcom/letv/leui/widget/LeLicenceDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeLicenceDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeLicenceDialog;->checked:Z

    return p1
.end method

.method private initDialog(Ljava/lang/String;I)V
    .locals 14
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 91
    new-instance v0, Lcom/letv/leui/widget/LeBottomSheet;

    iget-object v1, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    .line 93
    const-string v11, ""

    .line 95
    .local v11, "pemissionStr":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/letv/leui/widget/LeLicenceDialog$1;

    invoke-direct {v4, p0}, Lcom/letv/leui/widget/LeLicenceDialog$1;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v8, 0x1040702

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v8, 0x1040701

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406f8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v8, 0x10406fa

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object v11, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v9, 0x1040700

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    iget-object v12, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v13, 0x106016a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getColor(I)I

    move-result v12

    aput v12, v9, v10

    const/4 v10, 0x1

    const/high16 v12, -0x1000000

    aput v12, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;[IZ)V

    .line 143
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->setCanceledOnTouchOutside(Z)V

    .line 144
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->getBtn_confirm()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnAgree:Landroid/widget/Button;

    .line 146
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->getBtn_cancel()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnCancel:Landroid/widget/Button;

    .line 147
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v1, 0x10406fb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 102
    goto/16 :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v1, 0x10406fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 109
    goto/16 :goto_0

    .line 112
    :pswitch_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v1, 0x10406fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 113
    goto/16 :goto_0

    .line 116
    :pswitch_3
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v1, 0x10406fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 117
    goto/16 :goto_0

    .line 120
    :pswitch_4
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v1, 0x10406ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private setBtnOnClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "btn"    # Landroid/widget/Button;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 192
    if-eqz p2, :cond_0

    .line 193
    new-instance v0, Lcom/letv/leui/widget/LeLicenceDialog$2;

    invoke-direct {v0, p0, p2}, Lcom/letv/leui/widget/LeLicenceDialog$2;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->dismiss()V

    .line 168
    :cond_0
    return-object p0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->checked:Z

    return v0
.end method

.method public setLeLicenceDialogClickListener(Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;)Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 2
    .param p1, "listener"    # Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnAgree:Landroid/widget/Button;

    new-instance v1, Lcom/letv/leui/widget/LeLicenceDialog$3;

    invoke-direct {v1, p0, p1}, Lcom/letv/leui/widget/LeLicenceDialog$3;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/letv/leui/widget/LeLicenceDialog$4;

    invoke-direct {v1, p0, p1}, Lcom/letv/leui/widget/LeLicenceDialog$4;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    new-instance v0, Lcom/letv/leui/widget/LeLicenceDialog$5;

    invoke-direct {v0, p0, p1}, Lcom/letv/leui/widget/LeLicenceDialog$5;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeLicenceDialog;->setOnTouchOutCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/letv/leui/widget/LeLicenceDialog;

    .line 241
    return-object p0
.end method

.method public setOnAgreeListener(Landroid/view/View$OnClickListener;)Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 1
    .param p1, "onAgreeListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnAgree:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/widget/LeLicenceDialog;->setBtnOnClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 188
    return-object p0
.end method

.method public setOnCancelListener(Landroid/view/View$OnClickListener;)Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnCancel:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/widget/LeLicenceDialog;->setBtnOnClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 178
    return-object p0
.end method

.method public setOnTouchOutCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 212
    :cond_0
    return-object p0
.end method

.method public show()Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->show()V

    .line 157
    :cond_0
    return-object p0
.end method
