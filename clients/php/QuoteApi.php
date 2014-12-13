<?php
/**
 *  Copyright 2011 Wordnik, Inc.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

/**
 *
 * NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
 */
class QuoteApi {

	function __construct($apiClient) {
	  $this->apiClient = $apiClient;
	}

  /**
	 * getBucketed
	 * Get previous quotes bucketed by seconds.
   * symbol, string: Instrument name. (required)

   * startTime, DateTime: Start date. Expects ISO formatted date strings. (optional)

   * endTime, DateTime: End Date. Expects ISO formatted date strings. (optional)

   * count, float: Number of buckets to fetch. (optional)

   * binSize, string: Time interval to bucket by. Available options: ['1m', '5m', '1h', '1d']. (optional)

   * @return Array[Quote]
	 */

   public function getBucketed($symbol, $startTime=null, $endTime=null, $count=null, $binSize=null) {

  		//parse inputs
  		$resourcePath = "/quote/bucketed";
  		$resourcePath = str_replace("{format}", "json", $resourcePath);
  		$method = "GET";
      $queryParams = array();
      $headerParams = array();
      $headerParams['Accept'] = 'application/json';
      $headerParams['Content-Type'] = 'application/json';

      if($symbol != null) {
  		  $queryParams['symbol'] = $this->apiClient->toQueryValue($symbol);
  		}
  		if($binSize != null) {
  		  $queryParams['binSize'] = $this->apiClient->toQueryValue($binSize);
  		}
  		if($startTime != null) {
  		  $queryParams['startTime'] = $this->apiClient->toQueryValue($startTime);
  		}
  		if($endTime != null) {
  		  $queryParams['endTime'] = $this->apiClient->toQueryValue($endTime);
  		}
  		if($count != null) {
  		  $queryParams['count'] = $this->apiClient->toQueryValue($count);
  		}
  		//make the API Call
      if (! isset($body)) {
        $body = null;
      }
  		$response = $this->apiClient->callAPI($resourcePath, $method,
  		                                      $queryParams, $body,
  		                                      $headerParams);


      if(! $response){
          return null;
        }

  		$responseObject = $this->apiClient->deserialize($response,
  		                                                'Array[Quote]');
  		return $responseObject;

      }
  

}
