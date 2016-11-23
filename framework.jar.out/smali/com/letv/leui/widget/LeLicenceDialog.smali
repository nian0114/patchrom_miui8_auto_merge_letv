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

.field public static final TYPE1_CONTACT_NET_CALLLOG:I = 0x11

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
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->checked:Z

    .line 87
    iput-object p1, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    .line 89
    invoke-direct {p0, p2, p3}, Lcom/letv/leui/widget/LeLicenceDialog;->initDialogContent(Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->checked:Z

    .line 92
    iput-object p1, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    .line 93
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x1040709

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "comma":Ljava/lang/String;
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x104070a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "and":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v4, "pemissionSb":Ljava/lang/StringBuilder;
    array-length v3, p3

    .line 98
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 99
    aget-object v5, p3, v2

    .line 101
    .local v5, "permission":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_0
    add-int/lit8 v6, v3, -0x1

    if-eq v2, v6, :cond_1

    .line 104
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 110
    .end local v5    # "permission":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2, v6}, Lcom/letv/leui/widget/LeLicenceDialog;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
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

.method private initDialogContent(Ljava/lang/String;I)V
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 115
    const-string v0, ""

    .line 117
    .local v0, "pemissionStr":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 148
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeLicenceDialog;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void

    .line 123
    :pswitch_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v2, 0x10406fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v2, 0x10406fe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v1, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v2, 0x1040700

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    goto :goto_0

    .line 138
    :pswitch_3
    iget-object v1, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v2, 0x10406ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    goto :goto_0

    .line 142
    :pswitch_4
    iget-object v1, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v2, 0x1040701

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    goto :goto_0

    .line 145
    :pswitch_5
    iget-object v1, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v2, 0x1040708

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
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
        :pswitch_5
    .end packed-switch
.end method

.method private setBtnOnClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "btn"    # Landroid/widget/Button;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 221
    if-eqz p2, :cond_0

    .line 222
    new-instance v0, Lcom/letv/leui/widget/LeLicenceDialog$2;

    invoke-direct {v0, p0, p2}, Lcom/letv/leui/widget/LeLicenceDialog$2;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_0
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "pemissionStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 152
    new-instance v0, Lcom/letv/leui/widget/LeBottomSheet;

    iget-object v1, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    .line 153
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    const/4 v1, 0x5

    new-instance v4, Lcom/letv/leui/widget/LeLicenceDialog$1;

    invoke-direct {v4, p0}, Lcom/letv/leui/widget/LeLicenceDialog$1;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;)V

    new-array v5, v9, [Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v6, 0x1040704

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v10

    iget-object v3, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v6, 0x1040703

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v12

    iget-object v3, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v6, 0x10406fa

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406fc

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v10

    aput-object p2, v7, v12

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v8, 0x1040702

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [I

    iget-object v3, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x1060120

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v9, v10

    iget-object v3, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x106019d

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v9, v12

    move-object v3, v2

    invoke-virtual/range {v0 .. v10}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;[IZ)V

    .line 172
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, v10}, Lcom/letv/leui/widget/LeBottomSheet;->setCanceledOnTouchOutside(Z)V

    .line 173
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 174
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->getBtn_confirm()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnAgree:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->getBtn_cancel()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnCancel:Landroid/widget/Button;

    .line 176
    return-void
.end method


# virtual methods
.method public dismiss()Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->dismiss()V

    .line 197
    :cond_0
    return-object p0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->checked:Z

    return v0
.end method

.method public setLeLicenceDialogClickListener(Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;)Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 2
    .param p1, "listener"    # Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnAgree:Landroid/widget/Button;

    new-instance v1, Lcom/letv/leui/widget/LeLicenceDialog$3;

    invoke-direct {v1, p0, p1}, Lcom/letv/leui/widget/LeLicenceDialog$3;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/letv/leui/widget/LeLicenceDialog$4;

    invoke-direct {v1, p0, p1}, Lcom/letv/leui/widget/LeLicenceDialog$4;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    new-instance v0, Lcom/letv/leui/widget/LeLicenceDialog$5;

    invoke-direct {v0, p0, p1}, Lcom/letv/leui/widget/LeLicenceDialog$5;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeLicenceDialog;->setOnTouchOutCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/letv/leui/widget/LeLicenceDialog;

    .line 270
    return-object p0
.end method

.method public setOnAgreeListener(Landroid/view/View$OnClickListener;)Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 1
    .param p1, "onAgreeListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnAgree:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/widget/LeLicenceDialog;->setBtnOnClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 217
    return-object p0
.end method

.method public setOnCancelListener(Landroid/view/View$OnClickListener;)Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnCancel:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/widget/LeLicenceDialog;->setBtnOnClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 207
    return-object p0
.end method

.method public setOnTouchOutCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 241
    :cond_0
    return-object p0
.end method

.method public show()Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->show()V

    .line 186
    :cond_0
    return-object p0
.end method
