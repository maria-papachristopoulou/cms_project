<?php include "includes/admin_header.php"; ?>

<div id="wrapper">

    <!-- Navigation -->
    <?php include "includes/admin_navigation.php"; ?>

    <div id="page-wrapper">

        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        Welcome to admin
                        <small>Author</small>
                    </h1>
                    <div class="col-xs-6">

                        <?php insert_categories(); ?>

                        <!--Add Category Form-->
                        <form action="" method="post">
                            <label for="cat-title">Add Category</label>
                            <div class="form-group">
                                <input type="text" class="form-control" name="cat_title">
                            </div>
                            <div class="form-group">
                                <input type="submit" class="btn btn-primary" name="submit" value="Add Category">
                            </div>
                        </form>

                        <?php
                        //UPDATE AND INCLUDE QUERY

                        if(isset($_GET['edit'])){
                            $cat_id = $_GET['edit'];

                        include "includes/update_categories.php";
                        }

                        ?>

                    </div><!--Add Category form-->
                    <div class="col-xs-6">

                        <table class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>Id</th>
                                <th>Category Title</th>
                            </tr>
                            </thead>
                            <tbody>

                            <!--FIND ALL CATEGORIES QUERY-->
                            <?php findAllCategories(); ?>


                            <!--DELETE QUERY-->
                            <?php deleteCategories(); ?>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

    <?php  include "includes/admin_footer.php"; ?>