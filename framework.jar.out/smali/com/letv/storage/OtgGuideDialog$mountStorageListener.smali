.class Lcom/letv/storage/OtgGuideDialog$mountStorageListener;
.super Ljava/lang/Object;
.source "OtgGuideDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/storage/OtgGuideDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mountStorageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/storage/OtgGuideDialog;


# direct methods
.method private constructor <init>(Lcom/letv/storage/OtgGuideDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/storage/OtgGuideDialog$mountStorageListener;->this$0:Lcom/letv/storage/OtgGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/storage/OtgGuideDialog;Lcom/letv/storage/OtgGuideDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/storage/OtgGuideDialog;
    .param p2, "x1"    # Lcom/letv/storage/OtgGuideDialog$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/storage/OtgGuideDialog$mountStorageListener;-><init>(Lcom/letv/storage/OtgGuideDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog$mountStorageListener;->this$0:Lcom/letv/storage/OtgGuideDialog;

    iget-object v0, v0, Lcom/letv/storage/OtgGuideDialog;->mHandler:Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->sendEmptyMessage(I)Z

    return-void
.end method
