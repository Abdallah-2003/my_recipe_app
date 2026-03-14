import 'package:dartz/dartz.dart';
import 'package:my_recipe/features/auth/data/model/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepo {
  SupabaseClient client = Supabase.instance.client;

  Future<Either<String, void>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await client.auth.signInWithPassword(email: email, password: password);
      return const Right(null);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, void>> signUp({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      await client.auth.signUp(email: email, password: password);
      await saveUserData(username: username, email: email);
      return const Right(null);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, UserModel>> saveUserData({
    required String username,
    required String email,
  }) async {
    try {
      final id = Supabase.instance.client.auth.currentUser!.id;

      final response = await client
          .from('users')
          .insert({'id': id, 'name': username, 'email': email})
          .select()
          .single();

      return Right(UserModel.fromJson(response));
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, UserModel>> getUserData() async {
  try {
    final id = Supabase.instance.client.auth.currentUser!.id;

    final response = await client
        .from('users')
        .select()
        .eq('id', id)
        .single();

    return Right(UserModel.fromJson(response));
  } catch (e) {
    return Left(e.toString());
  }
}

  Future<Either<String, void>> logout() async {
    try {
      await client.auth.signOut();
      return const Right(null);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
