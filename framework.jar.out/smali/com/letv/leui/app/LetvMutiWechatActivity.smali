.class public Lcom/letv/leui/app/LetvMutiWechatActivity;
.super Landroid/app/Activity;
.source "LetvMutiWechatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final WECHAT_CLONE_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm.LetvClone"

.field private static final WECHAT_INTENT_CLONE_KEY:Ljava/lang/String; = "intent_Clone"

.field private static final WECHAT_INTENT_KEY:Ljava/lang/String; = "intent"

.field private static final WECHAT_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field private mBtnWeChat:Landroid/widget/ImageView;

.field private mBtnWeChatCancel:Landroid/widget/Button;

.field private mBtnWeChatClone:Landroid/widget/ImageView;

.field private mWeChatLayout1:Landroid/widget/LinearLayout;

.field private mWeChatLayout2:Landroid/widget/LinearLayout;

.field private mWechatIntent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mWechatIntent:Ljava/util/ArrayList;

    return-void
.end method

.method private doWeChat(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v2, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mWechatIntent:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mWechatIntent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mWechatIntent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mWechatIntent:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 68
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0, v1}, Lcom/letv/leui/app/LetvMutiWechatActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Lcom/letv/leui/app/LetvMutiWechatActivity;->finish()V

    .line 75
    .end local v0    # "i":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 66
    .restart local v0    # "i":I
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getApplicationIconDefaultIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "defaultDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/letv/leui/app/LetvMutiWechatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_0
    const-string v2, "LetvMutiWechatActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultDrawable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-object v0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getWetchatShareIntent(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 79
    const-string v3, "LetvMutiWechatActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWetchatShareIntent_key is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/letv/leui/app/LetvMutiWechatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "LetvMutiWechatActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWetchatShareIntent_intent is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v3, "LetvMutiWechatActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWetchatShareIntent_intentTag is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    instance-of v3, v3, Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 85
    .local v1, "intentTag":Landroid/content/Intent;
    const-string v3, "LetvMutiWechatActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWetchatShareIntent_intentTag is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-eqz v1, :cond_0

    .line 87
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/Intent;>;"
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v3, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mWechatIntent:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v1    # "intentTag":Landroid/content/Intent;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/Intent;>;"
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mWechatIntent:Ljava/util/ArrayList;

    return-object v3
.end method

.method private initBtn(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 107
    invoke-static {p1, p2}, Landroid/content/res/theme/LeIconCustomHelper;->getCurrentPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    .local v0, "wechatBitmap":Landroid/graphics/Bitmap;
    const-string v1, "LetvMutiWechatActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wechatBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcom/letv/leui/app/LetvMutiWechatActivity;->getApplicationIconDefaultIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 117
    const v0, 0x1020463

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LetvMutiWechatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mBtnWeChat:Landroid/widget/ImageView;

    .line 118
    const v0, 0x1020462

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LetvMutiWechatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mWeChatLayout1:Landroid/widget/LinearLayout;

    .line 119
    iget-object v0, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mWeChatLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x1020466

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LetvMutiWechatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mBtnWeChatClone:Landroid/widget/ImageView;

    .line 121
    const v0, 0x1020465

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LetvMutiWechatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mWeChatLayout2:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mWeChatLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v0, 0x1020469

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LetvMutiWechatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mBtnWeChatCancel:Landroid/widget/Button;

    .line 124
    iget-object v0, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mBtnWeChatCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const-string v0, "intent"

    invoke-direct {p0, v0}, Lcom/letv/leui/app/LetvMutiWechatActivity;->getWetchatShareIntent(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 126
    const-string v0, "intent_Clone"

    invoke-direct {p0, v0}, Lcom/letv/leui/app/LetvMutiWechatActivity;->getWetchatShareIntent(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 127
    iget-object v0, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mWechatIntent:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mWechatIntent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 128
    const-string v0, "com.tencent.mm"

    iget-object v1, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mBtnWeChat:Landroid/widget/ImageView;

    invoke-direct {p0, p0, v0, v1}, Lcom/letv/leui/app/LetvMutiWechatActivity;->initBtn(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 129
    const-string v0, "com.tencent.mm.LetvClone"

    iget-object v1, p0, Lcom/letv/leui/app/LetvMutiWechatActivity;->mBtnWeChatClone:Landroid/widget/ImageView;

    invoke-direct {p0, p0, v0, v1}, Lcom/letv/leui/app/LetvMutiWechatActivity;->initBtn(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 136
    const v0, 0x10a003a

    const v1, 0x10a003b

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/app/LetvMutiWechatActivity;->overridePendingTransition(II)V

    .line 139
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 51
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 53
    :sswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/app/LetvMutiWechatActivity;->finish()V

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v1, "intent"

    invoke-direct {p0, v1}, Lcom/letv/leui/app/LetvMutiWechatActivity;->doWeChat(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :sswitch_2
    const-string v1, "intent_Clone"

    invoke-direct {p0, v1}, Lcom/letv/leui/app/LetvMutiWechatActivity;->doWeChat(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x1020462 -> :sswitch_1
        0x1020465 -> :sswitch_2
        0x1020469 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/letv/leui/app/LetvMutiWechatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 41
    .local v0, "attributes":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 42
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 43
    invoke-virtual {p0}, Lcom/letv/leui/app/LetvMutiWechatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 44
    const v1, 0x10900b9

    invoke-virtual {p0, v1}, Lcom/letv/leui/app/LetvMutiWechatActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/letv/leui/app/LetvMutiWechatActivity;->initView()V

    .line 46
    return-void
.end method
