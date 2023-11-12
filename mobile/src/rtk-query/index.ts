import {createApi, fetchBaseQuery} from '@reduxjs/toolkit/query/react';
import {chatApi} from './chat';
import {discoverApi} from './discover';
import {imboxApi} from './imbox';
import {profileApi} from './profile';
import {authApi} from './auth';
import {countriesApi} from './countries';
import {gendersApi} from './genders';

export const datingMatchApi = createApi({
  reducerPath: 'datingMatchApi',
  baseQuery: fetchBaseQuery({baseUrl: 'http://10.0.2.2:3001/'}),
  endpoints: builder => ({
    ...chatApi(builder),
    ...discoverApi(builder),
    ...imboxApi(builder),
    ...profileApi(builder),
    ...authApi(builder),
    ...countriesApi(builder),
    ...gendersApi(builder),
  }),
});

export const {
  useFindChatByIdQuery,
  useFindPeopleQuery,
  useInteractWithPeopleMutation,
  useFindImboxByUserQuery,
  useFindProfileByUserIdQuery,
  useUpdateProfileMutation,
  useSignUpMutation,
  useSignInMutation,
  useFindAllCountriesQuery,
  useFindAllGendersQuery,
} = datingMatchApi;
