.class Lcom/letv/leui/widget/ModifiedGallery$1;
.super Ljava/lang/Object;
.source "ModifiedGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/ModifiedGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/ModifiedGallery;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/ModifiedGallery;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/ModifiedGallery$1;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$1;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    const/4 v1, 0x0

    # setter for: Lcom/letv/leui/widget/ModifiedGallery;->mSuppressSelectionChanged:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/ModifiedGallery;->access$002(Lcom/letv/leui/widget/ModifiedGallery;Z)Z

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$1;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ModifiedGallery;->selectionChanged()V

    return-void
.end method
