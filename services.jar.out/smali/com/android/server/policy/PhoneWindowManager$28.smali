.class Lcom/android/server/policy/PhoneWindowManager$28;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 7388
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x7e5

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 7391
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.television"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7394
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    if-nez v2, :cond_0

    .line 7395
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v3, Lcom/letv/leui/widget/LeOptimizationDialog;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/16 v5, 0x30

    invoke-direct {v3, v4, v8, v5}, Lcom/letv/leui/widget/LeOptimizationDialog;-><init>(Landroid/content/Context;II)V

    iput-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    .line 7396
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLeuiBootMsgDialog="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7397
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    const v3, 0x1040383

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeOptimizationDialog;->setTitle(I)V

    .line 7398
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeOptimizationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/Window;->setType(I)V

    .line 7400
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeOptimizationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x502

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 7404
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeOptimizationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->setDimAmount(F)V

    .line 7405
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeOptimizationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7406
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 7407
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeOptimizationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7408
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v2, v6}, Lcom/letv/leui/widget/LeOptimizationDialog;->setCancelable(Z)V

    .line 7409
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeOptimizationDialog;->show()V

    .line 7411
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$28;->val$msg:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeOptimizationDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 7471
    :goto_0
    return-void

    .line 7416
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_2

    .line 7418
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7420
    const v1, 0x10304bb

    .line 7428
    .local v1, "theme":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$28$1;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager$28$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$28;Landroid/content/Context;I)V

    iput-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 7451
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7452
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const v3, 0x1040383

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 7456
    :goto_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 7457
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 7458
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/Window;->setType(I)V

    .line 7460
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x102

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 7463
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->setDimAmount(F)V

    .line 7464
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7465
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 7466
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7467
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 7468
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 7470
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "theme":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$28;->val$msg:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 7421
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.television"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7423
    const v1, 0x103049a

    .restart local v1    # "theme":I
    goto/16 :goto_1

    .line 7425
    .end local v1    # "theme":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "theme":I
    goto/16 :goto_1

    .line 7454
    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const v3, 0x1040384

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    goto/16 :goto_2
.end method
